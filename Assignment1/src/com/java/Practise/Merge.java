package com.java.Practise;

import java.util.Scanner;

//Java code to alternatively merge two strings
public class Merge {

	// Function for alternatively merging two strings
	public static String merge(String s1, String s2)
	{
		// To store the final string
		StringBuilder result = new StringBuilder();

		// For every index in the strings
		for (int i = 0; i < s1.length() || i < s2.length(); i++) {

			// First choose the ith character of the
			// first string if it exists
			if (i < s1.length())
				result.append(s1.charAt(i));

			// Then choose the ith character of the
			// second string if it exists
			if (i < s2.length())
				result.append(s2.charAt(i));
		}

		return result.toString();
	}

	// Driver code
	public static void main(String[] args)
	{
		Scanner s = new Scanner(System.in);
		System.out.println("ENTER A  SENTENCE 1");
	String	str1 =s.nextLine();
		System.out.println("ENTER A  SENTENCE 2");
		String str2 =s.nextLine();
		System.out.println(merge(str1, str2));
	}
}

