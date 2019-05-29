package CRUD;

import  common.SingletonDB_Connection;
import static common.SingletonDB_Connection.getdb_connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Delete_Contact {

    private PreparedStatement ps;
    private SingletonDB_Connection db_connection = getdb_connection();
    private Connection con = db_connection.get_Connection();


    public void deleteContact(int id) {


        try {

            String querry = ("delete from contacte where id=?");

            ps = con.prepareStatement(querry);

            ps.setInt(1, id);

            ps.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();

        }

    }

}
