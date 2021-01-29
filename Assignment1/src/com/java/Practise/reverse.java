package com.java.Practise;

import java.util.Scanner;

public class reverse {
	

	public void reverseInt(int n) {
		System.out.println("The Reverse number is:");
		int sum=0,i=0;
		for(i=0;n>0;i++) {
			int a= n%10;
			//sum = sum + a;
			System.out.print(a);
			n=n/10;
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		reverse sod = new reverse();
		System.out.println("ENter a number");
		sod.reverseInt(s.nextInt());
	}

}
