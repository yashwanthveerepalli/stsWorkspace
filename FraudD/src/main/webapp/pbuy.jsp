<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%!Connection con =null;String photo,uname=null;%>



<form method="post" action="deliveryaddr.jsp">

<table align="center" width="60%">
<tr>
	<td><h1>Enter Product Id</h1></td>
</tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr>
	<td><h1><input type="search" name="pid" placeholder="Product Id" style='width:90%' required></h1></td>

	<td><h1><input type="submit" value="Next"></h1></td>
</tr>
</table>
	
</form>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>