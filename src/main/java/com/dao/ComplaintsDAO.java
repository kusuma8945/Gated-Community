package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.constants.Constants;
import com.model.Complaints;
import com.utils.DBConnection;

public class ComplaintsDAO {

	public void saveComplaint(Complaints complaints) {
		String status="Pending";
		Connection connection=null;
		try {
			connection = DBConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			PreparedStatement statement = connection.prepareStatement(Constants.INSERT_COMPLAINT);
			statement.setInt(1,complaints.getUserId());
			statement.setString(2,complaints.getCategory());
			statement.setString(3,complaints.getSubject());
			statement.setString(4,complaints.getDescription());
			statement.setString(5,status);
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public List<Complaints> getComplaints(int ids){
		
		List<Complaints> com=new ArrayList<Complaints>();
		
		Connection connection=null;
		try {
			connection = DBConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			PreparedStatement statement = connection.prepareStatement(Constants.SELECT_COMPLAINTS);
			statement.setInt(1, ids);
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				int complaintId= rs.getInt("complaint_Id");
				int userId=rs.getInt("user_id");
				String  category= rs.getString("category");
				String subject = rs.getString("subject");
				String description = rs.getString("description");
				String status = rs.getString("status");
				
				Complaints complaint=new Complaints(complaintId,userId,category,subject,description,status);
				com.add(complaint);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return com;
	}

	public Complaints getEditSelect(int complaintIds) {
		Complaints complaint=null;
		
		Connection connection=null;
		try {
			connection = DBConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			PreparedStatement statement = connection.prepareStatement(Constants.EDIT_COMPLAINTS);
			statement.setInt(1, complaintIds);
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				int complaintId=rs.getInt("complaint_id");
				int userId=rs.getInt("user_id");
				String  category= rs.getString("category");
				String subject = rs.getString("subject");
				String description = rs.getString("description");
				
				
				complaint=new Complaints(complaintId,userId,category,subject,description);
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return complaint;
		
		
		
		
	}

	public void getEditSaveComplaint(Complaints complaints) {
		Connection connection=null;
		try {
			connection = DBConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			PreparedStatement statement = connection.prepareStatement(Constants.EDITSAVE_COMPLAINTS);
			statement.setInt(1, complaints.getComplaintId());
			statement.setInt(2, complaints.getUserId());
			statement.setString(3, complaints.getCategory());
			statement.setString(4, complaints.getSubject());
			statement.setString(5, complaints.getDescription());
			statement.setInt(6, complaints.getComplaintId());
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void getDeleteById(int ids) {
		Connection connection=null;
		try {
			connection = DBConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			PreparedStatement statement = connection.prepareStatement(Constants.DELETE_COMPLAINTS);
			statement.setInt(1, ids);
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
		public List<Complaints> getAllComplaints(){
			
			List<Complaints> comps =new ArrayList<Complaints>();
			
			Connection connection=null;
			try {
				connection = DBConnection.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				PreparedStatement statement = connection.prepareStatement(Constants.SELECTALL_COMPLAINTS);
				ResultSet rs = statement.executeQuery();
				while(rs.next()) {
					int complaintId= rs.getInt("complaint_Id");
					int userId=rs.getInt("user_id");
					String  category= rs.getString("category");
					String subject = rs.getString("subject");
					String description = rs.getString("description");
					String status = rs.getString("status");
					
					Complaints complaint=new Complaints(complaintId,userId,category,subject,description,status);
					comps.add(complaint);
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			return comps;
		}
		
		public Complaints getUpdateStatusSelect(int complaintIds) {
			Complaints complaint=null;
			
			Connection connection=null;
			try {
				connection = DBConnection.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				PreparedStatement statement = connection.prepareStatement(Constants.EDIT_COMPLAINTS);
				statement.setInt(1, complaintIds);
				ResultSet rs = statement.executeQuery();
				while(rs.next()) {
					int complaintId=rs.getInt("complaint_id");
					int userId=rs.getInt("user_id");
					String category = rs.getString("category");
					String subject = rs.getString("subject");
					String description = rs.getString("description");
					String status = rs.getString("status");
					
					complaint=new Complaints(complaintId,userId,category,subject,description,status);
					
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			return complaint;
			
		
	}
		public void getUpdateStatusSave(Complaints complaints) {
			Connection connection=null;
			try {
				connection = DBConnection.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				PreparedStatement statement = connection.prepareStatement(Constants.UPDATESTATUSSAVE_COMPLAINTS);
				statement.setString(1, complaints.getStatus());
				statement.setInt(2, complaints.getComplaintId());
				statement.setInt(3, complaints.getUserId());
				statement.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		

		public List<Complaints> getReslovedComplaints(int ids) {
List<Complaints> com=new ArrayList<Complaints>();
			
			Connection connection=null;
			try {
				connection = DBConnection.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				PreparedStatement statement = connection.prepareStatement(Constants.SELECT_COMPLAINTS);
				statement.setInt(1, ids);
				ResultSet rs = statement.executeQuery();
				while(rs.next()) {
					int complaintId= rs.getInt("complaint_Id");
					int userId=rs.getInt("user_id");
					String  category= rs.getString("category");
					String subject = rs.getString("subject");
					String description = rs.getString("description");
					String status = rs.getString("status");
					
					Complaints complaint=new Complaints(complaintId,userId,category,subject,description,status);
					com.add(complaint);
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			return com;
		}
}


