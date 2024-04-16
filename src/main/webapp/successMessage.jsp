<%
	String role = (String)session.getAttribute("role");
if(role == null){%>
	<%@ include file="head.jsp"%>
<%}else if(role.equalsIgnoreCase("Member")){%>
	<%@ include file="memberHead.jsp"%>
<%}%>
<%
	String msg = request.getParameter("msg");
%>
<div class="row">
	<div class="col-md-4"></div>
		<div class="col-md-4 mt-5">
			<div class="alert alert-success">
		    	<strong><%=msg%></strong>
		   	</div>
	   	</div>
	 </div>
<div class="col-md-4"></div>