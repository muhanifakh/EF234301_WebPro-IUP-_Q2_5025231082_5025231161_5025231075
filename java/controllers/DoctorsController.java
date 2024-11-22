package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/doctors")
public class DoctorsController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch doctors' data and set as request attributes
        request.setAttribute("doctors", "List of Doctors");
        request.getRequestDispatcher("/doctors.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String doctorId = request.getParameter("doctorId");
        String review = request.getParameter("review");

        // Logic to store review for the doctor
        response.sendRedirect("/doctors");
    }
}
