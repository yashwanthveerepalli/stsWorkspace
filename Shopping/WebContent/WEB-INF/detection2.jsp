<%@ include file="aheader.jsp"%>

<!--
-->
<h2>Fraud Detection</h2>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.net.InetAddress"%>
<table cellspacing="10"cellpadding="10">
<tr><td><h3>Email<th><h3>Caluculation<th><h3>Status
<%

    try{
	    double t = Double.parseDouble(request.getParameter("t"));
      	int tot =0;
		int can =0;
		double tv=0.0;
		Connection con=databasecon.getconnection();
 
		
		
		
		 Statement st = con.createStatement();
        Statement st2 = con.createStatement();
        Statement st3 = con.createStatement();
        Statement st4 = con.createStatement();
        ResultSet rs = st.executeQuery("select email, count(*) from orderdetails  group by email");
       ResultSet rs2 = null;
		ResultSet rs4 = null;
		while(rs.next())
        {
		
		rs2=st2.executeQuery("select count(*) from orderdetails where status_='cancel' and email='"+rs.getString(1)+"' group by email");
       	if(rs2.next()){			
			tot=rs.getInt(2);
			can=rs2.getInt(1);

		}
		
			else{
							
			tot=rs.getInt(2);
			can=0;

				}	
				
		
		tv=can/tot;
		
		if(tv>t){
		%>
		<tr><td><%=rs.getString(1)%><td><%=tv%><td>Fraud
		
		<%
		rs4=st4.executeQuery("select * from users where status1='fraud' and email='"+rs.getString(1)+"' ");
		if(rs4.next()){
		
		st3.executeUpdate("update users set status2='fraud' where email='"+rs.getString(1)+"'");	
		
		}
		else{
		st3.executeUpdate("update users set status1='fraud' where email='"+rs.getString(1)+"'");	
		}
		}else{
		%>
		<tr><td><%=rs.getString(1)%><td><%=tv%><td>Genuine
		<%
		}			
			
		}
	st3.executeUpdate("update orderdetails set status='done' ");	
	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
		%>
		</table>
<%@ include file="footer.jsp"%>