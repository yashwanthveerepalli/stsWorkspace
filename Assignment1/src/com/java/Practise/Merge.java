package com.java.Practise;

import java.util.Scanner;

public class Merge {

	public void merge(String str1, String str2)
	{
		String result = "";

		for (int i = 0; i < str1.length() + str2.length(); i++) {
			if (i < str1.length())
				result=result+(str1.charAt(i));
			if (i < str2.length())
				result=result+(str2.charAt(i));
		}
		System.out.println(result);
	}
	public static void main(String[] args)
	{
		Scanner s = new Scanner(System.in);
		Merge m =new Merge();
		System.out.println("Input Str1");
	String	str1 =s.nextLine();
		System.out.println("Input Str2");
		String str2 =s.nextLine();
		m.merge(str1, str2);
	}
}

