
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.net.InetAddress"%>
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

<%
InetAddress Addr=InetAddress.getLocalHost();
String IpAddr=Addr.getHostAddress();
System.out.println(IpAddr);

String stat1=(String)session.getAttribute("status1");
if(stat1.equals("fraud")){

response.sendRedirect("fail.jsp?sid="+sid+"&pid="+pid+"&pname="+pname+"&cost="+cost+"&email="+email+"&address1="+ad1+"&address2="+ad2+"&address3="+ad3+"");

}
int i=0;
    try{
      
      	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
		Statement st2 = con.createStatement();
		ResultSet rs1=st.executeQuery("select email from users where status1='fraud'");
		ResultSet rs2=null;
		while(rs1.next())
		{
			rs2=st2.executeQuery("select * from orderdetails where email='"+rs1.getString(1)+"'");
			
			while(rs2.next())
			{
				i=0;
if(ad1.equalsIgnoreCase(rs2.getString("addr1"))||ad1.equalsIgnoreCase(rs2.getString("addr2"))||ad1.equalsIgnoreCase(rs2.getString("addr3"))||IpAddr.equalsIgnoreCase(rs2.getString("ipaddr"))){
				++i;
				}
if(ad2.equalsIgnoreCase(rs2.getString("addr1"))||ad2.equalsIgnoreCase(rs2.getString("addr2"))||ad2.equalsIgnoreCase(rs2.getString("addr3"))||IpAddr.equalsIgnoreCase(rs2.getString("ipaddr"))){
				++i;
				}
if(ad3.equalsIgnoreCase(rs2.getString("addr1"))||ad3.equalsIgnoreCase(rs2.getString("addr2"))||ad3.equalsIgnoreCase(rs2.getString("addr3"))||IpAddr.equalsIgnoreCase(rs2.getString("ipaddr"))){
				++i;
				}
if(i==3){
response.sendRedirect("fail.jsp?sid="+sid+"&pid="+pid+"&pname="+pname+"&cost="+cost+"&email="+email+"&address1="+ad1+"&address2="+ad2+"&address3="+ad3+"");
}
					
			}
		}

	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
		%>

<%@include file="uheader.jsp"%>
<h1 align="center">Payment Gateway</h1>

<table>
<tr>
<td>
<input type="radio" name="type" value="male">Credit Card
<br><br>
<input type="radio" name="type" value="female">Debit Card
<br><br>
<input type="radio" name="type" value="male">Net Banking
<br><br>
<input type="radio" name="type" value="male">Cash On Delivery
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