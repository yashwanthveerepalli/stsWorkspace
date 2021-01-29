package com.java.Practise;

public class EVEN {
	
	int array[]={34, 67, 81, 97, 45, 54, 90, 83};
	public void pos() {
		for(int i =0;i<array.length;i++)
		{
			if((i%2)!=0)
			{
				System.out.print(array[i]+" ");
			}
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		EVEN e=new EVEN();
		e.pos();

	}

}
