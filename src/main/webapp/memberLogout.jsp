<%
session.setAttribute("role", "Member");
session.invalidate();
response.sendRedirect("index.jsp");
%>