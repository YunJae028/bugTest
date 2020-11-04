<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
request.setCharacterEncoding("UTF-8");
%>
    
<!DOCTYPE html>
<html>
<head>
<script charset="utf-8" language="JavaScript" src="script.js"></script>
<meta charset="UTF-8">
<title>BugTest</title>
<style>
footer{text-align:center;}
div{text-align:center;}
</style>
</head>
<body>
<% 	String contentPage = request.getParameter("CONTENTPAGE");
	if(contentPage == null){
		contentPage = "bug1"; // 수정해야 됨
	}
%>
	<header>
		<jsp:include page="../menuBar.jsp" flush="false" />
	</header>
	<div>
	<section id="areaMain">
		<jsp:include page="<%= contentPage %>" flush="false" />
	</section>
	</div>
	
	<footer>
		<jsp:include page="../bottom.jsp" flush="false"/>
	</footer>
</body>
</html>