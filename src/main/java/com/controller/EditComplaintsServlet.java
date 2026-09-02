package com.controller;

import java.io.IOException;

import com.dao.ComplaintsDAO;
import com.model.Complaints;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/editComplaint")
public class EditComplaintsServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int complaintIds = Integer.parseInt(req.getParameter("complaintId"));
		
		ComplaintsDAO complaintsDAO=new ComplaintsDAO();
		Complaints editSelect = complaintsDAO.getEditSelect(complaintIds);
		
		req.setAttribute("complaintList", editSelect);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("editComplaint.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int complaintId = Integer.parseInt(req.getParameter("complaintId"));
		int userId = Integer.parseInt(req.getParameter("userId"));
		String category = req.getParameter("category");
		String subject = req.getParameter("subject");
		String description = req.getParameter("description");
		
		Complaints complaints=new Complaints(complaintId,userId,category,subject,description); 
		ComplaintsDAO complaintsDAO=new ComplaintsDAO();
		complaintsDAO.getEditSaveComplaint(complaints);
		
		resp.sendRedirect("viewServlet?id="+userId);
		
	}

}
