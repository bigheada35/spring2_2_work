<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Home</title>
<style>
	.input-group{
		margin-left : 15%;
		width : 70%;
	}
	
	.table{
		margin-left : 20%;
		width : 60%;
	}
	
	.button{
		margin-left : 20%;
		text-align : left;
	}
	
	.btn{
		background-color:#FFA500; 
		border-color:#FFA500;
	}
		
	.title{
		width : 100%;
	}
</style>
</head>
<body>
	<br>
	<div class="container">
		<table class="table"> 
			 <form:form action="qreply" method="post">
	      	 <input type="hidden" name="board_id" value="${qreply_view.board_id}">
	      	 <input type="hidden" name="reply_id" value="${qreply_view.reply_id}">
	         <input type="hidden" name="reply_group" value="${qreply_view.reply_group}">
	         <input type="hidden" name="reply_step" value="${qreply_view.reply_step}">
	         <input type="hidden" name="reply_indent" value="${qreply_view.reply_indent}">
         <thead> 
				<tr class="form-inline">					
					<th scope="col"><input type="radio" name="board_enable" id="board_enable" value="Y" class="radio" /><span class="ml_10">공개</span></th>
					<th scope="col"><input type="radio" name="board_enable" id="board_enable" value="N" class="radio" /><span class="ml_10">비공개</span>	</th>				
					<th></th>
				</tr>
				<tr>  
			      <th scope="col">작성자</th>
			      <td>${principal.user.member_id}</td>
			    </tr> 	
			    <tr>  
			      <th scope="col" style="vertical-align:middle">제목</th>			      
			      <td><input type="text" name="board_title" class="title"></td>
			    </tr>			     
			    <tr style="border-bottom:2px solid">   
			      <th scope="col" class="content" style="vertical-align:top">내용</th>
			      <td><textarea rows="10" name="board_content" style="width:100%"></textarea></td>
			    </tr>   
			</thead>
		</table>		
		<div class="button">
			<button type="submit" class="btn btn-dark">등록</button></a>
		</div>
			</form:form>		
	</div>				 
</body>
</html>