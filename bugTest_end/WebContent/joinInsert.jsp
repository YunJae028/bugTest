<%@ page contentType="text/html;charset=EUC-KR"%>

<% 
request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="memMgr" class="bugTest.MemberMgr" />
<jsp:useBean id="regBean" class="bugTest.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = memMgr.memberInsert(regBean);
%>

<html>
<head>
<title>ȸ������ Ȯ��</title>
<html>
<body>
<br><br>
<center>
<%
if(flag){
	  out.println("<b>ȸ�������� ���� �帳�ϴ�.</b><p>");
	  out.println("<a href=../login.jsp>�α���</a>");
	}
else	{
	out.println( );
	out.println("<b>�ٽ� �Է��Ͽ� �ֽʽÿ�.</b><p>");
	out.println(" <a href=main.jsp?CONTENTPAGE=../join.jsp> �ٽ� ����</a>");
}
%>
	n
</center>
</body>
</html>
