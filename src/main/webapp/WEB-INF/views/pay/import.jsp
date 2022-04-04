<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>

	<!-- ================================================== -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="/WEB-INF/include/header.jspf"%>
    <title>공부어때 동영상 강의 쇼핑몰</title>
    

	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>	

	
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    
   
</head>

<body>
	<!-- ================================================== -->
	    <header>

			<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>

		</header>
		<!-- ================================================== -->
		<!-- ---------------------------------- -->
		<main role="main">
		
			<div class="row">  
				<div class="col-sm-1"></div>
				<div class="col-sm-10 badge-light"><h1>구매 내역</h1></div>
			</div>	
			<div class="row">	
				<div class="col-sm-2"></div>
				<div class="col-sm-9 badge-light text-center">	
					<table width="1000" cellpadding="0" cellspacing="0" border="1">
						<c:forEach items="${products_order}" var="prod">
							<tr>
								
				 				<td>
				 					<video width="300" height="150" controls/>
						          		<source src="<c:url value="${prod.video_name}"/>" type="video/mp4">
								    </video>
								<td/>
								
								<td>
									<img src="<c:url value="${prod.image_name}"/>" style="max-width:150px;"/>
								</td>
								<td>${prod.product_name} </td>
								<td><fmt:formatNumber value="${prod.product_price}" pattern="#,###" />원  </td>
								<td>
									<a href="/main/checkout_delete?orders_id=${prod.orders_id}">주문삭제</a> 
								</td>
					 		</tr>
						</c:forEach>
					</table>
				</div>	
			</div>

		
		</main>
		<!-- ---------------------------------- -->






</body>

	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>

</html>