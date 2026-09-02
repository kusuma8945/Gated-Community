package com.controller;

import java.io.IOException;
import java.util.List;

import com.dao.ComplaintsDAO;
import com.model.Complaints;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/viewAllComplaints")
public class AdminViewAllServlets extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ComplaintsDAO complaintsDAO=new ComplaintsDAO();
		List<Complaints> allComplaints = complaintsDAO.getAllComplaints();
		
		req.setAttribute("allcomplaint", allComplaints);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminViewAllComplaints.jsp");
		requestDispatcher.forward(req, resp);
	}

}
