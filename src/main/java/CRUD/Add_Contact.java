package CRUD;

import common.SingletonDB_Connection;
import static common.SingletonDB_Connection.getdb_connection;
import java.sql.*;


public class Add_Contact {

    private Statement statement;
    private SingletonDB_Connection db_connection = getdb_connection();
    private Connection con = db_connection.get_Connection();


    public void insertData(String nume, String prenume, String datanastere, String companie, String mobil, String fix, String email, String adresa) {


        try {

            statement = con.createStatement();


            statement.executeUpdate("INSERT INTO contacte(nume,prenume,data_nastere,companie,tel_mobil,tel_fix,e_mail,adresa) " +
                    "Values('" + nume + "','" + prenume + "', '" + datanastere + "', '" + companie + "', '" + mobil + "', '"
                    + fix + "', '" + email + "', '" + adresa + "')");


        } catch (SQLException e) {

            e.printStackTrace();

        }

    }
}
