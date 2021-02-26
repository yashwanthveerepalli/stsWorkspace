<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%!Connection con=null;String type=null;%>

<%@ include file="sheader.jsp"%>


<h1><font size="" color="#66ccff">View Customer Details</h1></font>

<center>


 <%
               String message=request.getParameter("videoid");
              if(message!=null)
                                                     {
               out.println("<h3>&nbsp;&nbsp;&nbsp;&nbsp;<font color=red>Video Inserted</font>");
                                                       }

%>

<!-- <table align="left">
<tr><td>
<img src="images/video.jpg" width="300" height="300" border="0" alt="Add Video">
</td></tr>
</table> -->
<br><br>
<table width="70%" cellpadding="5" cellspacing="5" border="1">
<tr>
<!-- <td><h2 style="color:blue;font-family: verdana"><u>Image</u></h2></td> -->
<td><h2 style="color:blue;font-family: verdana"><u>User Id</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>User Name</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>Address</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>Email</u></h2></td>
<td><h2 style="color:blue;font-family: verdana"><u>Mobile</u></h2></td>
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
	String qry="select * from users ";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qry);

	while(rs.next())
	{
%>
<tr>
	
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(1)%></h3></td>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(2)%></h3></td>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(3)%></h3></td>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(4)%></h3></td>
	<td width="10%"><h3 style="color:#cc9999;font-family: Century Gothic"><%=rs.getString(5)%></h3></td>

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