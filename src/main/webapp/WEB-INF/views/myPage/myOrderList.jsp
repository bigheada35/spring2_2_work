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

<!-- 상품 정렬 -->
<script type="text/javascript">
	// 출처 : http://tonks.tistory.com/79 		
	/* sortingNumber() : 숫자인 실수만으로 되어있을 때, 적용될 함수 */
	function sortingNumber(a, b) {
		if (typeof a == "number" && typeof b == "number")
			return a - b;

		// 천단위 쉼표와 공백문자만 삭제하기.  
		var a = (a + "").replace(/[,\s\xA0]+/g, "", '원');
		var b = (b + "").replace(/[,\s\xA0]+/g, "", '원');

		var numA = parseFloat(a) + "";
		var numB = parseFloat(b) + "";

		if (numA == "NaN" || numB == "NaN" || a != numA || b != numB)
			return false;

		return parseFloat(a) - parseFloat(b);
	}

	/* changeForSorting() : 문자열 바꾸기. */
	function changeForSorting(first, second) {
		// 문자열의 복사본 만들기. 
		var a = first.toString().replace(/[\s\xA0]+/g, " ");
		var b = second.toString().replace(/[\s\xA0]+/g, " ");

		var change = {
			first : a,
			second : b
		};

		if (a.search(/\d/) < 0 || b.search(/\d/) < 0 || a.length == 0
				|| b.length == 0)
			return change;

		var regExp = /(\d),(\d)/g; // 천단위 쉼표를 찾기 위한 정규식. 

		a = a.replace(regExp, "$1" + "$2");
		b = b.replace(regExp, "$1" + "$2");

		var unit = 0;
		var aNb = a + " " + b;
		var numbers = aNb.match(/\d+/g); // 문자열에 들어있는 숫자 찾기 

		for (var x = 0; x < numbers.length; x++) {
			var length = numbers[x].length;
			if (unit < length)
				unit = length;
		}

		var addZero = function(string) { // 숫자들의 단위 맞추기 
			var match = string.match(/^0+/);
			if (string.length == unit)
				return (match == null) ? string : match + string;

			var zero = "0";

			for (var x = string.length; x < unit; x++)
				string = zero + string;

			return (match == null) ? string : match + string;
		};

		change.first = a.replace(/\d+/g, addZero);
		change.second = b.replace(/\d+/g, addZero);

		return change;
	}

	/* byLocale() */
	function byLocale() {
		var compare = function(a, b) {
			var sorting = sortingNumber(a, b);
			if (typeof sorting == "number")
				return sorting;

			var change = changeForSorting(a, b);
			var a = change.first;
			var b = change.second;

			return a.localeCompare(b);
		};

		var ascendingOrder = function(a, b) {
			return compare(a, b);
		};
		var descendingOrder = function(a, b) {
			return compare(b, a);
		};

		return {
			ascending : ascendingOrder,
			descending : descendingOrder
		};
	}

	/* replacement() */

	function replacement(parent) {
		var tagName = parent.tagName.toLowerCase();
		if (tagName == "table")
			parent = parent.tBodies[0];

		tagName = parent.tagName.toLowerCase();
		if (tagName == "tbody")
			var children = parent.rows;
		else
			var children = parent.getElementsByTagName("li");

		var replace = {
			order : byLocale(),
			index : false,
			array : function() {
				var array = [];
				for (var x = 0; x < children.length; x++)
					array[x] = children[x];
				return array;
			}(),
			checkIndex : function(index) {
				if (index)
					this.index = parseInt(index, 10);
				var tagName = parent.tagName.toLowerCase();
				if (tagName == "tbody" && !index)
					this.index = 0;
			},
			getText : function(child) {
				if (this.index)
					child = child.cells[this.index];
				return getTextByClone(child);
			},
			setChildren : function() {
				var array = this.array;
				while (parent.hasChildNodes())
					parent.removeChild(parent.firstChild);
				for (var x = 0; x < array.length; x++)
					parent.appendChild(array[x]);
			},
			ascending : function(index) { // 오름차순 
				this.checkIndex(index);
				var _self = this;
				var order = this.order;
				var ascending = function(a, b) {
					var a = _self.getText(a);
					var b = _self.getText(b);
					return order.ascending(a, b);
				};
				this.array.sort(ascending);
				this.setChildren();
			},
			descending : function(index) { // 내림차순
				this.checkIndex(index);
				var _self = this;
				var order = this.order;
				var descending = function(a, b) {
					var a = _self.getText(a);
					var b = _self.getText(b);
					return order.descending(a, b);
				};
				this.array.sort(descending);
				this.setChildren();
			}
		};
		return replace;
	}

	function getTextByClone(tag) {
		var clone = tag.cloneNode(true); // 태그의 복사본 만들기. 
		var br = clone.getElementsByTagName("br");
		while (br[0]) {
			var blank = document.createTextNode(" ");
			clone.parentNode.insertBefore(blank, br[0]);
			clone.removeChild(br[0]);
		}
		var isBlock = function(tag) {
			var display = "";
			if (window.getComputedStyle)
				display = window.getComputedStyle(tag, "")["display"];
			else
				display = tag.currentStyle["display"];
			return (display == "block") ? true : false;
		};
		var children = clone.getElementsByTagName("*");
		for (var x = 0; x < children.length; x++) {
			var child = children[x];
			if (!("value" in child) && isBlock(child))
				child.innerHTML = child.innerHTML + " ";
		}
		var textContent = ("textContent" in clone) ? clone.textContent
				: clone.innerText;
		return textContent;
	}
</script>
</head>

<body>
<div style="overflow: hidden;" class="container">
	<!--header -->
		<jsp:include page="${pageContext.request.contextPath }/WEB-INF/views/common/header.jsp"></jsp:include>
		<div class="container">
			<div class="row">

				<!-- 왼쪽 사이드 메뉴 -->
				<div class="container">
					<div class="row">
						<div class="content-area blog-page padding-top-40"
							style="background-color: #FCFCFC; padding-bottom: 55px;">


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
			 <div class="blog-lst col-md-9">
                        <section class="post">
                            <div class="text-center padding-b-50">
				<div class="title-line wow fadeInRight animated"></div>
						<h3>주문내역 조회</h3>
					</div>

					
								<div class="row">
									<table id="product" class="table">
										<thead>
											<tr class="table-secondary">
												<th colspan="2" scope="row"
													style="text-align: center; padding-left: 0px; padding-right: 15px;">
													<h4>상품정보</h4> <br>
												</th>
												<th
													style="text-align: center; padding-left: 0px; padding-right: 25px;">
													<h4>주문일</h4>
													<button class="btn btn-secondary btn-sm"
														onclick="sortTD ( 1 )"
														style="padding: 0px 5px 0px 5px; margin: 0px;">▲</button>
													<button class="btn btn-secondary btn-sm"
														onclick="reverseTD ( 1 )"
														style="padding: 0px 5px 0px 5px; margin: 0px;">▼</button>
												</th>
												<th
													style="overflow: auto; text-align: center; padding-left: 0px; padding-right: 0px;">
													<h4>주문번호</h4>
													<button class="btn btn-secondary btn-sm"
														onclick="sortTD ( 2 )"
														style="padding: 0px 5px 0px 5px; margin: 0px;">▲</button>
													<button class="btn btn-secondary btn-sm"
														onclick="reverseTD ( 2 )"
														style="padding: 0px 5px 0px 5px; margin: 0px;">▼</button>
												</th>
												<th
													style="text-align: center; padding-left: 15px; padding-right: 15px;">
													<h4>금액</h4>
													<button class="btn btn-secondary btn-sm"
														onclick="sortTD ( 3 )"
														style="padding: 0px 5px 0px 5px; margin: 0px;">▲</button>
													<button class="btn btn-secondary btn-sm"
														onclick="reverseTD ( 3 )"
														style="padding: 0px 5px 0px 5px; margin: 0px;">▼</button>
												</th>

												<th
													style="text-align: center; padding-left: 15px; padding-right: 15px;">
										
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${order_list}" var="order"
												varStatus="status">
												<tr class="table-secondary">
													<td
														style="text-align: left; padding-left: 0px; padding-right: 0px;">

														<a href="/main/playVideo?product_id=${order.product_id}"
														><img
															src="<c:url value="${order.image_name}"/>"
															style="max-width: 100px;" /></a>
													</td>
													<td
														style="text-align: left; padding-left: 0px; padding-right: 0px;">
														<h4 style="padding-bottom: 5px;">${order.product_name}</h4>
														
														 <%-- 주문일(정렬대상) --%>
													<td style="text-align: left; padding: 60px 0px 0px 0px;">
														<h6>${order.orders_date}</h6>
													</td>
													<%-- 주문번호(정렬대상) --%>
													<td style="text-align: center; padding: 60px 0px 0px 0px;">
														<h6>${order.orders_id}</h6>
													</td>
													<%-- 주문금액(정렬대상) --%>
													<td style="text-align: center; padding: 60px 0px 0px 0px;">
														<h6><fmt:formatNumber type="currency" value="${order.orders_price}"/>원</h6>
													</td>
												  <td>
                                 <a href="/main/rwrite_view?product_id=${order.product_id}&order_detail_id=${order.order_detail_id}">구매후기</a>
                              </td>
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
<script type="text/javascript">
				var myTable = document.getElementById("product");
				var replace = replacement(myTable);
				function sortTD(index) {
					replace.ascending(index);
				}
				function reverseTD(index) {
					replace.descending(index);
				}
				
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

</body>
</html>
