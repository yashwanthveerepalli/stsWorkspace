<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>


<%@ include file="sheader.jsp"%>


<h1><font size="" color="#000000">Add New Product Details</h1></font>
<center>


 <%
               String message=request.getParameter("bid");
              if(message!=null)
                                                     {
               out.println("<h3>&nbsp;&nbsp;&nbsp;&nbsp;<font color=green>Book Inserted</font>");
                                                       }

String lib=null,str="PR00";
int i=0;
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String qry="select max(id) from product";
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

<br><br>
<table align="left">
<tr><td>
<img src="images/book1.png" width="256" height="256" border="0" alt="">
</td></tr>
</table>

	<form action="addproductaction.jsp" >
		<table width="400px" align="right" border=0 style="background-color:ffeeff;">
			<tr>
			</tr>
			<tr>
				<td align="center" colspan=2>&nbsp;</td>
			</tr>
			<tr>
				<td><h3>Product Id</td>
				<td><input type="text" name="pid" value="<%=lib%>" readonly><td>
			</tr>
			<tr>
				<td><h3>Product&nbsp;Name</td>
				<td>
									<input type="text" name="pname" required >
				<td>
			</tr>
			<tr>
				<td><h3>Description </td>
				<td>	<textarea  rows="5" cols="23" name="pdesc"></textarea>
				<td>
			</tr>
			<tr>
				<td><h3>Cost </td>
				<td><input type="text" name="cost"><td>
			</tr>
			
			<tr>
				<td><h3>Photo</td>
				<td><input type="file" name="photo"><td>
			</tr>
			<tr></tr><tr></tr><tr></tr>
			<tr>
				<td></td>
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