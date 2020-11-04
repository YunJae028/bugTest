<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import ="java.util.*,bugTest.*" %> 
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memMgr" class="bugTest.MemberMgr" />


<html>
<head>
<title>회원수정</title>
<style>
footer{text-align:center;}
</style>
<link href="../style.css" rel="stylesheet" type="text/css">
<link href="../st2.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#ffffff">
<br>
<header>
		<jsp:include page="menuBar_admin.jsp" flush="false" />
	</header>
	<%
	String mem_id = request.getParameter("mem_id");
	RegisterBean regBean= memMgr.getMember(mem_id);
	%>
	 
	<table width="75%" align="center" bgcolor="#FFFFff">
	<tr> 
	<td align="center" bgcolor="#ffffff">

		<table class="type07" align="center">
		<thead>
		<form name="regForm" method="post" action="UpdateProc.jsp">
		
		<tr>
		<td></td> 
		<th align="center">
		<%=regBean.getMem_name()%>
		님의 정보를 수정합니다.</th>
		</thead>
		
		<tbody>
		<tr> 
		<th scope="row">아이디</th>
		<td><%=regBean.getMem_id()%></td>
		</tr>
		<tr> 
		<th scope="row">패스워드</th>
		<td><input type="text" name="mem_passwd" value="<%=regBean.getMem_passwd()%>"></td>
		</tr>
		<tr> 
		<th scope="row">이름</th>
		<td><input type="text" name="mem_name" value="<%=regBean.getMem_name()%>"></td>
		</tr>
		<tr> 
		<th scope="row">이메일</th>
		<td><input type="text" name="mem_email"  size="30" value="<%=regBean.getMem_email()%>"></td>
		</tr>
		<tr> 
		<th scope="row">전화번호</th>
		<td><input type="text" name="mem_phone" value="<%=regBean.getMem_phone()%>"></td>
		</tr>
		<tr> 
		<th scope="row">주소</th>
		<td><input type="text" name="mem_address" size="50" value="<%=regBean.getMem_address()%>"></td>
		</tr>
		<tr> 
		<th scope="row">직업</th>
		<td><select name=mem_job>
		<option value="0">선택하세요.
		<option value="회사원">회사원
		<option value="연구전문직">연구전문직
		<option value="교수학생">교수학생
		<option value="일반자영업">일반자영업
		<option value="공무원">공무원
		<option value="의료인">의료인
		<option value="법조인">법조인
		<option value="종교,언론,에술인">종교.언론/예술인
		<option value="농,축,수산,광업인">농/축/수산/광업인
		<option value="주부">주부
		<option value="무직">무직
		<option value="기타">기타
		</select>
		<script>document.regForm.mem_job.value="<%=regBean.getMem_job()%>"</script>
		</td>
		</tr>
		<tr> 
		<td colspan="2" align="center"><input type="submit" value="적용"> 
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
		<input type="reset" value="취소"> 
		</td>
		</tr>
		<input type="hidden" name="mem_id" value="<%=mem_id%>">
		</tbody>
		</form>
		</table>

	</td>
	</tr>
	</table>
	<footer>
		<jsp:include page="bottom_admin.jsp" flush="false"/>
	</footer>
		
</body>
</html>
