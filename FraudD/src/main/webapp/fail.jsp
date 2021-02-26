<%@include file="uheader.jsp"%>
<form action="payment.jsp" method="post" >
<%
    String email = session.getAttribute("email").toString();
	String sid=request.getParameter("sid");
	String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String cost=request.getParameter("cost");

String ad1=request.getParameter("address1");
String ad2=request.getParameter("address2");
String ad3=request.getParameter("address3");
%>
<input type="hidden" name="sid" value="<%=sid%>">
<input type="hidden" name="pid" value="<%=pid%>">
<input type="hidden" name="pname" value="<%=pname%>">
<input type="hidden" name="cost" value="<%=cost%>">
<input type="hidden" name="address1" value="<%=ad1%>">
<input type="hidden" name="address2" value="<%=ad2%>">
<input type="hidden" name="address3" value="<%=ad3%>">

<table>
<tr>
<td>
<input type="radio" name="type" value="male">Credit Card
<br><br>
<input type="radio" name="type" value="female">Debit Card
<br><br>
<input type="radio" name="type" value="male">Net Banking
<br><br>
<input type="radio" name="type" value="male">Credit Card EMI
<td>
<input type="submit" value="Pay" onclick="">
	</td>
</tr>
</table>
</form>
<br><br><br><br><br><br><br><br><br><br>

<%@include file="footer.jsp"%>