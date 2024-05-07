package com.ilp03.utility;

import java.util.Scanner;

import com.ilp03.service.KnowledgeSharingService;
import com.ilp03.service.KnowledgeSharingServiceImpl;

public class KnowledgeSharingUtility {

	public static void main(String[] args) {
		boolean continueFunction =true;
		Scanner scanner = new Scanner(System.in);
		KnowledgeSharingService knowledgeSharingService = new KnowledgeSharingServiceImpl();
		System.out.println("****---EMPLOYEE KNOWLEDGE SHARING PLATFORM---****");
		while(continueFunction) {
		System.out.println("Choose an option :");
		System.out.println("1. Add Post 	2.Fetch a Post2	 	3. Add Comment	 4.Exit");
		int choice = scanner.nextInt();
		switch(choice) {
		case 1:
			knowledgeSharingService.addPost();
			break;
		case 2:
			knowledgeSharingService.getEmployeeBasedOnCommentId();
			break;
		case 3:
			knowledgeSharingService.addComment();
			break;
		case 4:
			continueFunction=false;
			System.out.println("Thank You!!!");
			break;
		default : System.out.println("Enter a valid choice ");
		}
	}

	}
}
