<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, bugTest.*"%>
<jsp:useBean id="plyMgr" class="bugTest.PlayMgr" />

<html>
<head>
<title></title>
</head>

<style>
	.wrap{
		margin-top : 15px;
	}
	
	.play{
		
        display: inline-block; /*이부분에 성질을 inline-block로 바꿔줘서 가로배치를 해줬다.*/
      	margin-right : 20px;
      	margin-top : 15px;
      	margin-bottom : 15px;
      	
	}
	
</style>

<%Vector vResult= plyMgr.getPlay_kate(request.getParameter("KeyWord"));%>

 
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
	
</div>
	</form>

</body>
</html>

