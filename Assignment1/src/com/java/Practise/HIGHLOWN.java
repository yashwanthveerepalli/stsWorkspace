package com.java.Practise;


public class HIGHLOWN {

	int array[]= {1,15,-1,23,45,70,99,-13,-5};
	
	public  void HighLow() {
		int high =0,low =0;
		for(int i=0;i<array.length;i++)
		{
			if(array[i]>high)
			{
				high = array[i];
			}
			if(array[i]<low)
			{
				low = array[i];
			}
		}
		
		int diff = high -low;
		System.out.println("Highest Number is "+high);
		System.out.println("Lowest Number is "+low);
		System.out.println("Difference between  highest and lowest is "+diff);


	}


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HIGHLOWN n= new HIGHLOWN();
		n.HighLow();
	
	}


}