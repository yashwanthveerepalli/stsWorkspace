package com.java.Practise;

import java.util.Scanner;

public class leap {
	
	public void calc(int n){
		if(n%4==0 && n%100!=0)
		{
		
			System.out.println("Yes This year "+n+" is a Leap Year");
		}
		else if(n%400==0)
		{
		
			System.out.println("Yes This year "+n+" is a Leap Year");
		}
		else 
		{
			System.out.println("No This year "+n+" is not a Leap Year");

		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Scanner s = new Scanner(System.in);
leap l= new leap();
System.out.println("Enter a Year");
l.calc(s.nextInt());
	}

}
