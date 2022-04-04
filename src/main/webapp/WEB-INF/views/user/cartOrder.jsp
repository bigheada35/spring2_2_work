<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/include/header.jspf"%>

<jsp:include
	page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>


<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/fontello.css">
<link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/icheck.min_all.css">
<link rel="stylesheet" href="assets/css/price-range.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<title>공부어때 동영상 강의 쇼핑몰</title>

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
	.cart_quantity_delete {
		
	}
}
</style>
<!-- Custom styles for this template -->
<link href="/css/album.css" rel="stylesheet">
</head>
<body>
	<header>

		<jsp:include
			page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>

	</header>

	<main role="main">



		<!-- 수정한 부분 -->
		&nbsp;
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1 profiel-container">

					<form action="" method="">

						<div class="profiel-header">
							<h3>
								<b style="position: relative; left: 44%;">장바구니/Shopping cart</b>
							</h3>

						</div>

						<div class="row" style="margin-left: 19%;">
							<div class="col-sm-2"></div>
							<div class="table-responsive cart_info">
								<table class="table table-condensed">

									<tr class="cart_menu">
										<td class="image">이미지</td>
										<td class="description">상품정보</td>
										<td class="price">판매가</td>
										<td class="delete">삭제</td>
									</tr>


									<c:forEach items="${products}" var="prod">
										<tr>
										<tbody>
											<td class="cart_product"><img
												src="<c:url value="${prod.image_name}"/>"
												style="max-width: 100px; height: auto;" /></td>

											<td class="cart_description">
												<h4 style="position: relative; right: 20%; padding: 5%;">${prod.product_name}</h4>
											</td>

											<td class="cart_price"
												style="position: relative; right: 4%; padding: 4%;"><fmt:formatNumber
													value="${prod.product_price}" pattern="#,###" />원</td>



											<td class="cart_delete"><a class="cart_quantity_delete"
												style="padding: 6%;"
												href="/main/cartorder_delete?product_id=${prod.product_id}">
													<i class="fa fa-times"
													style="padding: 6%; margin-top: 24%;"></i>
											</a></td>
										</tbody>
									</c:forEach>
								</table>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-1"></div>

			</div>

			<button type="button" class="btn btn-warning"
				style="position: relative; left: 60%; ">
				<a href="/main/checkout" style="color: inherit;">결제페이지로 이동하기</a>
			</button>


		</div>

		<!-- 수정한 부분 -->
	</main>
</html>
