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
import jakarta.servlet.http.HttpSession;
@WebServlet("/signin")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		Residents resident=new Residents(userName,password);
		ResidentsDAO residentsDAO=new ResidentsDAO();
		boolean valid = residentsDAO.getLoginUser(resident);
		if(valid) {
			HttpSession session = req.getSession();
			session.setAttribute("username", userName);
			session.setAttribute("Id", resident.getId());
			
			if("User".equalsIgnoreCase(resident.getRole())) {
				
				resp.sendRedirect("userDashboard.jsp");
			}else {
				
				resp.sendRedirect("adminDashboard.jsp");
			}
				
		}else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(req, resp);
		}
	}

}
