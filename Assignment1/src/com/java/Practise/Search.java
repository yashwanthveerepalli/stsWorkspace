package com.java.Practise;


/**
 * @author yashwanthveerepalli
 *
 */
public class Search {
	int array[]= {34,67,81,97,45,54,90,83};
	int count=0;

	public void Seraching(int num) {
		for(int i=0;i<array.length;i++)
		{
			if(num==array[i])
			{
				System.out.println("Given "+num+ " number is present at "+i+" position the list");
				count++;
			}

		}if(count==0)
		{
			System.out.println("Given "+num+ "number is not present in the list");
		}

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Search s1 = new Search();
		Search s2 = new Search();

		s1.Seraching(54);
		
		s2.Seraching(40);


	}

}
