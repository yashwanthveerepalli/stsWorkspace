package com.java.Practise;

import java.util.ArrayList;
import java.util.Scanner;

public class ComArr {
	
	public void  Intersec(int arr1[],int arr2[])
	{
		ArrayList<Integer> arr = new ArrayList<Integer>();
		
		for(int i : arr1)
		{
			for(int j :arr2)
			{
				if(i==j)
				{
					System.out.println("Found "+i+ " "+j);
				arr.add(i);
				
				}
				else {
				System.out.println("Not Matched "+i+" With "+j);
				}
				j++;
				
			}
			i++;
		}
		System.out.println("Intersected numbers are:"+arr);
	}
			

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner s = new Scanner(System.in);
		ComArr ca = new ComArr();
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
		
		ca.Intersec(arr1, arr2);

	}

}
