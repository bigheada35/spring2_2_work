<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


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

<link rel="stylesheet" href="/resources/jjk/assets/css/normalize.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/fontello.css">
<link href="/resources/jjk/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="/resources/jjk/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="/resources/jjk/assets/css/animate.css" rel="stylesheet"	media="screen">
<!-- <link rel="stylesheet" href="/resources/jjk/assets/css/bootstrap-select.min.css"> -->
<link rel="stylesheet" href="/resources/jjk/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/price-range.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/owl.carousel.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/owl.theme.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/owl.transitions.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/style.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/responsive.css">




	


	<!--End top header -->

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
				<a class="imgsertoku" href="index.html"><img
					src="/resources/jjk/assets/img/공부어때.jpg" alt=""></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">

				<ul class="main-nav nav navbar-nav navbar-left">



					<li class=" " ><a class=""
						href="카테고리.html">카테고리</a></li>

					<li class=" "><a
						href="공지사항.html">공지사항</a></li>

					<li class=" " >
						<span class="search_wrap">
							<form id="searchForm" action="/main/search" method="get">

								<span class="form-group display-flex">
									
										<select class="form-control input-sm col-xs-2" name="type">
											<option value="N">강의명</option>
											<option value="D">강의 설명</option>
										</select>
						
									<span class="form-group ">
										<input type="text" name="keyword" class="form-control"
											placeholder="Key word">
									</span>
									 <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>

								</span>
							</form>
						</span>
					</li>



<%-- 
					<a href="index.html" class="dropdown-toggle  "
						data-toggle="dropdown" data-hover="dropdown" data-wow-delay="1.0s" style= "padding-left: 30px;">
						<sec:authorize access="isAuthenticated()">
						<sec:authentication property="principal.user.member_name"/>님 </a>
						</sec:authorize>
					<ul class="dropdown-menu navbar-nav">
						<li><a href="/myPage/myHome">마이페이지</a></li>
						<li><a href="index-3.html">장바구니</a></li>
						<li><a href="index-4.html">로그 아웃</a></li>
					</ul>


					<div class="right" data-wow-delay="1.0"></div>
 --%>

				</ul>


			</div>


		</div>
		<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->


<!-- 
	<script src="/resources/jjk/assets/js/modernizr-2.6.2.min.js"></script>

	<script src="/resources/jjk/assets/js/jquery-1.10.2.min.js"></script>
	<script src="/resources/jjk/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/jjk/assets/js/bootstrap-select.min.js"></script>
	<script src="/resources/jjk/assets/js/bootstrap-hover-dropdown.js"></script>

	<script src="/resources/jjk/assets/js/easypiechart.min.js"></script>
	<script src="/resources/jjk/assets/js/jquery.easypiechart.min.js"></script>

	<script src="/resources/jjk/assets/js/owl.carousel.min.js"></script>
	<script src="/resources/jjk/assets/js/wow.js"></script>

	<script src="/resources/jjk/assets/js/icheck.min.js"></script>
	<script src="/resources/jjk/assets/js/price-range.js"></script>

	<script src="/resources/jjk/assets/js/main.js"></script>
 -->

