/**
 * 
 */
package com.java.Practise;

import java.util.Scanner;

/**
 * @author yashwanthveerepalli
 *
 */
public class SOD {

	
	public void sumOfDigits(int n) {
		int sum=0,i=0;
		for(i=0;n>0;i++) {
			int a= n%10;
			sum = sum + a;
			System.out.print(a);
			n=n/10;
		}
		System.out.println("The sum of the digits :"+sum);
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		SOD sod = new SOD();
		System.out.println("ENter a number");
		sod.sumOfDigits(s.nextInt());
		

	}

}
