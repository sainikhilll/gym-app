package servlet;

import config.DatabaseConnection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

public class scheduleServlet extends HttpServlet {
    Connection connection = DatabaseConnection.getDBConnection();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/schedule.jsp");
        requestDispatcher.forward(req, resp);
    }
}
