<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp" %>

<%
String mid = request.getParameter("mid");
String mname= request.getParameter("mname");
String addr= request.getParameter("addr");
String email= request.getParameter("email");
String mno= request.getParameter("mno");
String pwd= request.getParameter("pwd");
String stat="";


try
{	

	Connection con = databasecon.getconnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where phno='"+mno+"' and status1='fraud'");
	if(rs.next()){
	stat="fraud";
	}else{
	stat="normal";
	
	}

	String qry="insert into users(uid,uname,address,email,phno,pwd,status1) values('"+mid+"','"+mname+"','"+addr+"','"+email+"','"+mno+"','"+pwd+"','"+stat+"')";
	int r=st.executeUpdate(qry);

if(r!=0)
{
response.sendRedirect("user.jsp?uid="+mid+"");
}
	
	else
	{
     	response.sendRedirect("user.jsp?message1=fail");
	}

	}
catch(Exception e1)
{
out.println(e1);
}

%>

<%@include file="footer.jsp"%>
