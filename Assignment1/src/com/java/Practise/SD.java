package com.java.Practise;

import java.util.Scanner;

public class SD {
	
	public void sumOfDigits(int n) {
		int sum=0,i=0;
		for(i=0;n>0;i++) {
			int a= n%10;
			sum = sum + a;
			System.out.print(a);
			n=n/10;
		}System.out.println("");
		if(sum>10)
		{
			sumOfDigits(sum);
		}
		else
		{
		System.out.println("The sum of the digits :"+sum);
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		SD sd = new SD();
		System.out.println("ENter a number");
		sd.sumOfDigits(s.nextInt());

	}

}
