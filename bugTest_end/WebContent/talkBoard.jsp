/<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, bugTest.*"%>

<jsp:useBean id="boaMgr" class="bugTest.BoardMgr" />
<script language="JavaScript" src="script_1.js"></script>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<%
	String mem_id = null;
	if (session.getAttribute("idKey") != null){
		mem_id = (String) session.getAttribute("idKey");
	}
	%>
	

<div class="container">
  
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>날짜</th>
        <th>글쓴이</th>
      </tr>
    </thead>
    <%Vector vResult= boaMgr.getBoardList();
		if(vResult.size() ==0){%>
		<tr> <td>현재 게시물이 존재하지 않습니다. </td></tr>
	<%
		}else{
		for(int i=0; i<vResult.size(); i++){
		BoardBean board = (BoardBean)vResult.get(i);
	%>
    <tbody>
      <tr>
        <td><%=board.getNo()%></td>
        <td><a href="javascript:talkBoardDetail('<%=board.getNo()%>')"><%=board.getTitle()%></a></td>
        <td><%=board.getDate()%></td>
        <td><%=board.getName()%></td>
      </tr>
      <%}
		}%>
    </tbody>
  </table>
  
  	<form name="detail" method="post" action="main.jsp?CONTENTPAGE=../talkBoardDetail.jsp" >
	<input type="hidden" name="no">
	</form>
  

    <%if(mem_id != null){%>	
    	<tr>
		<td colspan="5" align="center"><a href="main.jsp?CONTENTPAGE=../talkBoardInsert.jsp">글쓰기</a></td>
		</tr>
	<%} %>	
  </div>
</div>

</body>
</html>
