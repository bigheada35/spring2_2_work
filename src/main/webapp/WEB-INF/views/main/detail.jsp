<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>공부어때 동영상 강의 쇼핑몰</title>   

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>

</head>
<style>
    img{
        width : 80%;
    }
    
    .paging{
		text-align : center;
	}
	
</style>


<body>
	
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
		

<div class="container">
    <section class="ftco-section">
    	<div class="container">
    		<div class="row" style="height:80%">
    			<div class="col-lg-6 ftco-animate">
    				<video autoplay controls style="width:100%; height: 80%;"/>
	         		    <source src="<c:url value="${prod.video_name}"/>" type="video/mp4" >
		    	    </video>
                </div>
    			<div class="col-lg-6 product-details ftco-animate" style="height:500px">
    				<br>
    				<h1>${prod.product_name}</h1>
    				<br>
    				<h2><p><fmt:formatNumber type="currency" value="${prod.product_price}" /></p></h2>				               
    				<br>
    				<p>${prod.product_description}</p>
          	        <br><br>
          	        <p>  
						<a href="/main/cartorder?product_id=${prod.product_id}" class="btn btn-primary my-2" style="background-color:#FFA500; border-color:#FFA500;">장바구니 담기</a>
		              	<a href="/main/checkout?product_id=${prod.product_id}" class="btn btn-primary my-2" style="background-color:#FFA500; border-color:#FFA500;">구매하기</a>
		              	<%-- <a href="/main/playVideo?product_id=${prod.product_id}" class="btn btn-primary my-2">Play</a> --%>		                     	        
          	        </p>
    			</div>
    		</div>
    	</div>
    </section>
    <h4 style="color: #FFA500;">상품 설명</h4>
    <br>
    <div class="info">
        <img src="/resources/img/${prod.product_name}-1.png" >
    </div>
    <div class="info">
        <img src="/resources/img/${prod.product_name}-2.png" >
    </div>
</div> 		

<br><br><br>
	<div class="container">  
		<table class="table">  			
			<h4 style="color: #FFA500;">후기 게시판</h4>		  
			<thead> 
				<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col" style="text-align:center">작성자</th>
				<th scope="col" style="text-align:center">작성일자</th>
				<th scope="col" style="text-align:center">별점</th>
				<th scope="col" style="text-align:center">조회수</th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach items="${rlist}" var="board">
					<input type="hidden" name="rating_check" value="${board.rating_check}">
	      			<input type="hidden" name="review_id" value="${board.review_id}">	
	      			<input type="hidden" name="product_id" value="${board.product_id}">	      
					<tr>
						<td>${board.board_id}</td>
						<td>
						<a href="rcontent_view?board_id=${board.board_id}&review_id=${board.review_id}" style="text-decoration:none; color:black">${board.board_title}</a></td>
						<td style="text-align:center">${board.member_id}</td>
				        <td style="text-align:center">${board.board_date}</td>
				        <td style="text-align:center">
							<img src="<c:url value="/resources/img/${board.rating_check}.png"/>" style="width:100px; text-align:center;"/>
						</td>
				        <td style="text-align:center">${board.board_hit}</td>
      				</tr>
				</c:forEach>       
			</tbody>
		<br>
		</table>

		<div class="paging">		
			<c:if test="${pageMaker.pre}">
				<a href="detail?product_id=${prod.product_id}${pageMaker.makeQuery(pageMaker.startPage - 1) }">≪</a>
			</c:if>		   
			<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<a href="detail?product_id=${prod.product_id}" style="text-decoration:none; color:black">${idx}&nbsp;&nbsp;</a>
			</c:forEach>			      
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<a href="detail?product_id=${prod.product_id}${pageMaker.makeQuery(pageMaker.endPage +1) }"> ≫ </a>
			</c:if> 
		</div>			
	<div>
	<br><br><br>
</body>

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>

</html>
