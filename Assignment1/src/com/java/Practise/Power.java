package com.java.Practise;

import java.util.Scanner;

public class Power {

	public void exp(int x,int n){
		int result =1;
		for(int i=1;i<=n;i++)
		{
			result=result*x;
			System.out.println(x+" power "+i+" is "+result);
		}
		System.out.println("The number "+x+" multiplied "+n+" times is "+result);
		
	} 
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner (System.in);
		Power p = new Power();
		System.out.println("ENter a number");
		int x=s.nextInt();
		System.out.println("Enter power value");
		int n=s.nextInt();
		p.exp(x, n);
		
		

	}

}
