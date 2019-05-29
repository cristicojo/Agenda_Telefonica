package CRUD;

import common.SingletonDB_Connection;
import static common.SingletonDB_Connection.getdb_connection;
import common.User_Bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class Read_Contact {

    private ResultSet rs;
    private PreparedStatement ps;
    private SingletonDB_Connection db_connection = getdb_connection();
    private Connection con = db_connection.get_Connection();


    public List<User_Bean> readData() {


        List<User_Bean> userBeanList = new ArrayList();


        try {

            String querry = ("select * from contacte");

            ps = con.prepareStatement(querry);

            rs = ps.executeQuery();


            while (rs.next()) {

                User_Bean user_beanObj = new User_Bean();


                String dateFormat = rs.getString("data_nastere");

                String a = dateFormat.substring(8);

                String b = dateFormat.substring(5, 7);

                String c = dateFormat.substring(0, 4);

                dateFormat = a + "." + b + "." + c;


                user_beanObj.setId(rs.getInt("id"));
                user_beanObj.setNume(rs.getString("nume"));
                user_beanObj.setPrenume(rs.getString("prenume"));
                user_beanObj.setData_nastere(dateFormat);
                user_beanObj.setCompanie(rs.getString("companie"));
                user_beanObj.setTel_mobil(rs.getString("tel_mobil"));
                user_beanObj.setTel_fix(rs.getString("tel_fix"));
                user_beanObj.setE_mail(rs.getString("e_mail"));
                user_beanObj.setAdresa(rs.getString("adresa"));

                userBeanList.add(user_beanObj);

            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return userBeanList;
    }
}
