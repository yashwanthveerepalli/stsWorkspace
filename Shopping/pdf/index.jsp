<%
session.invalidate();%>

  <%
    String m=request.getParameter("id");
  if(m!=null && m.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>



<%@ include file="header.jsp"%>
<br>

<h2>Welcome</h2><br>


<%@ include file="footer.jsp"%>