<%@include file="uheader.jsp"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.net.InetAddress"%>

<%
String email=session.getAttribute("email").toString();

String sid=request.getParameter("sid");
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String cost=request.getParameter("cost");
String ad1=request.getParameter("address1");
String ad2=request.getParameter("address2");
String ad3=request.getParameter("address3");

		
InetAddress Addr=InetAddress.getLocalHost();
String IpAddr=Addr.getHostAddress();
System.out.println(IpAddr);

		
      	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
		
		int rs = st.executeUpdate("insert into orderdetails values('"+pid+"','"+pname+"','"+cost+"','"+email+"','"+ad1+"','"+ad2+"','"+ad3+"','"+sid+"','Proceed','"+IpAddr+"','new')");
        if(rs!=0)
        {
			System.out.println("Inserted");
          }
		  else
		{
				System.out.println("Insert Failed");
		}


%>



<%@include file="footer.jsp"%>