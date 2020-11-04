<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, bugTest.*"%>
<jsp:useBean id="proMgr" class="bugTest.PlayMgr" />
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  


<html>

<style>
	
</style>
<head>
<title></title>
</head>
<!DOCTYPE html>
<html lang="en">
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
<body topmargin="100">
	<%Vector vResult= proMgr.getPlayList();%>
	
<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 700px;  margin: 0 auto">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
       <a href = "main.jsp?CONTENTPAGE=../bug/bug1.jsp"> <img src="../img/test/ep1.png"  style="width: 700px; "> </a>
      </div>

      <div class="item">
        <a href = "main.jsp?CONTENTPAGE=../bug/bug2.jsp"> <img src="../img/test/ep2.png"  style="width: 700px; "></a>
      </div>
    
      <div class="item">
        <a href = "main.jsp?CONTENTPAGE=../bug/bug3.jsp">  <img src="../img/test/ep3.png" style="width: 700px;  "> </a>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

	
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
	


</script>

</body>
</html>

