package com.java.Practise;

public class Reversing {
	int array[] = {12,64,23,35,2,67,9,11};


	public void formatting()
	{
		
		int n= array.length;
		System.out.print("{");

		for(int i=n-1;i>0;i--)
		{
			System.out.print(array[i]+",");
		}
		System.out.print(array[0]);
		System.out.print("}");

		

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Reversing r = new Reversing();
			r.formatting();

	}

}
