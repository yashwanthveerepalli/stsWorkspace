package com.java.Example;
import java.awt.AWTException;
import java.io.*;
import java.util.*;
public class HelloWorld implements Runnable {

	public static void main(String[] args) {
System.out.print("Hello World");
	
StudentExt s = new StudentExt();
//String ecm  ;
System.out.println(s.getStudentName("Yashwanth"));
try{Thread.sleep(500);} catch (Exception e) {}
System.out.println(s.getStudentExt("Yashwanth"));
}
}