<%@include file="uheader.jsp"%>

<%

String pid=request.getParameter("pid");


%>

<h1 align="center">Reason For Cancel</h1>

<form action="cancelaction.jsp" method="post" >
<input type="hidden" name="pid" value="<%=pid%>">

<table>
<tr>
<td>
<input type="radio" name="reason" value="male">Change in delivery address, non deliverable pincode.
<br><br>
<input type="radio" name="reason" value="female">Recipient not available at the estimated time/day of delivery.
<br><br>
<input type="radio" name="reason" value="male">EMI not being applied for CC payment.
<br><br>
<input type="radio" name="reason" value="male">Cash not available for COD.
<br><br>
<input type="radio" name="reason" value="male">Change in delayed delivery not entertained by seller.
</td>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>

<tr>
	<td>
<input type="submit" value="Cancel" onclick="">
	</td>
</tr>
</table>
</form>
<br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>