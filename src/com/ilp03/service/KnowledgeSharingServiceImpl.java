package com.ilp03.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

import com.ilp03.dao.CommentDAO;
import com.ilp03.dao.PostDAO;
import com.ilp03.entity.Comment;

public class KnowledgeSharingServiceImpl implements KnowledgeSharingService {

	@Override
	public void getEmployeeBasedOnCommentId() {
			Connection connection = CommentDAO.getConnection();
			System.out.println("Enter your area of interest to fetch posts : ");
			Scanner scanner = new Scanner(System.in);
			String tagName = scanner.nextLine();
			ArrayList<Comment> commentList = CommentDAO.getEmployeeBasedOnCommentId(connection,tagName);
			System.out.println("Post Title,\t \t\t\tPost Author \t\tComment \t\t Comment Author");
			for(Comment comment : commentList) {
				System.out.println(comment.getpostId().getTitle()+"\t"+comment.getpostId().getauthorId().getemployeeName()+"\t"+comment.getContent()+"\t\t\t"+comment.getemployeeId().getemployeeName());
			}
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	@Override
	public void addPost() {
		// TODO Auto-generated method stub
		
		try {
			Connection connection = PostDAO.getConnection();
			Scanner scanner = new Scanner(System.in);
			
			System.out.println("Enter title of post");
			String title=scanner.nextLine();
			
			System.out.println("Enter content of post");
			String content=scanner.nextLine();
			
			System.out.println("Enter your employee id");
			int authorId=scanner.nextInt();
			
			System.out.println("Enter tag id");
			int tagId=scanner.nextInt();
			
			scanner.nextLine();
			System.out.println("Enter today's date");
			String dateString=scanner.nextLine();
			Date datePublished= Date.valueOf(dateString);
			
			PostDAO.addPost(connection,title,content,authorId,tagId,datePublished);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void addComment() {
		// TODO Auto-generated method stub
		try {
			Connection connection = CommentDAO.getConnection();
			Scanner scanner = new Scanner(System.in);
			
			System.out.println("Enter your comment");
			String content=scanner.nextLine();
			
			System.out.println("Enter your employee id");
			int employeeId=scanner.nextInt();
			
			System.out.println("Enter id of post where you want to add comment");
			int postId=scanner.nextInt();
			
			scanner.nextLine();
			System.out.println("Enter today's date");
			String dateString2=scanner.nextLine();
			Date datePosted= Date.valueOf(dateString2);
			
			CommentDAO.addComment(connection,content,employeeId,postId,datePosted);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	}


