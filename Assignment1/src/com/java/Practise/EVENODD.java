package com.java.Practise;

import java.util.ArrayList;
import java.util.Scanner;

public class EVENODD {
	
	public void EO(int n)
	
	{
		 ArrayList<Integer> even = new ArrayList<Integer>();
		 ArrayList<Integer> odd = new ArrayList<Integer>();


		for(int i=1;i<n;i++)
		{
			if(i%2==0)
			{
				even.add(i);
				//System.out.println(i);
			}
			else
				//int i;
			{
				odd.add(i);
				//System.out.println(i);
			}
		}System.out.println("EVEN NUMBERS ARE"+even);
		System.out.println("odd NUMBERS ARE"+odd);
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s= new Scanner(System.in);
EVENODD e=new EVENODD();
System.out.println("Enter a number here");
e.EO(s.nextInt());
	}

}
