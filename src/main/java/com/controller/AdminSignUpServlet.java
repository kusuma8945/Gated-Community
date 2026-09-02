package com.controller;

import java.io.IOException;

import com.dao.ResidentsDAO;
import com.model.Residents;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adminsignup")
public class AdminSignUpServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		String email=req.getParameter("email");
		String fullName = req.getParameter("fullName");
		String role=req.getParameter("role");
		String phone = req.getParameter("phone");
		String adminSecret="Admin@123";
		
		String adminSecretKey= req.getParameter("adminSecretKey");
		if(adminSecret.equals(adminSecretKey)) {
			Residents resident=new Residents(userName,password,email,fullName,role,phone);
			ResidentsDAO residentsDAO=new ResidentsDAO();
			residentsDAO.getSaveAdminSignUp(resident);
			resp.sendRedirect("index.jsp");
		}else {
			req.setAttribute("error", "Invaild Secret Name");
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminSignUp.jsp");
			requestDispatcher.forward(req, resp);
		}
		
		
	
	}

}
