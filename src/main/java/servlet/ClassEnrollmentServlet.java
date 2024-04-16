package servlet;

import com.mysql.cj.Session;
import com.sun.net.httpserver.HttpPrincipal;
import config.DatabaseConnection;
import model.Cls;
import model.Member;
import service.ClassService;
import service.MemberService;

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
import java.text.SimpleDateFormat;

@WebServlet("/classEnroll")
public class ClassEnrollmentServlet extends HttpServlet {

    Connection connection = DatabaseConnection.getDBConnection();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ClassService classService = new ClassService();
        MemberService memberService = new MemberService();
        HttpSession session = request.getSession();
        String member_Id = (String) session.getAttribute("member_Id");
        int class_Id = Integer.parseInt(request.getParameter("classId"));
        String dateOfClass = request.getParameter("selectedDate").replace('/','-');
        Cls cls = classService.getClassByClassId(class_Id);
        Member member = memberService.getMemberById(member_Id);

        try{
            System.out.println("INSERT INTO `gymapp`.`classenrollment` (`class_Id`, `member_Id`, `dateofclass`, `status`) VALUES ("+class_Id+","+ member_Id+","+  dateOfClass +","+"'Confirmed')");

            Statement statement = connection.createStatement();
            statement.executeUpdate("INSERT INTO `gymapp`.`classenrollment` (`class_Id`, `member_Id`, `dateofclass`, `status`) VALUES ("+class_Id+","+ member_Id+",'"+ dateOfClass +"',"+" 'Confirmed')");
            response.sendRedirect("message.jsp?msg= Enrolled in class!");
        }

    catch(SQLException e){
        response.sendRedirect("message.jsp?msg= Enrollment Failed!");
        System.out.println("Failed at ClassEnrollmentServlet"+e.getMessage());
    }


}}
