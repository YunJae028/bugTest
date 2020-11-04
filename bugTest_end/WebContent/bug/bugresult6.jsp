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
<title>나에게 아직 연인이 없는 이유는?</title>
<style>
footer{text-align:center;}
div{text-align:center;}
</style>
</head>
<body>
<% 	String contentPage = request.getParameter("CONTENTPAGE");
	if(contentPage == null){
		contentPage = "bug1";
	}
%>

	<div>
	<section id="areaMain">
		<% String chk1 = request.getParameter("chk6");
			String chkk = chk1;
			if(chk1.equals("1")){%>
				<img src="../img/test/6-1.png">
			<%}
			if(chk1.equals("2")){%>
			<img src="../img/test/6-2.png">
			<%}
			if(chk1.equals("3")){%>
			<img src="../img/test/6-3.png">
			<%}
			if(chk1.equals("4")){%>
			<img src="../img/test/6-4.png">
			<%}
			%>
			<form method='post' action='main.jsp?CONTENTPAGE=../bug/bug6.jsp'>
		    <input type="image" src="../img/test/다시하기.png" name="submit" width="150" onmouseover="this.src='../img/test/다시하기-1.png';" onmouseout="this.src='../img/test/다시하기.png';">
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
          				<input type ="hidden" id = "title_no" name = "title_no" value='6'>
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
		
		if((comment.getTitle_no()).equals("6")){
			
		
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
	 
		
	</form>
		
</body>
</html>