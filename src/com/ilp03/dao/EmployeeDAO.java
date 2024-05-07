package com.ilp03.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class EmployeeDAO {

		public static Connection getConnection() {
			String connectionString = "jdbc:mysql://localhost:3306/team4bank_db?useSSL=false" ;
			String userName = "root";
			String password = "cristiano@2000";
			
			Connection connection = null;
			
			try {
				connection = DriverManager.getConnection(connectionString,userName,password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return connection;
		}
		
		public static void closeConnection(Connection connection) {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
}
