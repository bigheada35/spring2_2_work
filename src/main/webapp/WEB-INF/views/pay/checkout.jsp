<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/include/header.jspf"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>공부어때 동영상 강의 쇼핑몰</title>


<jsp:include
	page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<script type="text/javascript">
	var input_uid = $("#imp_merchant_uid").val();
	var input_name = "";
	var input_amount = "1";
	var input_buyer_email = "www.ikosmo.co.kr";
	var input_buyer_name = "12강의실1조_공부어때동영상쇼핑몰";
	var input_buyer_tel = "20210930-20220329";

	//버튼 클릭하면 실행
	function payment(data) {
		//IMP.init('가맹점 식별코드');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
		IMP.init('imp35667230');// sjsong 개인 가맹점 식별 코드//www.import.kr -> 회원가입 -> 관리자 콘솔 로그인 -> 시스템설정-> 내정보
		IMP
				.request_pay(
						{// param
							pg : "kakaopay.TC0ONETIME", //pg사명 or pg사명.CID (잘못 입력할 경우, 기본 PG사가 띄워짐)
							pay_method : "card", //지불 방법
							/* merchant_uid: "iamport_test_id4", //가맹점 주문번호 (아임포트를 사용하는 가맹점에서 중복되지 않은 임의의 문자열을 입력) */
							merchant_uid : input_uid,
							/* name: "도서3", //결제창에 노출될 상품명  */
							name : data,
							amount : input_amount, //금액 
							buyer_email : input_buyer_email,
							/* buyer_name : "홍길동", */
							buyer_name : input_buyer_name,
							/* buyer_tel : "01012341234" */
							buyer_tel : input_buyer_tel
						},
						function(rsp) { // callback
							if (rsp.success) {
								//alert("완료 -> imp_uid : "+rsp.imp_uid+" / merchant_uid(orderKey) : " +rsp.merchant_uid);
								window.location.href = '${pageContext.request.contextPath}/pay/checkout_import';
							} else {
								alert("실패 : 코드(" + rsp.error_code + ") / 메세지("
										+ rsp.error_msg + ")");
							}
						});
	}

	//문서가 준비되면 제일먼저 실행
	$(document)
			.ready(
					function() {
						$("#iamportPayment")
								.click(
										function() {
											product_name = document
													.getElementById("imp_product_name").innerHTML;
											payment(product_name
													.trim()
													.replace(
															/\r\n|\n|\r|^\s+|\s+$/gm,
															''));//버튼 클릭하면 호출
										});
					});
</script>


</head>
<body>
	<header>

		<jsp:include
			page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>

	</header>

	<main role="main">
		<c:set var="cartProductPriceTotal" value="${0}" />
		<c:set var="cartProductNameTotal" value="" />
		<c:set var="today" value="<%=new java.util.Date()%>" />

		<br>
		<!-- 수정한 부분 -->
		&nbsp;
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1 profiel-container">

					<form action="" method="">

						<div class="profiel-header">
							<h3>
								<p style="position: relative; left: 44%;">
									장바구니/Shopping cart</b>
							</h3>
							&nbsp;

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

									<c:forEach items="${products}" var="prod" varStatus="stat">
										<tr>
											<td class="cart_product"><img
												src="<c:url value="${prod.image_name}"/>"
												style="max-width: 100px; height: auto;" /></td>

											<td class="cart_description">
												<h4 style="position: relative; right: 20%; padding: 5%">${prod.product_name}</h4>

											</td>

											<td class="cart_price"
												style="position: relative; right: 4%; padding: 4%;"><fmt:formatNumber
													value="${prod.product_price}" pattern="#,###" />원</td>


											<td class="cart_delete"><a class="cart_quantity_delete"
												style="padding: 6%;"></a><a
												href="/main/checkout_delete?product_id=${prod.product_id}"><i
													class="fa fa-times" style="padding: 6%; margin-top: 24%;"></i></a></td>
										</tr>
										<c:set var="cartProductPriceTotal"
											value="${cartProductPriceTotal + prod.product_price}" />
										<c:set var="cartProductNameTotal"
											value="${stat.first ? '' : cartProductNameTotal} ${prod.product_name}" />
									</c:forEach>

								</table>
							</div>
						</div>




						&nbsp;
						<div class="row" style="position: relative;left: 29%;">
							<div class="col-sm-2"></div>
							<div class="col-sm-2">
								<h4>합계금액</h4>
							</div>
							<div class="col-sm-3">
								<h4 id="imp_price">
									<fmt:formatNumber value="${cartProductPriceTotal}"
										pattern="#,###" />
									원
								</h4>
							</div>
						</div>
						<div class="row" style="position: relative;left: 29%;" >
							<div class="col-sm-2" ></div>
							<div class="col-sm-2" >
								<h6>주문이름</h6>
							</div>
							<div class="col-sm-3" >
								<h6 id="imp_product_name">
									<c:out value="${cartProductNameTotal}"/>
									<fmt:formatDate type="both" dateStyle="long" timeStyle="short" value="${today}" />
								</h6>
							</div>
						</div>
		<br><br>
						<div class="row" style="padding-left: 14%;">

							<div class="col-sm-5" style="padding-bottom: 5rem;">
								<button id="iamportPayment" type="button"
									class="btn btn-warning" style="position: relative; left: 120%;">
									카카오페이</button>
							</div>
						</div>
	</main>
	<jsp:include
		page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>
</html>
