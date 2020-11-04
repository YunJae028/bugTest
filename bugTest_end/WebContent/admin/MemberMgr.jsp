<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, bugTest.*"%>
<jsp:useBean id="memMgr" class="bugTest.MemberMgr" />


<html>

<head>

	<header>
		<jsp:include page="menuBar_admin.jsp" flush="false" />
	</header>
<title>MemMgr</title>
<style>
footer{text-align:center;}
</style>
<link href="../style.css" rel="stylesheet" type="text/css">
<link href="../st1.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">


	
	<%Vector vResult= memMgr.getMemberList();%>

	<table width="75%" align="center" bgcolor="#080808" >
	<tr> 
	<td align="center" bgcolor="#ffffff">

		<table  class="type09" >
		<thead>
		<tr> 
		<th scope="cols">회원이름</th>
		<th scope="cols">회원아이디</td>
		<th scope="cols">패스워드</td>
		<th scope="cols">전화번호</td> 
		<th scope="cols">이메일</td>
		<th scope="cols">수정</td>
		</thead>
		</tr>
		<%
		for(int i=0; i<vResult.size(); i++){
		RegisterBean regBean = (RegisterBean)vResult.get(i);
		%>
		<tbody>
		<tr> 
		<td align="center"><%=regBean.getMem_name()%></a></td>
		<td align="center"><%=regBean.getMem_id()%></th>
		<td align="center"><%=regBean.getMem_passwd()%></td>
		<td align="center"><%=regBean.getMem_phone()%></td>
		<td align="center"><%=regBean.getMem_email()%></td>
		<td align="center"><a href="javascript:Update('<%=regBean.getMem_id()%>')">수정하기</a></td>
	
		</tbody>
		</tr>
		<%}%>
		</table>
	</td>
	</tr>
	</table>

	<form name="update" method="post" action="Update.jsp">
	<input type=hidden name="mem_id">
	</form>
<footer>
		<jsp:include page="bottom_admin.jsp" flush="false"/>
	</footer>
</body>
</html>
