<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%String sid=null;%>

<%

String a = request.getParameter("uid");

String b= request.getParameter("pwd");

try
{

Connection con = databasecon.getconnection();

Statement st=con.createStatement();

String qry="select * from seller where sid='"+a+"' and pwd='"+b+"' ";

ResultSet rs=st.executeQuery(qry);

if(rs.next())

{

	sid=rs.getString(2);
	
	session.setAttribute("sid",sid);

response.sendRedirect("seller_home.jsp");

}

else

{

		response.sendRedirect("seller.jsp?m=fail");
	
	}

	}

catch(Exception e1)

{

out.println(e1);

}

%>

