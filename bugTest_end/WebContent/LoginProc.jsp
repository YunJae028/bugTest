<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="memMgr" class="bugTest.MemberMgr" />
<script charset="UTF-8" language="JavaScript" src="../script.js"></script>

<%
	String mem_id = request.getParameter("mem_id");
	String mem_passwd = request.getParameter("mem_passwd");
	boolean loginCheck = memMgr.loginCheck(mem_id,mem_passwd); 
%>
<%
   if(loginCheck){
	  session.setAttribute("idKey",mem_id);
	  response.sendRedirect("main/main.jsp");
   }else{
      response.sendRedirect("LogError.jsp");
   }
%>

