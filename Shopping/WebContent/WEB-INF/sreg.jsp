<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>


<%@ include file="header.jsp"%>


<h1><font size="" color="#000000">Seller Sign Up</h1></font>
<center>



 <%
               String message=request.getParameter("mid");
              if(message!=null)
                                                    {
               out.println("<h3>&nbsp;&nbsp;&nbsp;&nbsp;<font color=green>LIbrarian Added Successfully...!</font>");
                                                       }

String lib=null,str="SLR00";
int i=0;
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String qry="select max(id) from seller";
ResultSet rs=st.executeQuery(qry);
if(rs.next())
	{
		i=rs.getInt(1);
		i++;
	}
	lib=str+i;
}
catch(Exception e){
System.out.println("Exception Occured");}
                                               %>

<table align="left">
<tr><td>
<img src="images/add-participant.png" width="512" height="512" border="0" alt="">
</td></tr>
</table>

	<form action="sregaction.jsp" >
		<table width="400px" align="right" border=0 style="background-color:ffeeff;">
			<tr>
			</tr>
			<tr>
				<td align="center" colspan=2>&nbsp;</td>
			</tr>
			<tr>
				<td><h3>Seller Id</td>
				<td><input type="text" name="mid" value="<%=lib%>" readonly><td>
			</tr>
			<tr>
				<td><h3>Password</td>
				<td><input type="password" name="pwd" required><td>
			</tr>
			<tr>
				<td><h3>Seller&nbsp;Name</td>
				<td>
									<input type="text" name="mname" required >
				<td>
			</tr>
			<tr>
				<td><h3>Address </td>
				<td>	<textarea  rows="5" cols="23" name="addr"></textarea>
				<td>
			</tr>
			<tr>
				<td><h3>Email Id </td>
				<td><input type="email" name="email"><td>
			</tr>
			<tr>
				<td><h3>Mobile No </td>
				<td><input type="text" name="mno"><td>
			</tr>
			
			
			<tr></tr><tr></tr><tr></tr>
			<tr>
				<td></td>
				<td><input type="submit" name="Submit" value="Sign Up"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>

		</table>
	</form>
	
</body>


<br><br><br><br>	
<%@ include file="footer.jsp"%>