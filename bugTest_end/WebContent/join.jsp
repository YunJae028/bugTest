<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, bugTest.*" %> 
<% 
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="regBean" class="bugTest.RegisterBean"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<style>
 	.form-group{
 	
 		
 	}
</style>
<head>
<script charset="UTF-8" language="JavaScript" src="../script.js"></script>
<body>
   
    <div class="container">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class ="jumbotron" style="padding-top:20px;">
                <form name = "regForm" method = "post" action="main.jsp?CONTENTPAGE=../joinProc.jsp">
                    <h3 style="text-align:center;">회원 가입</h3>
                    <div class ="form-group">
                       	<label for="title"> 아이디 <input type ="text" class="form-control" placeholder="아이디" name ="mem_id" maxlength='10'></label>
                    </div>
                    <input type="button"value="ID중복확인" onClick="idCheck(this.form.mem_id.value)">
                    <div class ="form-group">
                       	<label for="title"> 비밀번호 <input type ="password" class="form-control" placeholder="비밀번호" name ="mem_passwd" maxlength='20' ></label>
                    </div>
                    <div class ="form-group">
                       	<label for="title"> 비밀번호 확인<input type ="password" class="form-control" placeholder="비밀번호 확인" name ="mem_repasswd" maxlength='20' ></label>
                    </div>
                    <div class ="form-group">
                        	<label for="title"> 이름 <input type ="text" class="form-control" placeholder="이름" name ="mem_name" maxlength='20' ></label>
                    </div>
                    <div class ="form-group">
                        	<label for="title"> 이메일 <input type ="email" class="form-control" placeholder="이메일" name ="mem_email" maxlength='30' ></label>
                    </div>
                    <div class ="form-group">
                      	<label for="title"> 번호 <input type ="text" class="form-control" placeholder="연락처" name ="mem_phone" maxlength='20'  ></label>
                    </div>
                      <div class ="form-group">
                       	<label for="title"> 주소 <input type ="text" class="form-control" placeholder="주소" name ="mem_address" maxlength='50'   > </label>
                    </div>
                    <div class ="form-group">
                    	<label for="title"> 직업 <input type ="text" class="form-control" placeholder="작업" name ="mem_job" maxlength='10' > </label>
					</div>
                     <input type="button" class="btn btn-primary form-control" value="회원가입" onclick="inputCheck()">
                </form>
            </div> 
        </div> 
        <div class="col-lg-4"></div>
    </div>
    
    
    
    
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>