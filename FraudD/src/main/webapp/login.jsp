<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%String email=null;%>

<%
String pass=null,uid=null;
String a = request.getParameter("uid");
String b= request.getParameter("pass");
String name=null,u=null,test2=null;



try
{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String qry="select * from users where email='"+a+"' and pwd='"+b+"'";
ResultSet rs=st.executeQuery(qry);

session.setAttribute("email",a);

if(rs.next())
{

	if(rs.getString("status2").equals("fraud")){
		response.sendRedirect("user.jsp?m=f");

	}else{
	 	
		response.sendRedirect("user_home.jsp");
		session.setAttribute("status1",rs.getString("status1"));

	
	}


}
else
	{
     	response.sendRedirect("user.jsp?m=fail");
	}

	}
catch(Exception e1)
{
System.out.println(e1);
}

%>