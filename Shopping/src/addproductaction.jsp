<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="sheader.jsp" %>

<%
String sid=session.getAttribute("sid").toString();

String pid = request.getParameter("pid");
String pname= request.getParameter("pname");
String pdesc= request.getParameter("pdesc");
String cost= request.getParameter("cost");

String photo= request.getParameter("photo");

try
{
Connection con = databasecon.getconnection();
	Statement st=con.createStatement();
	String qry="insert into product(pid,pname,pdesc,cost,sellerid,photo) values('"+pid+"','"+pname+"','"+pdesc+"','"+cost+"','"+sid+"','"+photo+"')";
	int rs=st.executeUpdate(qry);

if(rs!=0)
{
response.sendRedirect("addproduct.jsp?pid="+pid+"");
}
	
	else
	{
     	response.sendRedirect("addproduct.jsp?message1=fail");
	}

	}
catch(Exception e1)
{
out.println(e1);
}

%>

<%@include file="footer.jsp"%>
