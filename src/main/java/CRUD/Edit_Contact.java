package CRUD;

import  common.SingletonDB_Connection;
import static common.SingletonDB_Connection.getdb_connection;
import common.User_Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Edit_Contact {

    private ResultSet rs;
    private PreparedStatement ps;
    private SingletonDB_Connection db_connection = getdb_connection();
    private Connection con = db_connection.get_Connection();
    private User_Bean u = new User_Bean();


    public User_Bean findValuesById(int id) {


        try {

            String querry = ("select * from contacte where id=?");

            ps = con.prepareStatement(querry);

            ps.setInt(1, id);

            rs = ps.executeQuery();


            while (rs.next()) {


                u.setId(rs.getInt("id"));
                u.setNume(rs.getString("nume"));
                u.setPrenume(rs.getString("prenume"));
                u.setData_nastere(rs.getString("data_nastere"));
                u.setCompanie(rs.getString("companie"));
                u.setTel_mobil(rs.getString("tel_mobil"));
                u.setTel_fix(rs.getString("tel_fix"));
                u.setE_mail(rs.getString("e_mail"));
                u.setAdresa(rs.getString("adresa"));


            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return u;

    }


    public void editContact(User_Bean u) {


        try {

            String querry = ("update contacte set nume=?,prenume=?,data_nastere=?,companie=?,tel_mobil=?,tel_fix=?,e_mail=?,adresa=? where id=?");

            ps = con.prepareStatement(querry);

            ps.setString(1, u.getNume());
            ps.setString(2, u.getPrenume());
            ps.setString(3, u.getData_nastere());
            ps.setString(4, u.getCompanie());
            ps.setString(5, u.getTel_mobil());
            ps.setString(6, u.getTel_fix());
            ps.setString(7, u.getE_mail());
            ps.setString(8, u.getAdresa());
            ps.setInt(9, u.getId());


            ps.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();

        }

    }

}
