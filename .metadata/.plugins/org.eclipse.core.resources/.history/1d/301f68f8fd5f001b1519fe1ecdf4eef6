package com.java.Practise;

import java.util.ArrayList;
import java.util.Scanner;

public class Factors {
	
	public int Div(int p) {
		
	
		int count =0;
		
		for(int i=1;i<=p;i++)
		{
			if(p%i==0)
			{
				//num.add(i);
				count++;
			}
		}
		if(count ==2 )
		{
			//System.out.println("The number "+n+" IS A PRIME NUMBER");
			return p;
		}
		return 0;

	}
	public void prime(int n)
	{
		 ArrayList<Integer> prime = new ArrayList<Integer>();
		 int count=0;
		for(int i=1;i<n;i++)
		{
			if(Div(i)!=0)
			{
			prime.add(Div(i));
			count++;
		
			}
		}
		System.out.println("prime  numbers are "+prime);
		System.out.println("Number of prime  numbers are "+count);

		
		
	}

	public static void main(String[] args) {
		Scanner s= new Scanner(System.in);
		Factors f=new Factors();
		System.out.println("ENter the number  ");
		f.prime(s.nextInt());

	}

}
