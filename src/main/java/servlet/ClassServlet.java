package servlet;

import config.DatabaseConnection;
import model.Member;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/classes")
public class ClassServlet extends HttpServlet {

    Connection connection = DatabaseConnection.getDBConnection();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Return the login form HTML
        RequestDispatcher dispatcher = request.getRequestDispatcher("/classes.jsp");
        dispatcher.forward(request, response);
    }


}
