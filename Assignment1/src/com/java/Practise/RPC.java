package com.java.Practise;

import java.util.Scanner;

/**
 * @author yashwanthveerepalli
 *
 */
public class RPC {


	public void replace(int arr[],int x,int y)
	{
		for(int i=0;i<arr.length;i++)
		{
			if(x==arr[i])
			{
				System.out.println(arr[i]+" Number replaced with "+y);
				arr[i]=y;

			}

		}
		for(int i=0;i<arr.length;i++)
		{
			System.out.print(arr[i]+" ");
		}

	}

	public static void main(String[] args) {
		try (// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in)) {
			RPC rpc = new RPC();

			System.out.println("ENter number of elememts in a array");
			int n= s.nextInt();
			int arr[]=new int[n];
			for(int i=0;i<n;i++) {
				int a=i+1;
				System.out.println("Enter the values "+a);
				arr[i]= s.nextInt();

			}
			for(int i=0;i<arr.length;i++)
			{
				System.out.print(arr[i]+" ");
			}
			System.out.println("\nEnter element to replace");
			int x= s.nextInt();
			System.out.println("Enter element to be inserted ");
			int y= s.nextInt();
			rpc.replace(arr, x, y);
		}


	}

}
