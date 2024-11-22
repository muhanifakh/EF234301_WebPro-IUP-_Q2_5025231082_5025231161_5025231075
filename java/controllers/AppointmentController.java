package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/appointment")
public class AppointmentController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/appointment.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle appointment creation logic here
        String patientName = request.getParameter("patient_name");
        String department = request.getParameter("department");
        String phoneNumber = request.getParameter("phone_number");

        // Save the appointment data or perform necessary logic
        request.setAttribute("successMessage", "Appointment created successfully!");
        request.getRequestDispatcher("/appointment.jsp").forward(request, response);
    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String appointmentId = request.getParameter("id");
        // Delete logic for appointment
        response.sendRedirect("/appointment");
    }
}
