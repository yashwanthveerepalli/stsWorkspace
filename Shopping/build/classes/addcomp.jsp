<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="sheader.jsp" %>

<%
String sid=session.getAttribute("sid").toString();

String email = request.getParameter("email");
try
{
	Connection con = databasecon.getconnection();
	Statement st=con.createStatement();
	Statement st2=con.createStatement();
	String qry="select * from users where email='"+email+"'";
	ResultSet rs=st.executeQuery(qry);

if(rs.next())
{
 qry="insert into complaint values('"+email+"','"+sid+"','pending')";
 st2.executeUpdate(qry);
	
response.sendRedirect("complaint.jsp?message1=succ");
}
	
	else
	{
     	response.sendRedirect("complaint.jsp?message1=fail");
	}

	}
catch(Exception e1)
{response.sendRedirect("complaint.jsp?message1=fail");
	}

%>

<%@include file="footer.jsp"%>
