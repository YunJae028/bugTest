<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="boaMgr" class="bugTest.BoardMgr" />
<%
	String flag = request.getParameter("flag");
	boolean result = false;
	
	if(flag.equals("insert")){
    	result=boaMgr.insertBoard(request);
	}else if(flag.equals("update")){
    	result=boaMgr.updateBoard(request);
    }else if(flag.equals("delete")){
		result=boaMgr.deleteBoard(request.getParameter("no"));
	}else{
		response.sendRedirect("main.jsp?CONTENTPAGE=../talkBoard.jsp");
	}
	
	if(result){
%>
	  <script>
	    alert("처리하였습니다");
		location.href="main/main.jsp?CONTENTPAGE=../talkBoard.jsp";
	  </script>
<%	}else{%>
	  <script>
	    alert("오류가 발생하였습니다.");
		location.href="main/main.jsp?CONTENTPAGE=../talkBoard.jsp";
	  </script>
<%	}%>

