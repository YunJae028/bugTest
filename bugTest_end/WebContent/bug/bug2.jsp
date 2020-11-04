<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
request.setCharacterEncoding("UTF-8");
%>
   
   
 
<%@ page import="java.util.*, bugTest.*"%>

   <meta property="og:url"           content="https://kr.vonvon.me/" />
  <meta property="og:type"          content="website" />
  <meta property="og:title"         content="Your Website Title" />
  <meta property="og:description"   content="Your description" />
  <meta property="og:image"         content="https://www.your-domain.com/path/image.jpg" />
  
<jsp:useBean id="comMgr" class="bugTest.CommentMgr" />
<script language="JavaScript" src="script_1.js"></script>

<!DOCTYPE html>
<html>
<head>
<script charset="utf-8" language="JavaScript" src="script.js"></script>
<meta charset="UTF-8">
<title>나의 첫인상은?</title>
<style>
footer{text-align:center;}
div{text-align:center;}
</style>
</head>
<body>
<% 	String contentPage = request.getParameter("CONTENTPAGE");
	if(contentPage == null){
		contentPage = "bug2.jsp";
	}
%>
	
	<div>
	<section id="areaMain">
		<img src="../img/test/2문제.png">
		<form method='post' action='main.jsp?CONTENTPAGE=../bug/bugresult2.jsp'>
		<input type="radio" name="chk2" value='1'>1. 시계<br>
		<input type="radio" name="chk2" value='2'>2. 거울<br>
		<input type="radio" name="chk2" value='3'>3. 모자<br>
		<input type="radio" name="chk2" value='4'>4. 토마토<br>
		<input type="radio" name="chk2" value='5'>5. 손수건<br>
		<input type="image" src="../img/test/결과확인.png" name="submit" width="150" onmouseover="this.src='../img/test/결과확인-1.png';" onmouseout="this.src='../img/test/결과확인.png';">
		</form>	
	</section>
	</div>
	  	<div id="fb-root"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

  <!-- Your share button code -->
  <div class="fb-share-button" 
    data-href="https://kr.vonvon.me/" 
    data-layout="button_count">
  </div>

	
	<%
	String mem_id = null;
	if (session.getAttribute("idKey") != null){
		mem_id = (String) session.getAttribute("idKey");
	}
	%>
	
	
   
      <form role="form" method="post" action="../bug/comment_Pro.jsp?flag=insert" enctype="multipart/form-data">
        <div class="form-group" >
         <h4> 댓글 </h4>
        	<% if(mem_id == null){%>
        	<textarea class="form-control" id="comment" name = "detail" rows="3" placeholder= "로그인을 해주세요. " required ></textarea>
        	
          <% } else {%>
       				  <textarea class="form-control" id="comment" name = "detail" rows="3"  required ></textarea>
       				   <input type ="hidden" id = "name" name = "name" value="<%= mem_id %>">
          				<input type ="hidden" id = "title_no" name = "title_no" value='2'>
        			</div>
        			<button type="submit" class="btn btn-success">등록</button>
        	  <%} %>
      </form>
      <br><br>
      
        <%Vector vResult= comMgr.getCommentList();
		if(vResult.size() ==0){%> 
		댓글이 존재하지 않습니다. 
	<%
		}else{
		for(int i=0; i<vResult.size(); i++){
		CommentBean comment = (CommentBean)vResult.get(i);
		
		if((comment.getTitle_no()).equals("2")){
			
		
	%>
	
	
      <div class="row">
        <div class="col-sm-10">
          <h4><%=comment.getName()%> <small><%=comment.getDate()%></small></h4>
         <%=comment.getDetail() %>
         	<%if(mem_id.equals(comment.getName())) { %>
          	<button type="submit" class="btn btn-success"> <a href="javascript:productDelete('<%=comment.getNo()%>')">삭제</a></button>
          	<%} %>
        </div>
        </div>
 
        
	<%
		}
		}
		}
		%>
		
		<form name="del" method="post" action="../bug/comment_Pro.jsp?flag=delete">
	<input type=hidden name=no>
	
		</form>
	 
		
		
		
		

</body>
</html>