package com.java.Practise;
import java.lang.*;
import java.util.ArrayList;
import java.util.Scanner;
import java.io.*;

public class StringRev {

	
	public void rev(String s) {
		int count=0,notc=0;
		ArrayList<String>  arr = new ArrayList<String>();
		String str ="";
		for(int i= s.length()-1;i>=0;i--)
		{
			//char c= s.charAt(i);
		str = str + s.charAt(i);
		System.out.print(""+s.charAt(i)+"");
		}
		System.out.println("\n"+str);
		for(int i=0;i<s.length();i++)
		{
			if(str.charAt(i)==s.charAt(i))
			{
				count++;
			}
			else {
				notc++;
				
			}
		}
		if(notc==0)
		{
		System.out.println("\nPalindrome");
		}else {
		System.out.println("Not a Palindrome");
		}
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
Scanner s = new Scanner(System.in);
StringRev sr = new StringRev();
System.out.println("Enter a String");
sr.rev(s.nextLine());

	}

}
