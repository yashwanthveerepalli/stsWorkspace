package com.java.Practise;

public class Average {
	int array[] = {1,2,3,4,5,6};
	double sum=0.0;
	public void averaging() {
		for(int i=0;i<array.length;i++)
		{
			sum+=array[i];
		}
		double avg = sum/array.length;
		System.out.println(sum);
		System.out.println(array.length);
		System.out.println("Average of the given numbers is "+avg);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Average av=new Average();
		av.averaging();

	}

}
