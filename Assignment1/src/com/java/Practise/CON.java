package com.java.Practise;
//@author Yashwanth Veerepalli
public class CON {
	
	int array[] = {34,67,81,97,45,54,90,83};
	int c2=0,c3=0,c5=0;
	
	public void Divisibility()
	{
		for(int i=0;i<array.length;i++)
		{
			if((array[i]%2)==0)
			{
				c2++;
			}
			if((array[i]%3)==0)
			{
				c3++;
			}
			if((array[i]%5)==0)
			{
				c5++;
			}
		}
		System.out.println("Count of the numbers divisible by 2: "+c2);
		System.out.println("Count of the numbers divisible by 3: "+c3);
		System.out.println("Count of the numbers divisible by 5: "+c5);

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		CON con =new CON();
		con.Divisibility();
	}

}
