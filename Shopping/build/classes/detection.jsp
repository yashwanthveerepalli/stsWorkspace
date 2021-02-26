<%@ include file="aheader.jsp"%>

<!--
-->
<h2>Fraud Detection</h2>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.net.InetAddress"%>
<table cellspacing="10"cellpadding="10">
<tr><td><h3>Email<th><h3>Total Count<th><h3>Cancell Count<th><h3>
<%

    try{
      
      	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        Statement st2 = con.createStatement();
        ResultSet rs = st.executeQuery("select email, count(*) from orderdetails where status!='done' group by email");
       ResultSet rs2 = null;
		while(rs.next())
        {
		rs2=st2.executeQuery("select count(*) from orderdetails where status_='cancel' and email='"+rs.getString(1)+"' AND status!='done' group by email");
       	if(rs2.next()){			
		%>
		<tr><td><%=rs.getString(1)%><td><%=rs.getInt(2)%><td><%=rs2.getInt(1)%>
		<%}			
			else{
			%>
		<tr><td><%=rs.getString(1)%><td><%=rs.getInt(2)%><td>0
		<%		}	
		
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
		%>
</table><form method="post" action="detection2.jsp">
	
<input type="text" name="t" required placeholder="Threshold Value" value="0.5" readonly>
<input type="submit" >
</form>
<%@ include file="footer.jsp"%>