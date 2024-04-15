package service;

import config.DatabaseConnection;
import model.Cls;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ClassService {
    Connection connection = DatabaseConnection.getDBConnection();

    public List<Cls> getClasses() throws SQLException {
       try{ List<Cls> classes = new ArrayList<>();
        Statement statment = connection.createStatement();
        ResultSet rs = statment.executeQuery("select * from Class");
        if(rs.next()){
            Cls cls = new Cls();
            cls.setClass_Id(Integer.parseInt(rs.getString("class_Id")));
            cls.setClass_name(rs.getString("class_name"));
            cls.setAbout(rs.getString("about"));
            cls.setDuration(rs.getString("duration"));
            cls.setInstructor(rs.getString("instructor"));
            cls.setImage(rs.getString("image"));
            cls.setPrice(Integer.parseInt(rs.getString("price")));
            classes.add(cls);

        }
        return classes;
       }
        catch (SQLException e) {
        System.out.println("Failed to getClasses(): ClassService"+e.getMessage());
    }
        return null;
    }
}
