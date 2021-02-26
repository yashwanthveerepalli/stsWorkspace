<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp" %>

<%
String mid = request.getParameter("mid");
String mname= request.getParameter("mname");
String addr= request.getParameter("addr");
String email= request.getParameter("email");
String mno= request.getParameter("mno");
String pwd= request.getParameter("pwd");


try
{
Connection con = databasecon.getconnection();
	Statement st=con.createStatement();
	String qry="insert into seller(sid,sname,address,email,phno,pwd) values('"+mid+"','"+mname+"','"+addr+"','"+email+"','"+mno+"','"+pwd+"')";
	int rs=st.executeUpdate(qry);

if(rs!=0)
{
response.sendRedirect("seller.jsp?sid="+mid+"");
}
	
	else
	{
     	response.sendRedirect("seller.jsp?message1=fail");
	}

	}
catch(Exception e1)
{
out.println(e1);
}

%>

<%@include file="footer.jsp"%>
