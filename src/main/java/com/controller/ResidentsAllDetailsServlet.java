package com.controller;

import java.io.IOException;
import java.util.List;

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
@WebServlet("/residentsDetails")
public class ResidentsAllDetailsServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ResidentsDAO ResidentsDAO=new ResidentsDAO();
		List<Residents> allResidents = ResidentsDAO.getAllResidents();
		
		req.setAttribute("allResident", allResidents);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("residentsDetails.jsp");
		requestDispatcher.forward(req, resp);

}
}
