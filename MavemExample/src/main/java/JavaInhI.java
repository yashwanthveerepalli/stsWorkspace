package com.java.Inheritence;
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;
class Animal{
	void walk(){
		System.out.println("I am walking");
	}
}
class Bird extends Animal{
	void fly(){
	
		System.out.println("I am flying");
    }
        void sing(){
		System.out.println("I am singing");
        }
        	void walk(){
		System.out.println("I am walking 123");
	}
	
}

public class JavaInhI {

		   public static void main(String args[]){
			  Animal a = new Animal();
			  Bird bird = new Bird();
			  a.walk();
			  bird.walk();
			  bird.fly();
		      bird.sing();
			
		   		}
}