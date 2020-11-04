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
<title>포춘쿠키</title>
<style>
</style>
</head>
<body>
<form method='post' action='main.jsp?CONTENTPAGE=../fortuneresult.jsp'>
<input type="text" name="fortuneName" placeholder="이름을 입력해 주세요"><br>
<input type="image" src="../img/fortune1.png" name="submit" width="150" onmouseover="this.src='../img/fortune2.png';" onmouseout="this.src='../img/fortune1.png';"><br><br>
</form>
</body>
</html>