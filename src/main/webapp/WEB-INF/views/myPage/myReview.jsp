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

<!-- 달력으로 날짜 선택 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<style>
span.star-prototype, span.star-prototype>* {
	height: 16px;
	background: url(http://i.imgur.com/YsyS5y8.png) 0 -16px repeat-x;
	width: 80px;
	display: inline-block;
}

span.star-prototype>* {
	background-position: 0 0;
	max-width: 80px;
}

body {
	font-family: Arial;
	margin: 0;
}

* {
	box-sizing: border-box;
}

img {
	vertical-align: middle;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
	position: relative;
}

/* Hide the images by default */
.mySlides {
	display: none;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
	cursor: pointer;
}

/* Next & previous buttons */
.pre, .next {
	cursor: pointer;
	position: absolute;
	top: 40%;
	width: auto;
	padding: 16px;
	margin-top: -50px;
	color: white;
	font-weight: bold;
	font-size: 20px;
	border-radius: 0 3px 3px 0;
	user-select: none;
	-webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

.active, .demo:hover {
	opacity: 1;
}

.swiper-container {
	height: 220px;
	border: 1px solid gray;
	border-radius: 5px;
}

.swiper-slide {
	text-align: center;
	display: flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items: center; /* 위아래 기준 중앙정렬 */
	justify-content: center; /* 좌우 기준 중앙정렬 */
}

.swiper-slide img {
	max-width: 100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
}

ul {
	list-style: none;
}

.accordion-box {
	width: 100%;
	max-width: 600px;
	margin: 0 auto;
}

p.title {
	width: 100%;
	padding: 0 10px;
}

.con {
	padding: 20px;
	display: none;
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

						<!-- 컨텐츠 본문 내용 -->
						<div class="col-md-9 contact-info"
							style="border-left: 1px solid rgba(0, 0, 0, .1);">
							<h3>
								<strong>내가 쓴 구매후기</strong>
							</h3>
							<hr>

							<table id="report" class="table">
								<thead>
									<tr>
										<td>상품명</td>
										<td>글 제목</td>
										<td>별점</td>

									</tr>
								</thead>
								<tbody>

									<c:forEach var="list" items="${reviewMyList}"
										varStatus="status">
										<tr>
											<td>${list.product_name}</td>
											<td>${list.board_title}</td>
											<td>${list.rating_check}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
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


		<hr>


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

		<script type="text/javascript">
			$(document).ready(function() {

				$("#report tr:odd").addClass("odd");
				$("#report tr:not(.odd)").hide();
				$("#report tr:first-child").show(); //열머리글 보여주기

				$("#report tr.odd").click(function() {
					$(this).next("tr").toggle();
					$(this).find(".arrow").toggleClass("up");

				});

			});
		</script>
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
	</div>
</body>
</html>
