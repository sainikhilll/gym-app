package servlet;

import config.DatabaseConnection;
import model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {
    Connection connection = DatabaseConnection.getDBConnection();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Member member = new Member();
        member.setFirst_name(request.getParameter("first_name"));
        member.setLast_name(request.getParameter("last_name"));
        member.setEmail(request.getParameter("email"));
        member.setPhone(request.getParameter("phone"));
        member.setHeight(request.getParameter("height"));
        member.setWeight(request.getParameter("weight"));
        member.setAge(request.getParameter("age"));
        member.setPassword(request.getParameter("password"));
//        String first_name = request.getParameter("first_name");
//        String last_name = request.getParameter("last_name");
//        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");
//        String height = request.getParameter("height");
//        String weight = request.getParameter("weight");
//        String age = request.getParameter("age");
//        String password = request.getParameter("password");

        try {
            Statement statment = connection.createStatement();
            ResultSet rs = statment.executeQuery("select * from Member where email='"+member.getEmail()+"' or phone='"+member.getPhone()+"'");
            if(rs.next()) {
                response.sendRedirect("message.jsp?msg=Account already registered with given email/phone");;
            }else {
                Statement st1 = connection.createStatement();
                st1.executeUpdate("insert into Member(first_name, last_name, email, phone, height, weight, age, password) values('"+member.getFirst_name()+"', '"+member.getLast_name()+"', '"+member.getEmail()+"', '"+member.getPhone()+"', '"+member.getHeight()+"', '"+member.getWeight()+"', '"+member.getAge()+"', '"+member.getPassword()+"')");
                response.sendRedirect("message.jsp?msg= Registration Successful!");
            }
        } catch (SQLException e) {
            response.sendRedirect("message.jsp?msg= Registration failed");
            System.out.println("registartion failed : Member Servlet :" + e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            Statement statment = connection.createStatement();
            ResultSet rs = statment.executeQuery("select * from Member where email='"+email+"' and password='"+password+"'");
            if(rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("member_Id", rs.getString("member_Id"));
                session.setAttribute("role", "Member");
                response.sendRedirect("memberHome.jsp");
            }else{
                response.sendRedirect("message.jsp?msg=Invalid Credentials! Please try again with valid credentials");
            }
        } catch (SQLException e) {
            System.out.println("failed: Member Servlet:"+e.getMessage());
        }
    }
}
