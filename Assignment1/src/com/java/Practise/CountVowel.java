package com.java.Practise;

import java.util.Scanner;

public class CountVowel {

	public void count(String s) {
		char[] vowels = {'a','e','i','o','u'};
		int count =0;
			for(char c : vowels)
			{
				for(int i=0;i<s.length();i++)
				{
				if(c==s.charAt(i))
				{
					count++;
					System.out.println("Vowel Found "+s.charAt(i));
				}
				else 
				{
					//System.out.println(s.charAt(i)+" Not a Vowel");
					
				}
				
			}
			
		}System.out.println("The Number of vowels in String "+s+" is "+count);
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		CountVowel cv = new CountVowel();
		System.out.println("Enter a String");
		cv.count(s.nextLine());

	}

}
