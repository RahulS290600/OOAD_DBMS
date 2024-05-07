package com.ilp03.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PostDAO {
	
	public static Connection getConnection() {
		String connectionString = "jdbc:mysql://localhost:3306/emp_platform_db?useSSL=false" ;
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

	public static void addPost(Connection connection, String title, String content, int authorId, int tagId,
			Date datePublished) {
		try {
			PreparedStatement statement = connection.prepareStatement("insert into post(title,content,author_id,tag_id,date_published)values(?,?,?,?,?)");
			statement.setString(1, title);
			statement.setString(2, content);
			statement.setInt(3, authorId);
			statement.setInt(4, tagId);
			statement.setDate(5, datePublished);
			int rowInserted=statement.executeUpdate();
			if(rowInserted>0) {
				System.out.println("Post succesfully posted !!!");
			}else {
				System.out.println("Failed to upload post !!!");
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}



}
