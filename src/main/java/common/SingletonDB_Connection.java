package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SingletonDB_Connection {

    private  Connection connection;
    private  Statement statement;

    private static SingletonDB_Connection db_connection;


    private SingletonDB_Connection(){}


    static{
        db_connection=new SingletonDB_Connection();
    }



    public Connection get_Connection() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");


            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Agenda_Telefonica", "root", "1984adrian");
            statement = connection.createStatement();
        } catch (ClassNotFoundException e) {
            System.out.println("Unable to connect");
            e.printStackTrace();

        } catch (Exception se) {
            se.printStackTrace();
            System.out.println("sql error!");
        }

        return connection;
    }

    public static SingletonDB_Connection getdb_connection(){

        return db_connection;
    }
}
