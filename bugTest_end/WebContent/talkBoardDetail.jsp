<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, bugTest.*"%>
<jsp:useBean id="boaMgr" class="bugTest.BoardMgr" />

<html>
<head>
<title>titleBoardDetail</title>

 <meta name="viewport" content="width=device-width, initial-scale=1">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script language="JavaScript" src="script_1.js"></script>
</head>

<body>
	
	<%
	String mem_id = null;
	if (session.getAttribute("idKey") != null){
		mem_id = (String) session.getAttribute("idKey");
	}
	%>
	
	<%BoardBean board= boaMgr.getBoard(request.getParameter("no"));%>
	
	<div class="container">
	 <div class="table-responsive">   
	<table>
	 <tbody>
      <tr>
        <label for="title"> 제목  : </label> <%=board.getTitle()%>
      </tr>
      <tr>
        <label for="writer"> 글작성자  : </label> <%=board.getName()%>
      </tr>
      
      <tr>
        <label for="time"> 글 내용  : </label> <%=board.getDetail()%>
      </tr>
      
      <tr>
        <label for="time"> 작성일 : </label> <%=board.getDate()%>
      </tr>
       
    </tbody>
    
  	</table>

	<table>
		<tbody>
		
		</tbody>
	</table>
	</div>
	
	</div>

	      <% if(mem_id.equals(board.getName())) { %>
      <a href="javascript:productUpdate('<%=board.getNo()%>')">수정하기</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="javascript:productDelete('<%=board.getNo()%>')">삭제하기</a>
       <%} %>
		 
		 
	

	<form name="update" method="post" action="main.jsp?CONTENTPAGE=../talkBoardUpdate.jsp">
	<input type=hidden name=no>
	</form>
	
	<form name="del" method="post" action="../talkBoardProc.jsp?flag=delete">
	<input type=hidden name=no>
	</form>


</body>
</html>


