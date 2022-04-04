<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>Home</title>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
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
<body>
	<br>
	<div class="container">
		<table class="table"> 
    		<form:form action="/main/rwrite" method="post" enctype="multipart/form-data"> 
			<input type="hidden" name="product_id" value="${rwrite_view.product_id}"> 
	     	<input type="hidden" name="order_detail_id" value="${rwrite_view.order_detail_id}">   		
			<thead> 				
				<tr>
					<th scope="col">별점</th>
					<td>
					<select name="rating_check" id="rating_check">
						<option name="rating_check" id="rating_check">★☆☆☆☆</option>
						<option name="rating_check" id="rating_check">★★☆☆☆</option>
						<option name="rating_check" id="rating_check">★★★☆☆</option>
						<option name="rating_check" id="rating_check">★★★★☆</option>
						<option name="rating_check" id="rating_check">★★★★★</option>				
					</select></td>
				</tr>
        		<tr>  
			      <th scope="col">작성자</th>
			      <td>${principal.user.member_id}</td>
			    </tr> 	
			    <tr>  
			      <th scope="col" style="vertical-align:middle">제목</th>			      
			      <td><input type="text" name="board_title" class="title"></td>
			    </tr>			     
			    <tr>   
			      <th scope="col" class="content" style="vertical-align:top">내용</th>
			      <td><textarea rows="10" name="board_content" style="width:100%"></textarea></td>
			    </tr>  
			    <tr style="border-bottom:2px solid">
			    	<th scope="col" style="vertical-align:middle">사진첨부</th>
				    <td><label for="img"></label> 
						<img src="<c:url value="${rwrite_view.attachment_name}"/>" />
						<input type="file" name="file" ></td>
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