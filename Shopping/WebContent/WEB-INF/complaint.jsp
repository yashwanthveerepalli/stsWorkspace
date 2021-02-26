<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>


<%@ include file="sheader.jsp"%>
 <%
               String message1=request.getParameter("message1");
              if(message1!=null&&message1.equals("succ"))
                                                     {
               out.println("<h3>&nbsp;&nbsp;&nbsp;&nbsp;<font color=red>Complaint Registered<font><br><br><br></font>");
                                                       }
			if(message1!=null&&message1.equals("fail"))
                                                     {
               out.println("<h3>&nbsp;&nbsp;&nbsp;&nbsp;<font color=red>Invalid Mail or Duplicate</font><br><br><br></font>");
                                                       }

%>

</font>
<h1><font size="" color="#000000">Add Complaint</h1></font>
<center>


<br><br>

	<form action="addcomp.jsp" >
		<table width="500px" align="right" border=0 style="background-color:ffeeff;">
			<tr>
				<td><h3>User Email Id</td>
				<td><input type="text" name="email" required ><td>
			</tr>
			<tr>
				<td><input type="submit" name="Submit" value="ADD"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>

		</table>
	</form>
	
</body>


<br><br><br><br>	
<%@ include file="footer.jsp"%>