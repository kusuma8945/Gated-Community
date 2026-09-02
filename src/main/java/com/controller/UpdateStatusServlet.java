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
@WebServlet("/updateStatusComplaint")
public class UpdateStatusServlet extends HttpServlet{
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			int complaintIds = Integer.parseInt(req.getParameter("complaintId"));
			
			ComplaintsDAO complaintsDAO=new ComplaintsDAO();
			Complaints editSelect = complaintsDAO.getUpdateStatusSelect(complaintIds);
			
			req.setAttribute("complaintList", editSelect);
			
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("updateStatus.jsp");
			requestDispatcher.forward(req, resp);
		}
		
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			int complaintId = Integer.parseInt(req.getParameter("complaintId"));
			int userId = Integer.parseInt(req.getParameter("userId"));
			String status = req.getParameter("status");
			
			Complaints complaints=new Complaints(complaintId,userId,status); 
			ComplaintsDAO complaintsDAO=new ComplaintsDAO();
			complaintsDAO.getUpdateStatusSave(complaints);
			
			resp.sendRedirect("viewAllComplaints");

}
}
