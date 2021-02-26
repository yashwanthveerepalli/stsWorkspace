<%@ include file="header.jsp"%>

<br><br>
<font size="" color="" align="right"><h1>Login for User</h1></font>



					<table  cellspacing=20 align="left" ><tr><td>
	                  <%
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
					 <%
                                                        m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("f"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Account has deleted  !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

<table align="left">
<tr><td>
<img src="images/ulogin.png" width="256" height="256" border="0" alt="">
</td></tr>
</table>

<form method="post" action="login.jsp">
	<table  cellpadding=5 cellspacing="5" align="right"><tr><td>

	<tr><td><input type="text" name="uid" required placeholder="Enter Email"><br>
		<tr><td><input type="password" name="pass" required placeholder="Password" size="20"><br>

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="Login" /></div><td>

</tr>
<tr><td></td>  <!-- <tr><td>  
<a href="register.jsp"><img src="images/icon_create_account.png" width="163" height="53" border="0" alt=""></a> -->
</table>
</form>

<br><br><br><br><br><br><br><br><br><br><br><br>

											   
<table align="right">
<tr>
	<td><h1><a href="ureg.jsp">Registration</a></h1></td>
</tr>
</table>


<%@ include file="footer.jsp"%>