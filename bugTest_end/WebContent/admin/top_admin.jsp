<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String admin_id = (String)session.getAttribute("adminKey");

	if(admin_id == null) {
		response.sendRedirect("login_admin.jsp");
	}
%>

<table width="75%" align="center" bgcolor="#FFFF99">
  <tr bgcolor="#FFCC00"> 

<style type="text/css">
	.navbar .navbar-nav {
	
  display: inline-block;
  float: none;
  display: table;
  margin-left: auto;
  margin-right: auto;
  
}

.navbar .navbar-collapse {
  text-align: center;
}



</style>
<head>
  <title>Bug Test_Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <img class = "logo" src="../img/bugTestIcon.png" width ="200" height = "80" >
  <style>
  .navbar-inverse { background-color: #CC99FF}
  .navbar-inverse { border-color: #CC99FF}
  .navbar-inverse .navbar-nav>li>a { color: #080808; font-weight: bold; } 
  .navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { background-color: #C463C1}
  .logo {display: block; margin-left: auto; margin-right: auto; margin-top:10px;margin-bottom:10px; }	
  </style>
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav ">
      <li><a href="../main/main.jsp">사이트 홈</a></li>
      <li><a href="main_admin.jsp">관리자 홈 </a></li>
      <li><a href="MemberMgr.jsp">회원 관리</a></li>
      <li><a href="#">게시판 관리</a></li>
      <li><a href="logout_admin.jsp">로그아웃</a></li>
    </ul>
  </div>
</nav>
</body>

   
  </tr>
</table> 

</html>