package servlet;

import config.DatabaseConnection;
import model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/updateMember")
public class UpdateMemberServlet extends HttpServlet {
    Connection connection = DatabaseConnection.getDBConnection();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Member member = new Member();
        member.setMember_Id(request.getParameter("member_Id"));
        member.setFirst_name(request.getParameter("first_name"));
        member.setLast_name(request.getParameter("last_name"));
        member.setEmail(request.getParameter("email"));
        member.setPhone(request.getParameter("phone"));
        member.setHeight(request.getParameter("height"));
        member.setWeight(request.getParameter("weight"));
        member.setAge(request.getParameter("age"));
        member.setPassword(request.getParameter("password"));


        System.out.println(member.toString());
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate("update member set first_name='"+member.getFirst_name()+"', last_name='"+member.getLast_name()+"', email='"+member.getEmail()+"', phone='"+member.getPhone()+"', height='"+member.getHeight()+"', weight='"+member.getHeight()+"', age='"+member.getAge()+"' where member_Id='"+member.getMember_Id()+"'");
            response.sendRedirect("message.jsp?msg= Member Updated Successfully!");
        } catch (SQLException e) {
            response.sendRedirect("message.jsp?msg= Failed to update Member");
            System.out.println("Failed to update Member: UpdateMemberServlet:"+e.getMessage());
        }
    }
}
