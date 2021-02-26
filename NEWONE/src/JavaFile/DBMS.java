package JavaFile;
import java.sql.*;

import java.util.Scanner;

public class DBMS

{

public static void main(String[] args)

{

int choice = 0;

Connection conn = null;

try

{
/*
String host = "cslab-db.cs.wichita.edu";

int port = 3306;

String database = "dbuser16_database";

String user = "dbuser16";

String password = "QYPOFdxuxKwQ";

String url = String.format("jdbc:mariadb://%s:%s/%s?user=%s&password=%s",host, port, database, user, password);

conn = DriverManager.getConnection(url)
*/


	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/IDS","root","Yashu@123");

while(choice!=13)

{

choice = Challenges();

// Step 3: Respond to the menu choice.



switch (choice)

{

case 1:// print All customers

AllCustomers(conn);

break;

case 2: //Inserting New Customer

InsertCustomer(conn);

break;

case 3:// Maximum amount of customer
Max(conn);

break;

case 4://Returns the coverage costs less Than the dynamic input N

CostLessN(conn);

break;

case 5: // Update the cost of the coverage from one price to another 

UpdateCost(conn);

break;

case 6:// Displays the Total amount of the particular customer

TotAmtCust(conn);

break;

case 7:// Taking the input of the policy number prints the Agent and customer id 's involved

AgentCustpolicy(conn);

break;

case 8: // Delete the specific Customer

DeleteCustomer(conn);

break;
case 9:

Min(conn);

break;
case 10://

Number(conn);

break;

case 11:

Sum(conn);

break;

case 12:

System.out.println("Program Quits");

break;

default: // Other than integers.

System.out.println("INVALID ENTRY");

break;

}

}

}

catch(SQLException e)

{

e.printStackTrace();

}

finally

{

// Step 4: Disconnect from the database server.

try

{

if (conn != null)

conn.close();

}

catch(SQLException e)

{

e.printStackTrace();

}

}

}

// This function controls the user interaction with the menu.

public static int Challenges( )

{

Scanner key = new Scanner(System.in);

int r;

System.out.println("Choose from one of the following options:");

System.out.println("1. Display All customers .");

System.out.println("2. Insert New Customer");

System.out.println("3. Maximum  Total Amount of the customer");

System.out.println("4. Filter Coverage Costs");

System.out.println("5. Update cost of the coverage");

System.out.println("6. Display the Total amount of customer ");

System.out.println("7. Display the Agent Id and customer id via policy id");

System.out.println("8. Delete Customer ");

System.out.println("9. MINIMUIM  Total Amount of the customer");


System.out.println("10. Number of Policies");

System.out.println("11.Sum of the Total amount");

System.out.println("12.Quit program");

System.out.print("Your choice ==> ");


r = key.nextInt();

// Leave a blank line before printing the output response.

System.out.println( );

return r;

}

public static void DeleteCustomer(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

System.out.println("Enter Customer id to bedeleted\n");

int id =s.nextInt();

String qry = "DELETE from Customer where CustId="+id+"";

ResultSet rs = stmt.executeQuery(qry);

rs.close();

System.out.println("Customer Deleted Succesfully");

AllCustomers(conn);

}
public static void InsertCustomer(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

System.out.println("Enter Id of new Customer\n");

int Custid=s.nextInt();

System.out.println("Enter the name of the customer\n");

String Custname=s.next();

System.out.println("Enter the phone number of the customer\n");

int num=s.nextInt();

System.out.println("Enter the City\n");

String Custcity=s.next();

String qry = "insert into Customer Values("+"'"+Custid+"'"+","+"'"+Custname+"'"+","+"'"+num+"'"+","+"'"+Custcity+"'"+")";

ResultSet rs = stmt.executeQuery(qry);

rs.close();

System.out.println("Customer Inserted Successfully");

AllCustomers(conn);

}
public static void TotAmtCust(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

System.out.println("Enter the  Customer Id of the Customer");

int Custid=s.nextInt();

String qry ="Select  cust_id , totamt From CIPolicy INNER JOIN Premium  "
                  
             +" where CIPolicy.policyid = Premium.pid "
             +" and CIPolicy.cust_id ="+Custid+"";
             

ResultSet rs = stmt.executeQuery(qry);

System.out.format("%-20s %-20s%n"," CustomerId","TotAmt");

while (rs.next())

{

int  id= rs.getInt("cust_id");

int tot=rs.getInt("totamt");

System.out.format("%-20s %-20s%n",id,tot);

}

System.out.println();

rs.close();

}


public static void Max(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

String qry ="Select pid ,max(totamt) as Maxy from Premium";



                  
            
ResultSet rs = stmt.executeQuery(qry);

System.out.format("%-20s %-20s%n", " PolicyId","TotAmt");

while (rs.next())

{

String  id= rs.getString("pid");

int tot=rs.getInt("maxy");

System.out.format("%-20s %-20s%n",id,tot);

}

System.out.println();

rs.close();

}
public static void Sum(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

String qry ="Select pid ,Sum(totamt) as Sumy from Premium";



                  
            
ResultSet rs = stmt.executeQuery(qry);

System.out.format("%-20s %-20s%n", " PolicyId","TotAmt");

while (rs.next())

{

String  id= rs.getString("pid");

int tot=rs.getInt("Sumy");

System.out.format("%-20s %-20s%n",id,tot);

}

System.out.println();

rs.close();

}

public static void Min(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

String qry ="Select polyid ,min(cost) as Miny from Coverages";



                  
            
ResultSet rs = stmt.executeQuery(qry);

System.out.format("%-20s %-20s%n", " PolicyId","Cost");

while (rs.next())

{

String  id= rs.getString("polyid");

int tot=rs.getInt("Miny");

System.out.format("%-20s %-20s%n",id,tot);

}

System.out.println();

rs.close();

}
public static void Number(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

String qry ="Select count(policyid) as Num from CIPolicy";



                  
            
ResultSet rs = stmt.executeQuery(qry);

System.out.format("%-20s %n", " Number of PolicyIds");

while (rs.next())

{

String  id= rs.getString("num");

System.out.format("%-20s %n",id);

}

System.out.println();

rs.close();

}

public static void AgentCustpolicy(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

System.out.println("Enter the policy ID");

String polid=s.next();

String qry ="Select * From CIPolicy "+" where policyid="+"'"+polid+"'"+ "";

ResultSet rs = stmt.executeQuery(qry);

System.out.format("%-20s %-20s %-20s%n", "PolicyID"," AgentID","CustomerID");

while (rs.next())

{

String pol = rs.getString("policyid");

String  AgentId= rs.getString("Agentid");

int CustId=rs.getInt("cust_id");

System.out.format("%-20s %-20s %-20s%n", pol,AgentId,CustId);

}

System.out.println();

rs.close();

}

public static void CostLessN(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

System.out.println("Enter the Maximum Amount to Filter Coverage Cost");

int n=s.nextInt();

String qry ="Select * From Coverages"

            +" where cost<"+n+"";

ResultSet rs = stmt.executeQuery(qry);

System.out.format("%-20s %-20s %-20s %-20s %-20s%n", "CovType", "CovID","Cost","deduct","PolyId");

while (rs.next())

{
String ct= rs.getString("covtype");

String  ci= rs.getString("coviD");

int Cost=rs.getInt("cost");

int dd=rs.getInt("deduct");

String pi=rs.getString("polyId");

System.out.format("%-20s %-20s %-20s %-20s %-20s%n",ct,ci,Cost,dd,pi);
 
}

System.out.println();

rs.close();

}

public static void UpdateCost(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

System.out.println("Enter the Coverage Id to Update");

String CovId=s.next();

System.out.println("Enter the New Cost Price to be Updated ");

int n= s.nextInt();

String qry ="Update Coverages Set cost="+n+""

            + " where covid="+"'"+CovId+"'"+"";

ResultSet rs = stmt.executeQuery(qry);

//System.out.format("%-20s %-20s %-20s %-20s %-20s%n", "CovType", "CovID","Cost","deduct","PolyId");

while (rs.next())

{
	
	
	

String ct= rs.getString("covtype");

String  ci= rs.getString("covid");

int Cost=rs.getInt("cost");

int dd=rs.getInt("deduct");

String pi=rs.getString("polyid");

System.out.format("%-20s %-20s %-20s %-20s %-20s%n",ct,ci,Cost,dd,pi);

}

System.out.println("UPDATED SUCCESFULLY");

rs.close();

}

public static void AllCustomers(Connection conn) throws SQLException

{

Statement stmt = conn.createStatement();

Scanner s = new Scanner(System.in);

String qry ="Select * From Customer";

ResultSet rs = stmt.executeQuery(qry);

System.out.format("%-20s %-20s %-20s  %-20s%n", "CustID", "Custname", "MobNumber","City");

while (rs.next())

{

int ci = rs.getInt("custid");

String cn = rs.getString("custname");

int mn = rs.getInt("mobnum");

String city =rs.getString("city");



System.out.format("%-20s %-20s %-20s %-20s %n",ci, cn, mn,city);

}

}

}
