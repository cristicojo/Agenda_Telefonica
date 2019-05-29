package CRUD;

import  common.SingletonDB_Connection;
import static common.SingletonDB_Connection.getdb_connection;
import common.User_Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Search_Contact {

    private PreparedStatement ps;
    private ResultSet rs;
    private SingletonDB_Connection db_connection = getdb_connection();
    private Connection con = db_connection.get_Connection();
    private List<User_Bean> user_beanList = new ArrayList();


    public List<User_Bean> searchContact(String cautare_contact) {


        try {

            String querry = ("select * from contacte where nume like '" + cautare_contact + "%' or tel_mobil like '%" + cautare_contact + "%'");

            ps = con.prepareStatement(querry);
            rs = ps.executeQuery();


            while (rs.next()) {

                User_Bean u = new User_Bean();

                u.setId(rs.getInt("id"));
                u.setNume(rs.getString("nume"));
                u.setPrenume(rs.getString("prenume"));
                u.setData_nastere(rs.getString("data_nastere"));
                u.setCompanie(rs.getString("companie"));
                u.setTel_mobil(rs.getString("tel_mobil"));
                u.setTel_fix(rs.getString("tel_fix"));
                u.setE_mail(rs.getString("e_mail"));
                u.setAdresa(rs.getString("adresa"));


                user_beanList.add(u);
            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return user_beanList;

    }

}
