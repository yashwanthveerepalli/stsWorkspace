package com.java.Practise;

import java.util.Scanner;

public class WhiteSpaces {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str = ""; 
		Scanner s = new Scanner(System.in);
		System.out.println("ENTER A  SENTENCE");
		str =s.nextLine();
		
		// Call the replaceAll() method 
		str = str.replaceAll("\\s", ""); 
	
		System.out.println(str); 

	}

}
