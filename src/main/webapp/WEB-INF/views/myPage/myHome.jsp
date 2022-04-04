<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>공부어때 | Home page</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico"
	type="/resources/images/x-icon">
<link rel="icon" href="favicon.ico" type="/resources/images/x-icon">

<link rel="stylesheet" href="/resources/assets/css/normalize.css">
<link rel="stylesheet" href="/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/assets/css/fontello.css">
<link
	href="/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="/resources/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link href="/resources/assets/css/animate.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet"
	href="/resources/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="/resources/assets/css/price-range.css">
<link rel="stylesheet" href="/resources/assets/css/owl.carousel.css">
<link rel="stylesheet" href="/resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="/resources/assets/css/owl.transitions.css">
<link rel="stylesheet" href="/resources/assets/css/style.css">
<link rel="stylesheet" href="/resources/assets/css/responsive.css">

<!-- AJAX 처리용 JQUERY -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
				
		<!--header -->
		<jsp:include
			page="${pageContext.request.contextPath }/WEB-INF/views/common/header.jsp"></jsp:include>
			

			<div class="container">
		<div class="row">
			<!-- 왼쪽 사이드 메뉴 -->

			<div class="content-area blog-page padding-top-40"
				style="background-color: #FCFCFC; padding-bottom: 55px;">
				<div class="container">
					<div class="row">


							<div class="blog-asside-right col-md-3">
								<div
									class="panel panel-default sidebar-menu wow fadeInRight animated">
									<div class="panel-heading">
										<h3 class="panel-title">
											<sec:authentication property="principal.user.member_name" />
										</h3>
									</div>

								</div>

								<div
									class="panel panel-default sidebar-menu wow fadeInRight animated">
									<div class="panel-heading">
										<h3 class="panel-title">내 정보</h3>
									</div>
									<div class="panel-body recent-property-widget">
										<ul>
											<li>

												<h6>
													<a
														href="${pageContext.request.contextPath}/myPage/updateMember">정보수정</a>
												</h6>

											</li>
											<li>
												<h5>
													<a
														href="${pageContext.request.contextPath}/myPage/myOrderList">주문내역
														조회</a>
												</h5>
											</li>
											<li>
												<h5>
													<a
														href="${pageContext.request.contextPath}/myPage/recentlyProduct">최근
														본 상품</a>
												</h5>
											</li>

										
											<li>
												<h5>
													<a
														href="${pageContext.request.contextPath}/myPage/myReview">구매후기</a>
												</h5>
											</li>
											<li>
												<h5>
													<a
														href="${pageContext.request.contextPath}/myPage/myQ">상품문의</a>
												</h5>
											</li>
										


										</ul>
									</div>
								</div>
								<div class="panel-heading">
									<button id="point-btn" type="submit" class="float-right"
										style="font-size: 10pt;" onclick="deleteMember()">회원탈퇴</button>

								</div>

							</div>


							<!-- 본문 내용 -->

							<div class="blog-lst col-md-9 p0">
								<section id="id-100" class="post single">

									<div id="post-content"
										class="post-body single wow fadeInLeft animated">
										<div class="row">
											<div class="col-md-6" align="left" style="padding-left: 10px">
												<h3>최근 주문내역</h3>
											</div>
											<div class="col-md-6" align="right"
												style="padding-right: 0px">
												<button class="btn btn-primary btn"
													onclick="location.href='${pageContext.request.contextPath}/main/cartorder'">장바구니</button>
											</div>
										</div>
										<div class="row" style="padding-left: 15px">
											<small>최근 주문내역 중 3개만 보여집니다.</small>
										</div>
										<hr>
										<!-- 최근 주문내역 3개만 보여주기 -->
										<c:forEach items="${order_list}" var="order" end="2">
											<div class="row">
												<div class="col-md-3 thumbnail" align="center">
													<a href="/main/playVideo?product_id=${order.product_id}"><img
														src="<c:url value="${order.image_name}"/>"
														style="max-width: 80%;" /> </a>

												</div>
												<div class="col-md-5" align="left"
													style="padding: 3% 0px 0px 0px">
													<br>
													<h5>${order.product_name}</h5>
												</div>
												<div class="col-md-4" align="right"
													style="padding: 3% 0px 0px 0px">
													<br>
													<h5><fmt:formatNumber type="currency" value="${order.orders_price}" />원</h5>
												</div>
											</div>
										</c:forEach>

										<br style="padding: 0px 0px 5% 0px">
										<div class="row" style="padding-left: 15px">
											<h3>최근 본 상품</h3>
										</div>
										<div class="row" style="padding: 15px 0px 0px 15px">
											<small>최근 본 상품 중 3개만 보여집니다.</small>
										</div>

										<hr>

										<!-- 최근 본 상품내역 3개만 보여주기 -->
										<div class="row">
											<c:forEach items="${view_list}" var="watch" end="2">
												<div class="col-md-4 thumbnail" align="center">
													<div>


														<a href="/main/playVideo?product_id=${watch.product_id}"><img
															src="<c:url value="${watch.image_name}"/>"
															style="max-width: 80%;" /> </a> <a
															href="${pageContext.request.contextPath}/product/${watch.product_id}">
															<img
															src="<c:url value="/product_img/product_thumbnail/${watch.image_name}"/>"
															width="150px" height="200px">
														</a>
													</div>
													<div style="padding-top: 3%">
														<h5>${watch.member_id}</h5>
														<h5>${watch.product_name}</h5>
													</div>
												</div>
											</c:forEach>
										</div>

									<!-- 	<hr style="padding: 0px 0px 5% 0px">

										<div class="row" style="padding-left: 15px">
											<h3>최근 찜한 목록</h3>
										</div>
										<div class="row" style="padding: 15px 0px 0px 15px">
											<small>최근 찜한 목록 중 3개만 보여집니다.</small>
										</div>

										<hr> -->

										<!-- 최근 찜한 목록내역 3개만 보여주기 -->
										<div class="row">
											<%-- 	<c:forEach items="${like_product_list}" var="like" end="2">
												<div class="col-md-4 thumbnail" align="center">
													<div>
														<!-- 경로 product_img/product_thumbnail로 바뀌면 수정하자... -->
														<a
															href="${pageContext.request.contextPath}/product/${like.product_id}">
															<img
															src="<c:url value="/product_img/product_thumbnail/${like.product_thumbnail}"/>"
															onerror="this.src='/product_img/product_thumbnail/none-thumbnail.png'"
															width="150px" height="200px">
														</a>
													</div>
													<div style="padding-top: 3%">
														<h5>${like.member_id}</h5>
														<h5>${like.product_name}</h5>
													</div>
												</div>
											</c:forEach> --%>
										</div>

									</div>
								</section>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<jsp:include
		page="${pageContext.request.contextPath }/WEB-INF/views/common/footer.jsp"></jsp:include>


	<!--Required JS files-->
	<script src="/resources/assets/js/modernizr-2.6.2.min.js"></script>

	<script src="/resources/assets/js/jquery-1.10.2.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/assets/js/bootstrap-select.min.js"></script>
	<script src="/resources/assets/js/bootstrap-hover-dropdown.js"></script>

	<script src="/resources/assets/js/easypiechart.min.js"></script>
	<script src="/resources/assets/js/jquery.easypiechart.min.js"></script>

	<script src="/resources/assets/js/owl.carousel.min.js"></script>
	<script src="/resources/assets/js/wow.js"></script>

	<script src="/resources/assets/js/icheck.min.js"></script>
	<script src="/resources/assets/js/price-range.js"></script>

	<script src="/resources/assets/js/main.js"></script>

</body>
<script>
	function deleteMember() {
		event.preventDefault();
		if (confirm("회원이 작성한 게시물과 회원의 모든 정보가 삭제됩니다. 정말 탈퇴하시겠습니까? ") == true) {
			alert("탈퇴 실행")
			$.ajax({
				method : "get",
				url : "/myPage/updateMember/delete",
				success : function(data) {
					alert("회원탈퇴가 정상적으로 완료되었습니다. 로그인 창으로 이동합니다.");
					window.location.href = '/logout';
				}
			});
		}

	}
</script>
</html>