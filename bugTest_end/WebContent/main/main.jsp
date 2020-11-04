<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
request.setCharacterEncoding("UTF-8");
%>
<%@ page import="java.util.*, bugTest.*"%>
<jsp:useBean id="boaMgr" class="bugTest.BoardMgr" />
<script language="JavaScript" src="../script_1.js"></script>    
<!DOCTYPE html>
<html>
<head>
<script charset="utf-8" language="JavaScript" src="script.js"></script>
<meta charset="UTF-8">
<title>BugTest</title>
<style>

footer{ 
  left:0px; 
  bottom:0px; 
  height:60px; 
  width:100%; 
  color: black;
  text-align:center;}
  
div{text-align:center;}


</style>
</head>
<body>
<% 	String contentPage = request.getParameter("CONTENTPAGE");
	if(contentPage == null){
		contentPage = "../center.jsp";
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

