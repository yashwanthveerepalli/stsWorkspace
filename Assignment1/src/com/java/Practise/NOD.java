package com.java.Practise;

import java.util.Scanner;

public class NOD {
	//int n = 4536;
	int i=0;
	int count =0;
	public void count(int n) {

		for( i=0; n>0;i++)
		{
			n= n/10;

		}

		System.out.println("Total digits are "+i);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		NOD nod = new NOD();
		System.out.println("Enter a number");
		nod.count(s.nextInt());
	}

}
