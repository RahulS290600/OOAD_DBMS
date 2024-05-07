package com.ilp03.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ilp03.entity.Comment;
import com.ilp03.entity.Department;
import com.ilp03.entity.Employee;
import com.ilp03.entity.Post;
import com.ilp03.entity.Tag;


public class CommentDAO {

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
	
	public static ArrayList<Comment> getEmployeeBasedOnCommentId(Connection connection,String tagName)
	{
		ArrayList<Comment> commentList=new ArrayList<Comment>();
		try {
			PreparedStatement preparedStatement=connection.prepareStatement("SELECT \r\n"
					+ "    post.title AS post_title,\r\n"
					+ "    author.employee_name AS post_author,\r\n"
					+ "    comment.content AS comment_content,\r\n"
					+ "    commenter.employee_name AS comment_author\r\n"
					+ "FROM \r\n"
					+ "    post\r\n"
					+ "JOIN \r\n"
					+ "    tag ON post.tag_id = tag.tag_id\r\n"
					+ "JOIN \r\n"
					+ "    comment ON post.post_id = comment.post_id\r\n"
					+ "JOIN \r\n"
					+ "    employee AS author ON post.author_id = author.employee_id\r\n"
					+ "JOIN \r\n"
					+ "    employee AS commenter ON comment.employee_id = commenter.employee_id\r\n"
					+ "WHERE \r\n"
					+ "    tag.tag_name =?");
			preparedStatement.setString(1,tagName);
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next()) {
				
				int employeeId=0;
				String employeeName=resultSet.getString("comment_author");
				String email="";
				int deptId=0;
				String departmentName="";
				Department department = new Department(deptId,departmentName);
				String position="";
				int createdBy=0;
				int updatedBy = 0;
				String createdDate="";
				String updatedDate="";
				Employee employee = new Employee(employeeId,employeeName,email,null,position,null,0,"","");
				
				int postEmployeeId=0;
				String postEmployeeName=resultSet.getString("post_author");
				String postEmail="";
				int postDeptId=0;
				String postDepartmentName="";
				Department postDepartment = new Department(deptId,departmentName);
				String postPosition="";
				int postCreatedBy=0;
				int postUpdatedBy = 0;
				String postCreatedDate="";
				String postUpdatedDate="";
				Employee postEmployee = new Employee(postEmployeeId,postEmployeeName,postEmail,null,postPosition,null,0,"","");
				
				int tagId=0;
				String fetchedTagName="";
				Tag tag = new Tag(tagId,fetchedTagName);
				
				int postId = 0;
				String title=resultSet.getString("post_title");
				String content="";
				String datePublished = "";
				int postedUpdatedBy=0;
				String postedUpdatedDate="";
				Post post = new Post(postId,title,content,postEmployee,tag,datePublished,postedUpdatedBy,postedUpdatedDate);
								
				int commentId = 0;
				String commentContent=resultSet.getString("comment_content");
				String commentDatePublished="";
				int commentUpdatedBy=0;
				String commentUpdatedDate="";
				Comment comment = new Comment(commentId,commentContent,employee,post,commentDatePublished,commentUpdatedBy,commentUpdatedDate);
		
				commentList.add(comment);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  commentList;
		
	}

	public static void addComment(Connection connection, String content, int employeeId, int postId, Date datePosted) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement statement = connection.prepareStatement("insert into comment(content,employee_id,post_id,date_posted)values(?,?,?,?)");
			statement.setString(1, content);
			statement.setInt(2, employeeId);
			statement.setInt(3, postId);
			statement.setDate(4, datePosted);
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
