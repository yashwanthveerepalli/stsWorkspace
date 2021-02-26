package com.java.Practise;

import java.util.ArrayList;
import java.util.Scanner;

public class unique {


	public void numbering(String s) {
		ArrayList<Character> arr = new ArrayList<Character>();
		int l=s.length();

		for(int i=0;i<l;i++)
		{		
			int count =0;


			for(int j=0;j<l;j++)
			{		
				char c1= s.charAt(i);
				char c2 = s.charAt(j);
				if(c1 == c2)
				{
					count++;
				}

			}				
			System.out.println(count);
			if(count==1)

			{
				arr.add(s.charAt(i));
			}
		}
		System.out.println(arr);
		System.out.println(arr.size());


	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
Scanner s= new Scanner(System.in);
		unique u= new unique();
		System.out.println("Enter a String");
		u.numbering(s.nextLine());
	}

}
