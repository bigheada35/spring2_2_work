<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="/WEB-INF/include/header.jspf"%>
    <title>업로드 폼 및 현재 리스트</title>
    
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
    
    
</head>

<body>


    <header>
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
	</header>
		
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<h1>상품 (등록 삭제 수정) 페이지</h1>
			</div>
		</div>
		<div class="row">			
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<p>"${message}"</p>
			</div>
		</div>	
		<div class="row" >			
			<div class="col-sm-1"></div>	
			<div class="col-sm-9" style="border:1px solid gray;">
				<form:form enctype="multipart/form-data" action="fileUpload" method="POST">
				
				    <input type="radio" id="contactChoice1" name=category_name value="음악" checked>
			    	<label for="contactChoice1">음악</label>
			
				    <input type="radio" id="contactChoice2" name="category_name" value="취미">
			    	<label for="contactChoice2">취미</label>
			
			    	<input type="radio" id="contactChoice3" name="category_name" value="가드닝">
			    	<label for="contactChoice3">가드닝</label>
			    	
				    <input type="radio" id="contactChoice4" name=category_name value="부동산">
			    	<label for="contactChoice4">부동산</label>
					<br/>
			 
			        <label for="product_price">상품가격</label>
			        <input type="text"  name="product_price" placeholder="숫자 입력" size="5"/>	<br/>
			      
			        <label for="product_description">상품설명</label>
			        <input type="text"  name=product_description placeholder="글자로 입력하세요" size="100"/><br/>
			             		
			        <label for="fileVideo">동영상</label>
					<input type="file" name="fileVideo"/>
					<label for="fileImage">사진</label>
					<input type="file" name="fileImage" />
					<button type="submit" class="btn">파일업로드 및 상품등록</button>
				</form:form>
			</div>
		</div>
		
		
		<div class="row" style="padding-top: 100px;">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<table class="table table-striped" width="1000" cellpadding="0" cellspacing="0" border="1" >
					<thead>
						<tr>
							<th scope="col">video</th>
				            <th scope="col">name</th>
				            <th scope="col">price</th>
				            <th scope="col">enable</th>
				            <th scope="col">date</th>
							<th scope="col">description</th>
				            <th scope="col">image</th>
				            <th scope="col"></th>				            
						</tr>
					<thead>
					<tbody>
							<%-- <c:forEach items="${files}" var="file"> --%>
							<c:forEach items="${products}" var="prod">
							<tr>
						 	 			 
						 				<td>
						 					<video width="300" height="250" controls/>
								          		<%-- <source src="<c:url value="${file}"/>" type="video/mp4"> --%>
								          		<source src="<c:url value="${prod.video_name}"/>" type="video/mp4">
										    </video>
										    ${prod.video_name}
										<td/>
										<%-- <td>${file} </td> --%>
										<%-- <td>${prod.video_name} </td> --%>
										<td>
											${prod.product_name}
											<form:form action="/upload/modify" method="post">
												<input type="hidden" name="product_id" value="${prod.product_id}">
												<input type="text"  name="product_name" />
												<button type="submit" class="btn">이름변경</button>
											</form:form>
										</td>
										<td><fmt:formatNumber value="${prod.product_price}" pattern="#,###" />원 </td>
										<td>${prod.product_enable} </td>
										<td>${prod.product_date} </td>
										<td style="min-width:200px;">
											${prod.product_description} 
											<form:form action="/upload/modify" method="post">
												<input type="hidden" name="product_id" value="${prod.product_id}">
												<input type="text"  name="product_description"/>
												<button type="submit" class="btn">내용변경</button>
											</form:form>
										</td>
										<td>
											<img src="<c:url value="${prod.image_name}"/>" style="max-width:250px;"/>
										${prod.image_name} </td>
										<td>
											<a href="/upload/delete?product_id=${prod.product_id}">삭제</a> 
										</td>
						
							 </tr>
							</c:forEach>	
					</tbody>
				</table>
			</div>
		</div>	
</body>


	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>
	
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/css/assets/dist/js/bootstrap.bundle.min.js"></script>



</html>