
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%
String user=request.getParameter("user");
String seller=request.getParameter("seller");

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();

st.executeUpdate("update complaint set status='block' where email='"+user+"' and seller='"+seller+"' ");

    response.sendRedirect("complaints.jsp");


%>
