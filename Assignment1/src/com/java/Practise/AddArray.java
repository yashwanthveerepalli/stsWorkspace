package com.java.Practise;

import java.util.ArrayList;
import java.util.Scanner;

public class AddArray {

	ArrayList<Integer> arr = new ArrayList<Integer>();
	int l=0;
	public void Add(int arr1[],int arr2[])
	{
		//l= arr1.length+arr2.length;
		for(int i=0;i<arr1.length;i++)
		{
			arr.add(arr1[i]);
			System.out.println("added ["+arr1[i]+"]");
		}
		for(int i=0;i<arr2.length;i++)
		{
			arr.add(arr2[i]);
			System.out.println("added ["+arr2[i]+"]");

		}
		System.out.println("The New Array is "+arr);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		Scanner s = new Scanner(System.in);
		AddArray aa = new AddArray();
		System.out.println("ENter a length of Array1");
		int n = s.nextInt();
		int arr1[] = new int[n]; 
		for(int i=0;i<n;i++) {
			int a =i+1;
			System.out.println("Enter value ["+a+"]");
			arr1[i]= s.nextInt();
		}
		System.out.println("ENter a length of Array2");
		int m = s.nextInt();
		int arr2[] = new int[m];
		for(int i=0;i<m;i++) {
			int b =i+1;
			System.out.println("Enter value ["+b+"]");
			arr2[i]= s.nextInt();
		}
		
		aa.Add(arr1, arr2);

	}

}
