package service;

import config.DatabaseConnection;
import model.ClassEnrollment;
import servlet.ClassEnrollmentServlet;

import javax.swing.plaf.nimbus.State;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ClassEnrollmentService {

    Connection connection = DatabaseConnection.getDBConnection();

    public List<ClassEnrollment> getEnrolledClasses(String member_Id){
       try {
           List<ClassEnrollment> classEnrollments = new ArrayList<>();
           Statement statement = connection.createStatement();
           ResultSet rs = statement.executeQuery("SELECT * FROM  Class c INNER JOIN ClassEnrollment ce ON c.class_Id = ce.class_Id WHERE ce.member_Id = "+member_Id);
           while(rs.next()){
               ClassEnrollment classEnrollment = new ClassEnrollment();
               classEnrollment.setClass_name(rs.getString("class_name"));
               classEnrollment.setClass_Id(Integer.parseInt(rs.getString("class_Id")));
               classEnrollment.setInstructor(rs.getString("instructor"));
               classEnrollment.setDateofclass(rs.getString("dateofclass"));
               classEnrollment.setStatus(rs.getString("status"));
               classEnrollment.setMember_Id(Integer.parseInt(member_Id));
               classEnrollments.add(classEnrollment);
           }
           return classEnrollments;
       }catch(SQLException e){
           System.out.println("Failed at ClassEnrollmentService"+e.getMessage());
       }
        return null;
    }
}
