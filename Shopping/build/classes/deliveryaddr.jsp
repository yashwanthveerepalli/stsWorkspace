<%@include file="uheader.jsp"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%!String pname,sid,cost=null;%>
<%
String email=session.getAttribute("email").toString();

String pid=request.getParameter("pid");



Connection con = databasecon.getconnection();

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select * from product where pid='"+pid+"' ");
if(rs.next())
{
	pname=rs.getString(3);
	cost=rs.getString(5);
	sid=rs.getString(6);
}

%>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
	<center><h1><font color="#ff8000" size="6">Delivery Address Details </font></h1></center>
	<br><br><br>
	<form name="myform" method="pre" action="paymentaction.jsp"> 
	<input type="hidden" name="sid" value="<%=sid%>">
	<table align="center" cellspacing="5" cellpadding="5">
	   <tr>
	   <td><font size="4" color="black">Product ID</font></td>
		<td><input type="text" name="pid" value="<%=pid%>" readonly></td>
		<td><font size="4" color="black">Product name</font></td>
		<td><input type="text" name="pname" value="<%=pname%>" readonly></td>
</tr>
<tr>
	   <td><font size="4" color="black">Cost</font></td>
		<td><input type="text" name="cost" value="<%=cost%>" readonly></td>

	   <td><font size="4" color="black">User Id</font></td>
		<td><input type="text" name="email" value="<%=email%>" readonly></td>
		</tr>
	   <tr>
	   <td><font size="4" color="black">Address Line1<font color="red">*</font>:</td>
	   <td><input type="text" name="address1" required></td>
	   </tr>
	   <tr>
	   <td><font size="4" color="black">Address Line2:</td>
	   <td><input type="text" name="address2" required></td>
	   </tr>
	   <tr>
	   <td><font size="4" color="black">Address Line3:</td>
	   <td><input type="text" name="address3" required></td>
	   </tr>
		<tr>
		<td></td>
	   <td><input type="submit" value="Save&Continue" style="font-size:18px">
	   	</td>
		</tr>
	   </table></form>
	<br><br><br><br><br>
<%@include file="footer.jsp"%>