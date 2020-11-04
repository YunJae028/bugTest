<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, bugTest.*" %> 
<% 
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="regBean" class="bugTest.RegisterBean"/>
<jsp:setProperty name="regBean" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script charset="UTF-8" language="JavaScript" src="../script.js"></script>

<body>
   
    <div class="container">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class ="jumbotron" style="padding-top:20px;">
                <form name = "regForm" method = "post" action="main.jsp?CONTENTPAGE=../joinInsert.jsp">
                    <h3 style="text-align:center;">회원 가입. 작성하신 내용을 확인해주세요</h3>
                    <div class ="form-group">
                        <input type ="text" class="form-control" placeholder="아이디" name ="mem_id" maxlength='10'
                        value="<jsp:getProperty name="regBean" property="mem_id" />"> >
                    </div>
                    <input type="button"value="ID중복확인" onClick="idCheck(this.form.mem_id.value)">
                    <div class ="form-group">
                        <input type ="password" class="form-control" placeholder="비밀번호" name ="mem_passwd" maxlength='10' 
                         value="<jsp:getProperty name="regBean" property="mem_passwd" />" >
                    </div>
                    <div class ="form-group">
                        <input type ="text" class="form-control" placeholder="이름" name ="mem_name" maxlength='10' 
                         value="<jsp:getProperty name="regBean" property="mem_name" />" >
                    </div>
                    <div class ="form-group">
                        <input type ="email" class="form-control" placeholder="이메일" name ="mem_email" maxlength='10' 
                         value="<jsp:getProperty name="regBean" property="mem_email" />" >
                    </div>
                    <div class ="form-group">
                        <input type ="text" class="form-control" placeholder="연락처" name ="mem_phone" maxlength='10' 
                         value="<jsp:getProperty name="regBean" property="mem_phone" />" >
                    </div>
                      <div class ="form-group">
                        <input type ="text" class="form-control" placeholder="주소" name ="mem_address" maxlength='50' 
                         value="<jsp:getProperty name="regBean" property="mem_address" />" >
                    </div>
                    <div class ="form-group">
                    <input type ="text" class="form-control" placeholder="직업" name ="mem_job" maxlength='10' 
                         value="<jsp:getProperty name="regBean" property="mem_job" />" >
                     </div>
                   	<input type="submit" value="확인완료"> 	 
                   	<input type="button" class="btn btn-primary form-control"  value="다시쓰기" onClick="history.back()"> 
                </form>
            </div> 
        </div> 
        <div class="col-lg-4"></div>
    </div>
    
    
    
    
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>