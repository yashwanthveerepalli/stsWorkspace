<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%!Connection con=null;String type=null;%>

<%@ include file="uheader.jsp"%>


<h1><font size="" color="#66ccff">You Ordered Products</h1></font>

<center>


 <%
               String message=request.getParameter("m");
              if(message!=null)
                                                     {
               out.println("<script>alert('Product Cancelled Successfully...!')</script>");
                                                       }
			String message1=request.getParameter("m1");
              if(message1!=null)
                                                     {
               out.println("<script>alert('Fail...!')</script>");
                                                       }


%>

<!-- <table align="left">
<tr><td>
<img src="images/video.jpg" width="300" height="300" border="0" alt="Add Video">
</td></tr>
</table> -->
<br><br>
<table width="70%" cellpadding="3" cellspacing="3" border="1">
<tr>

<td><h2 style="color:blue;font-family: verdana"><u>Product Id</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>Product Name</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>Cost</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>Action</u></h2></td>
<!-- <td><h2 style="color:blue;font-family: verdana"><u>Status</u></h2></td> -->
</tr>
<%
try
{
//type=request.getParameter("type");
//System.out.println("type:"+type);
//if(type!=null)
//{
	String email=session.getAttribute("email").toString();

	con = databasecon.getconnection();
	String qry="select prid,pname,cost from orderdetails where email='"+email+"' and status_='Proceed' ";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qry);

	while(rs.next())
	{
%>
<tr>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(1)%></h3></td>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(2)%></h3></td>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(3)%></h3></td>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><a href="cancel.jsp?pid=<%=rs.getString(1)%>">Cancel</a></h3></td>
	
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