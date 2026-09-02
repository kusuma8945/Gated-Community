package com.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.constants.Constants;

public class DBConnection {
	
	public static Connection connection;
	
	public static Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			if(connection==null) {
				connection=DriverManager.getConnection(Constants.URL, Constants.USERNAME, Constants.PASSWORD);
				return connection;
			}
			return connection;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
