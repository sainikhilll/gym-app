package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    static Connection connection;
    public static Connection getDBConnection() {
        try {
            if(connection==null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymapp", "root", "11716042");
                System.out.println("connection established");
            }
        } catch (Exception e) {
            System.out.println("failed to connect : "+e.getMessage());
        }
        return connection;
    }
}
