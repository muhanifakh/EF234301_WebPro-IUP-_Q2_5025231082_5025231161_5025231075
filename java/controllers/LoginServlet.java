package controllers;

import utils.DatabaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection connection = DatabaseConnection.initializeDatabase()) {
            String query = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, email);
            statement.setString(2, password); // Hash password in real apps
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("user", resultSet.getString("name"));
                response.sendRedirect("index.jsp");
            } else {
                response.getWriter().write("Invalid credentials");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}
