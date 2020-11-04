<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, bugTest.*"%>
<jsp:useBean id="plyMgr" class="bugTest.PlayMgr" />

<html>
<head>
<title></title>
</head>

<%Vector vResult= plyMgr.getPlay(request.getParameter("KeyWord"));%>

 
<body topmargin="100">

	<div class="wrap">
	<% 
		for(int i=vResult.size()-1; i>=0; i--){
		PlayBean play = (PlayBean)vResult.get(i);
		%>
		<div class="play" >
			<img onclick = "location.href='main.jsp?CONTENTPAGE=../bug/<%=play.getJsp()%>.jsp'" src="../img/test/<%=play.getImage()%>" height="200" width="300">
		</div>
		<%}%>
</body>
</html>

