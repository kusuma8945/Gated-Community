package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.constants.Constants;
import com.model.Complaints;
import com.model.Residents;
import com.utils.DBConnection;

public class ResidentsDAO {

	public void getSaveSignUp(Residents resident) {
		
		String role="User";
		Connection connection=null;
		try {
			connection = DBConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			PreparedStatement statement = connection.prepareStatement(Constants.INSERT_RESIDENTS);
			statement.setString(1, resident.getUserName());
			statement.setString(2, resident.getPassword());
			statement.setString(3, resident.getEmail());
			statement.setString(4, resident.getFullName());
			statement.setString(5, role);
			statement.setString(6, resident.getPhone());
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void getSaveAdminSignUp(Residents resident) {
		
		String role="Admin";
		Connection connection=null;
		try {
			connection = DBConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			PreparedStatement statement = connection.prepareStatement(Constants.INSERT_RESIDENTS);
			statement.setString(1, resident.getUserName());
			statement.setString(2, resident.getPassword());
			statement.setString(3, resident.getEmail());
			statement.setString(4, resident.getFullName());
			statement.setString(5, role);
			statement.setString(6, resident.getPhone());
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public boolean getLoginUser(Residents resident) {
	    Connection connection = null;
	    try {
	        connection = DBConnection.getConnection();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    try {
	        PreparedStatement statement =
	                connection.prepareStatement(Constants.LOGIN);

	        statement.setString(1, resident.getUserName());
	        statement.setString(2, resident.getPassword());

	        ResultSet resultSet = statement.executeQuery();

	       if(resultSet.next()) {
	    	   int id = resultSet.getInt("id");
	    	   resident.setId(id);
	    	   String role = resultSet.getString("role");
	    	   resident.setRole(role);
	    	   return true;
	       }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return false;
	}
	public Residents getById(int ids) {
		 Connection connection = null;
		 Residents resident=null;
		    try {
		        connection = DBConnection.getConnection();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    try {
		        PreparedStatement statement =
		                connection.prepareStatement(Constants.SELECTBYID);

		        statement.setInt(1, ids);
		       
		        ResultSet rs = statement.executeQuery();

		       while(rs.next()) {
		    	   int id = rs.getInt("id");
		    	   String email = rs.getString("email");
		    	   String fullName = rs.getString("full_name");
		    	  
		    	   String phone = rs.getString("phone_number");
		    	   
		    	   resident=new Residents(id,email,fullName,phone);
		    	   
		    	  
		    	  
		       }
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return resident;
		}
	public List<Residents> getAllResidents() {
		List<Residents> res =new ArrayList<Residents>();
		
		Connection connection=null;
		try {
			connection = DBConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			PreparedStatement statement = connection.prepareStatement(Constants.SELECTALL_RESIDENTS);
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				
				int userId=rs.getInt("id");
				String  userName= rs.getString("user_name");
				String password = rs.getString("password");
				String email = rs.getString("email");
				String fullname = rs.getString("full_name");
				String role = rs.getString("role");
				String phone = rs.getString("phone_number");
				
				Residents residents=new Residents(userId,userName,password,email,fullname,role,phone);
				res.add(residents);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return res;
	}
	}
		
	

