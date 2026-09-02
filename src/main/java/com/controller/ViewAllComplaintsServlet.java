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
@WebServlet("/viewServlet")
public class ViewAllComplaintsServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int ids = Integer.parseInt(req.getParameter("id"));
		ComplaintsDAO complaintsDAO=new ComplaintsDAO();
		List<Complaints> list = complaintsDAO.getComplaints(ids);
		
		req.setAttribute("complaintList", list);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("viewAllComplaints.jsp");
		requestDispatcher.forward(req, resp);
	}

}
