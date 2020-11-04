<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="comMgr" class="bugTest.CommentMgr" />
<%
	String flag = request.getParameter("flag");
	boolean result = false;
	
	if(flag.equals("insert")){
    	result=comMgr.insertComment(request);
    }else if(flag.equals("delete")){
		result=comMgr.deleteComment(request.getParameter("no"));
	}else{
		response.sendRedirect("main.jsp?CONTENTPAGE=../talkBoard.jsp");
	}
	
	if(result){
%>
	  <script>
	    alert("처리하였습니다");
		//location.href=history.back();
		window.location = document.referrer;
	  </script>
<%	}else{%>
	  <script>
	    alert("오류가 발생하였습니다.");
		//location.href="main/main.jsp?CONTENTPAGE=../talkBoard.jsp";
		window.location = document.referrer;
	  </script>
<%	}%>

