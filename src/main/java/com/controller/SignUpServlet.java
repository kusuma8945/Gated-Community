package com.controller;

import java.io.IOException;

import com.dao.ResidentsDAO;
import com.model.Residents;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		String email=req.getParameter("email");
		String fullName = req.getParameter("fullName");
		String role=req.getParameter("role");
		String phone = req.getParameter("phone");
		
		Residents resident=new Residents(userName,password,email,fullName,role,phone);
		ResidentsDAO residentsDAO=new ResidentsDAO();
		residentsDAO.getSaveSignUp(resident);
		
		resp.sendRedirect("index.jsp");
	}
	
	

}
