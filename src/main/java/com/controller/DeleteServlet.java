package com.controller;

import java.io.IOException;

import com.dao.ComplaintsDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteComplaint")
public class DeleteServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int ids = Integer.parseInt(req.getParameter("complaintId"));
		int userid = Integer.parseInt(req.getParameter("userId"));
		ComplaintsDAO complaintsDAO=new ComplaintsDAO();
		complaintsDAO.getDeleteById(ids);
		
		resp.sendRedirect("viewServlet?id="+userid);
	}
	
	
	
	

}
