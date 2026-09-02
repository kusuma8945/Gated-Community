package com.controller;

import java.io.IOException;

import com.dao.ComplaintsDAO;
import com.dao.ResidentsDAO;
import com.model.Complaints;
import com.model.Residents;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/submitComplaints")
public class SubmitComplaintsServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int ids = Integer.parseInt(req.getParameter("id"));
	
	ResidentsDAO residentsDTO=new ResidentsDAO();
	Residents residents = residentsDTO.getById(ids);
	
	req.setAttribute("res", residents);
	
	RequestDispatcher requestDispatcher = req.getRequestDispatcher("submitComplaints.jsp");
	 requestDispatcher.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userId = Integer.parseInt(req.getParameter("userId"));
		String category = req.getParameter("category");
		String subject = req.getParameter("subject");
		String description = req.getParameter("description");
		
		Complaints complaints=new Complaints(userId,category,subject,description);
		 ComplaintsDAO complaintsDAO=new ComplaintsDAO();
		 complaintsDAO.saveComplaint(complaints);
		 resp.sendRedirect("submitComplaints?id="+userId);
				
	}

}
