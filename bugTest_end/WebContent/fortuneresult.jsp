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
<title>포춘쿠키 결과</title>

<style>
footer{text-align:center;}
div{text-align:center;}
</style>
</head>
<body onload="showImage()">
<% 	String contentPage = request.getParameter("CONTENTPAGE");
	if(contentPage == null){
		contentPage = "bug1";
	}
%>

	<div>
	<section id="areaMain">
		<%String name = request.getParameter("fortuneName");
			out.print("<h4>"+name+" 님의 포춘쿠키 결과<h4>");
		%>
		<script type="text/javascript">
var image = new Array();
image[0] = "../img/쿠키1.png";
image[1] = "../img/쿠키2.png";
image[2] = "../img/쿠키3.png";
image[3] = "../img/쿠키4.png";
image[4] = "../img/쿠키5.png";

var index = Math.floor(Math.random()*(image.length))
document.write("<img src ="+image[index]+">");
</script><br>
		<form method='post' action='main.jsp?CONTENTPAGE=../fortune.jsp'>
			 <input type="image" src="../img/test/다시하기.png" name="submit" width="150" onmouseover="this.src='../img/test/다시하기-1.png';" onmouseout="this.src='../img/test/다시하기.png';"><br>
		</form>
	</section>
	</div>
	
</body>
</html>