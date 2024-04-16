package servlet;

import config.DatabaseConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/attend")
public class attendanceServlet extends HttpServlet {

    Connection connection = DatabaseConnection.getDBConnection();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            int enrollment_Id = Integer.parseInt(req.getParameter("enrollmentId"));
            Statement statement = connection.createStatement();
            statement.executeUpdate("UPDATE `gymapp`.`classenrollment` SET `status` = 'Attended' WHERE (`enrollment_Id` ="+enrollment_Id+")");
            resp.sendRedirect("successMessage.jsp?msg= Attendance registered");
        }catch (SQLException e){
            System.out.println("Failed at attendanceServlet:"+e.getMessage());
            resp.sendRedirect("message.jsp?msg= Failed to update attendance!");
        }
    }
}
