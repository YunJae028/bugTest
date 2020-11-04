<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <%
    String admin_id = (String)session.getAttribute("adminKey");

	if(admin_id == null) {
		response.sendRedirect("login_admin.jsp");
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>BugTest</title>
<style>
footer{text-align:center;}
div{text-align:center;}
</style>
</head>
<body>

	<header>
		<jsp:include page="menuBar_admin.jsp" flush="false" />
	</header>
	<div>
		<jsp:include page="center_admin.jsp" flush="false" />
	</div>
	<footer>
		<jsp:include page="bottom_admin.jsp" flush="false"/>
	</footer>
</body>
</html>