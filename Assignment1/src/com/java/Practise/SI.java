package com.java.Practise;

import java.util.Scanner;

public class SI {
	double wtr=1;
	public void calc(int p,double r,double t)
	{
		double intrest = p*r*t/100;
		System.out.println("Intrest dor Principal "+p+ " at Rate "+r+ " For Time "+t+" is "+intrest);
		double total = p + intrest;
		System.out.println("After Time "+t+" Years you have to pay "+total+" amount including intrest");
		
	}
	public void Compound(int p,double r,double t) 
	{
		
		double rm = r/100+1;
		for(double d=1;d<=t;d++) {
			wtr = wtr*rm;
		}
		double amount = p*wtr;
		double ci= amount-p;
		System.out.println("Compound Intrest dor Principal "+p+ " at Rate "+r+ " For Time "+t+" is "+ci);
		System.out.println("The Coumpount intrest after "+t+" years for principal "+p+" @rate "+r+" is "+amount );
	}
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		SI si = new SI();
		System.out.println("Enter principal Amount");
		int p=s.nextInt();
		System.out.println("Enter Intrest rate");
		double r=s.nextDouble();
		System.out.println("Enter time period in years");
		double t=s.nextDouble();
		si.calc(p, r, t);
		si.Compound(p, r, t);
		
	

	}

}
