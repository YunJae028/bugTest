<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.util.*, bugTest.*"%>
<jsp:useBean id="plyMgr" class="bugTest.PlayMgr" />

<!DOCTYPE html>
<html lang="en">
<% request.setCharacterEncoding("UTF-8"); %>

<style type="text/css">
	.navbar .navbar-nav {
  display: inline-block;
  float: none;
}

.navbar .navbar-collapse {
  text-align: center;
}



</style>

<script language="JavaScript" src="../script_1.js"></script>

<head>
  <title>Bug Test</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script charset="utf-8" language="JavaScript" src="script.js"></script>
  
  <img onclick = "location.href ='main.jsp'" class = "logo" src="../img/bugTestIcon.png" width ="200" height = "80" >
  
  <style>
  .navbar-inverse { background-color: #599CFF}
  .navbar-inverse { border-color: #599CFF}
  .navbar-inverse .navbar-nav>li>a { color: #080808; font-weight: bold; } 
  .navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { background-color: #3341B8}
  .logo {margin-left:10px;margin-right:10px;margin-top:10px;margin-bottom:10px;}	
  </style>
</head>
<body>
	<%
	String mem_id = null;
	if (session.getAttribute("idKey") != null){
		mem_id = (String) session.getAttribute("idKey");
	}
	%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  
    <ul class="nav navbar-nav navbar-left">
      <li><a href="#">   </a></li>
      <li><a href="main.jsp">홈</a></li>
      <li><a href="javascript:menukate_l('연애')">연애</a></li>
      <li><a href="javascript:menukate_f('우정')">우정</a></li>
      <li><a href="main.jsp?CONTENTPAGE=../fortune.jsp">운세</a></li>
      <li><a href="main.jsp?CONTENTPAGE=../talkBoard.jsp">톡톡</a></li>
    </ul>
      <%
    	if(mem_id == null){
    %>
		<ul class="nav navbar-nav navbar-right">
      <li><a href="main.jsp?CONTENTPAGE=../join.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="../login.jsp"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
    </ul>
     <%
    	}else {
    %>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="../Logout.jsp"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
    </ul>
      <% 		
    	}
    %>
  <form method='post' class="navbar-form navbar-right" action="main.jsp?CONTENTPAGE=../searchResult.jsp">
  <div class="input-group">
    <input type="text"  name = "KeyWord" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
</form>

	<form name="KeyWord_l" method="post" action="main.jsp?CONTENTPAGE=../kateResult.jsp">
	<input type=hidden name=KeyWord>
	</form>
	
	<form name="KeyWord_f" method="post" action="main.jsp?CONTENTPAGE=../kateResult.jsp">
	<input type=hidden name=KeyWord>
	</form>
	

</div>
</nav>
</body>
</html>
