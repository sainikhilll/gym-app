<%@page import="model.Member"%>
<%@page import="service.MemberService"%>
<%@ include file="memberHead.jsp" %>
<%
	String member_Id = (String)session.getAttribute("member_Id");
	MemberService memberService = new MemberService();
	Member member = memberService.getMemberById(member_Id);
%>
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="card p-3 mt-3">
			<h5 class="text-center">Your Profile</h5>
			<hr>
			<div class="row">
				<div class="col-md-4">
					<div class="text-muted" style="font-size:12px">Full Name</div>
					<h6><%=member.getFirst_name()%> <%=member.getLast_name()%></h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted" style="font-size:12px">Email</div>
					<h6><%=member.getEmail() %></h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted" style="font-size:12px">Phone</div>
					<h6><%=member.getPhone()%></h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted mt-2" style="font-size:12px">Height</div>
					<h6><%=member.getHeight()%> cms</h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted mt-2" style="font-size:12px">Weight</div>
					<h6><%=member.getWeight()%> lbs</h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted mt-2" style="font-size:12px">Age</div>
					<h6><%=member.getAge()%> Years</h6>
				</div>
			</div>
			<form action="updateProfile.jsp">
				<input type="hidden" name="customer_Id" value="<%=member.getMember_Id()%>">
				<input type="hidden" name="first_name" value="<%=member.getFirst_name()%>">
				<input type="hidden" name="last_name" value="<%=member.getLast_name()%>">
				<input type="hidden" name="email" value="<%=member.getEmail()%>">
				<input type="hidden" name="phone" value="<%=member.getPhone()%>">
				<input type="hidden" name="height" value="<%=member.getHeight()%>">
				<input type="hidden" name="weight" value="<%=member.getWeight()%>">
				<input type="hidden" name="age" value="<%=member.getAge()%>">
				<input type="submit" class="btn btn-secondary w-100 mt-3" value="Update Profile">
			</form>
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>