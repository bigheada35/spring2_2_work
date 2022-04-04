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
	<!-- thumbnail image hover -->
	<style type="text/css">
		.thumbnail:hover {
			background-color: #e0e0e0;
			border: 1px solid #e0e0e0;
			border-radius: 5px;
		}
		
		a:hover { 
			text-decoration: none;
		}
	</style>
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

										<%-- <li>
											<h5>
												<a
													href="${pageContext.request.contextPath}/member/mypage/like">찜한
													목록</a>
											</h5>
										</li> --%>
										<li>
											<h5>
												<a href="${pageContext.request.contextPath}/myPage/myReview">구매후기</a>
											</h5>
										</li>
										<li>
											<h5>
												<a
													href="${pageContext.request.contextPath}/member/mypage/prdctq/list">상품문의</a>
											</h5>
										</li>
										<%-- <li>

											<h5>
												<a
													href="${pageContext.request.contextPath}/member/mypage/myqna/list">고객Q&A</a>
											</h5>
										</li> --%>

									</ul>
								</div>
							</div>
							<div class="panel-heading">
								<button id="point-btn" type="submit" class="float-align"
									style="font-size: 10pt;" onclick="deleteMember()">회원탈퇴</button>

							</div>

						</div>

						<!-- 오른쪽 컨텐츠 내용 -->
						<div class="col-md-9 contact-info"
							style="border-left: 1px solid rgba(0, 0, 0, .1);">
							<!--  width: 822px; -->
							<div class="container">
								<div class="row">
									<h3 style="padding-left: 10px">
										<!-- style="margin-top: 5px; margin-left: 15px; padding-bottom: 16px;" -->
										최근 본 상품
										<!-- <strong> style="margin: 10px;" -->
									</h3>
								</div>

								<hr>

								<div class="team-area sp">
									<div class="container">
										<div class="row">
											<c:forEach items="${view_list}" var="watch">
												<div class="col-sm-6 col-md-4 col-lg-3 single-team">
													<div class="inner">
														<div class="thumbnail">
															<!-- class="team-img" -->
															<img src="<c:url value="${watch.image_name}"/>"
																style="max-width: 100px;" />

														</div>
														<div class="team-content">
															<h4>${watch.product_name}</h4>
															<h5>${watch.member_id}</h5>
															<h5>${watch.product_price}원</h5>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>

								<hr>

								<!-- 페이징 -->
								<div class="container">
									<ul class="pagination justify-content-center">
										<c:choose>
											<c:when test="${pageMaker.pre}">
												<li class="page-item"><a class="page-link"
													href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item disabled"><a class="page-link"
													href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
											</c:otherwise>
										</c:choose>

										<c:forEach begin="${pageMaker.startPage }"
											end="${pageMaker.endPage }" var="idx">
											<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
											<li
												class="page-item ${pageMaker.cri.pageNum == idx ? 'active' : '' }"><a
												class="page-link" href="${pageMaker.makeQuery(idx)}">${idx}</a></li>
										</c:forEach>

										<c:choose>
											<c:when test="${pageMaker.next && pageMaker.endPage > 0}">
												<li class="page-item disabled"><a class="page-link"
													href="${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link"
													href="${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
											</c:otherwise>
										</c:choose>
									</ul>
								</div>

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
			<script src="/resources/assets/js/jquery-2.2.4.min.js"></script>
			<script src="/resources/assets/js/vendor/popper.min.js"></script>
			<script src="/resources/assets/js/vendor/bootstrap.min.js"></script>
			<script src="/resources/assets/js/vendor/owl.carousel.min.js"></script>
			<script src="/resources/assets/js/vendor/isotope.pkgd.min.js"></script>
			<script src="/resources/assets/js/vendor/jquery.barfiller.js"></script>
			<script src="/resources/assets/js/vendor/loopcounter.js"></script>
			<script src="/resources/assets/js/vendor/slicknav.min.js"></script>
			<script src="/resources/assets/js/active.js"></script>
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