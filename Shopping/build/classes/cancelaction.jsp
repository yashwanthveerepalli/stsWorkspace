<%@include file="uheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.net.InetAddress"%>
<%
    String email = session.getAttribute("email").toString();
	String pid=request.getParameter("pid");

    try{
      
      	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        int rs = st.executeUpdate("update orderdetails set status_='cancel' where prid='"+pid+"' and email='"+email+"' ");
        if(rs!=0)
        {
			System.out.println("Updated");
			response.sendRedirect("pcancel.jsp?m=succ");
          }
		  else
		{
				System.out.println("Not Updated");
				response.sendRedirect("pcancel.jsp?m1=fail");
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
		%>
<%@include file="footer.jsp"%>
