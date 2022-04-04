<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>판매자 마이페이지</title>


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

<!-- google charts -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js">
$(document).ready(function() {
		
		//var ctx = $("#chart-daily-sales");
		var labels = [];
		var daySales = ${dailySales};
		var lastDay = getLastDay(${year}, ${month});
		
		google.load('visualization', '1.1', {packages: ['line']});
		google.setOnLoadCallback(dailyChart);
		
		function dailyChart() {
			var data = new google.visualization.DataTable();
			
			data.addColumn('number', '날짜');
			data.addColumn('number', '매출액');
			
			for(var i = 0; i <= lastDay +1; i++) {
				data.addRow([i+1, daySales[i]]);
				console.log(data);
			}
			console.log(data);
			var option = {
					colors: ['navy']
			};
			
			var chart = new google.charts.Line(document.getElementById('chart-daily-sales'));
			chart.draw(data, option);
		}
		
		function getLastDay(year, month) {
			month -= 1;
			return 32 - new Date(year, month, 32).getDate();
		}
		
	});
}
</script>
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
	<div class="blog-lst col-md-9 p0">
								<section id="id-100" class="post single">
								
				<span
					style="border-left: 1px solid rgba(0, 0, 0, .1); width: 922px;">
					<h3
						style="margin-top: 5px; margin-left: 15px; padding-bottom: 2px;">
						<strong style="margin: 10px;">매출조회</strong>
					</h3>
					<hr />
					<h4 style="margin-left: 16px;">일간 매출통계</h4> <jsp:include
						page="${pageContext.request.contextPath }/WEB-INF/views/chart/dailyChart.jsp"></jsp:include>
					<hr />
					<h4 style="margin-left: 16px;">주간 매출통계</h4> <jsp:include
						page="${pageContext.request.contextPath }/WEB-INF/views/chart/weeklyChart.jsp"></jsp:include>
					<hr />
					<h4 style="margin-left: 16px;">월간 매출통계</h4> <jsp:include
						page="${pageContext.request.contextPath }/WEB-INF/views/chart/monthChart.jsp"></jsp:include>
					<hr />
					<h4 style="margin-left: 16px;">연간 매출통계</h4> <jsp:include
						page="${pageContext.request.contextPath }/WEB-INF/views/chart/yearChart.jsp"></jsp:include>
					<hr />

				</span>
				</section>
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
</html>