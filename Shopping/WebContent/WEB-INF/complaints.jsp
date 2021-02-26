<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%!Connection con=null;String type=null;%>

<%@ include file="aheader.jsp"%>


<h1><font size="" color="#66ccff">View Complaints</h1></font>

<center>


<br><br>
<table  cellpadding="5" cellspacing="5" border="1">
<tr>
<td><h2 style="color:blue;font-family: verdana"><u>User Email</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>Seller ID</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>Status</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>Action</u></h2></td>
</tr>
<%
try
{
//type=request.getParameter("type");
//System.out.println("type:"+type);
//if(type!=null)
//{
//String sid=session.getAttribute("sid").toString();

	con = databasecon.getconnection();
	String qry="select * from complaint where status='pending' ";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qry);

	while(rs.next())
	{
%>
<tr>
	
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(1)%></h3></td>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(2)%></h3></td>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(3)%></h3></td>
	<td width="10%"><a href="accept.jsp?user=<%=rs.getString(1)%>&seller=<%=rs.getString(2)%>"><h3 style="color:#cc9999;font-family: Century Gothic">Accept</h3></a>/<a href="reject.jsp?user=<%=rs.getString(1)%>&seller=<%=rs.getString(2)%>""><h3 style="color:#cc9999;font-family: Century Gothic">Reject</h3></a></td>

</tr>

<%}
}
catch(Exception e)
{
	System.out.println(e);
}
%>



</table>
</body>


<br><br><br><br>	<br><br><br><br>	<br><br><br><br>	<br><br><br><br>	
<%@ include file="footer.jsp"%>