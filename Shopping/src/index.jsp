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
<h2><center><img src="images/li.png" width="700" height="500" border="0" alt="Welcome"></center></h2><br>


<%@ include file="footer.jsp"%>