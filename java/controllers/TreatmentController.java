package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

//Treatment Page
@WebServlet("/treatment")
public class TreatmentController extends HttpServlet {
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 request.setAttribute("content", "treatment.jsp");
     request.getRequestDispatcher("layout.jsp").forward(request, response);
 }
}

