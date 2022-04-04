<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

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
</head>
<body>




	<nav class="navbar navbar-default ">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="imgsertoku" href="/main/main"><img
					src="/resources/assets/img/공부어때.jpg" alt=""></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">

				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="dropdown ymm-sw " data-wow-delay="0.1s"><a
						href="index.html" class="dropdown-toggle active"
						data-toggle="dropdown" data-hover="dropdown" data-delay="200">Home
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu navbar-nav">
							<li><a href="/logout">logout</a></li>
							<li><a href="/index">index</a></li>
							<li><a href="/add/addForm">회원가입</a></li>
							<li><a href="/add/addFormAdmin">크리에이터 회원가입</a></li>
								<li><a href="/user/userHome">유저 홈</a></li>
							<li><a href="/admin/adminHome">관리자 홈</a></li>
							<li><a href="/myPage/myHome">마이페이지</a></li>
							<li><a href="/statistics/income">매출 통계</a></li>
							<li><a href="/upload/list2">물건등록삭제</a>
							<li><a href="/oauth2/authorization/google">구글 로그인</a>
							<li><a href="/oauth2/authorization/naver">네이버 로그인</a>
							<li><a href="/oauth2/authorization/kakao">카카오 로그인</a>

						</ul></li>



					<li class="wow fadeInDown" data-wow-delay="0.2s"> <a class="nav-link dropdown-toggle" href="#" id="dropdown07XL" data-toggle="dropdown" aria-expanded="false">카테고리</a>
          <div class="dropdown-menu" aria-labelledby="dropdown07XL">
            <a class="dropdown-item" href="#">취미</a>
            <a class="dropdown-item" href="#">가드닝</a>
            <a class="dropdown-item" href="#">고전 읽기</a>
            <a class="dropdown-item" href="#">금융, 재테크</a>
            <a class="dropdown-item" href="#">주식</a>
            <a class="dropdown-item" href="#">부동산</a>
            <a class="dropdown-item" href="#">음악</a>
          </div></li>

					<li class="wow fadeInDown" data-wow-delay="0.5s"><a
						href="/nlist">공지사항</a></li>

					<li class="wow fadeInDown" data-wow-delay="0.5s"><span
						class="search_wrap">
							<form id="searchForm" action="/main/search" method="get">

								<span class="form-group display-flex"> <select
									class="form-control input-sm col-xs-2" name="type">
										<option value="N">강의명</option>
										<option value="D">강의 설명</option>
								</select> <span class="form-group "> <input type="text"
										name="keyword" class="form-control" placeholder="Key word">
								</span>
									<button class="btn search-btn" type="submit">
										<i class="fa fa-search"></i>
									</button>

								</span>
							</form>
					</span></li>
				</ul>
			</div>



	
			<ul class="dropdown-menu navbar-nav">
				<li><a href="/myPage/myHome">마이페이지</a></li>
				<li><a href="index-3.html">장바구니</a></li>
				<li><a href="index-4.html">로그 아웃</a></li>
			</ul>
		
		</div>
	

	
	</nav>
	<!-- End of nav bar -->


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
</html>