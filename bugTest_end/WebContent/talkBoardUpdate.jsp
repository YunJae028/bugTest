<%@ page contentType="text/html;charset=UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  


<html>
<head>
<title>Board Insert</title>

<script language="JavaScript" src="script_1.js"></script>
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
			<form method="post" action="../talkBoardProc.jsp?flag=insert" enctype="multipart/form-data">
					<input type ="hidden" id = "name" name = "name" value="<%= mem_id %>">
      					<tr>
      					<label for="title">제목  : </label> <input type="text" class="form-control" id="usr" name = "title"  maxlength="50">
    					</tr>
    					</div>
		
    					<div class="form-group">
    					<tr>
      					<label for="comment">내용 : </label> <textarea class="form-control" rows="10" id="comment" name = "detail"  maxlength="2048"></textarea>
      					</tr>
    					</div>
 			  </table>
				<input type="submit" class="btn btn-primary pull-right" value="수정하기" />
			</form>
	</div>






</body>
</html>

