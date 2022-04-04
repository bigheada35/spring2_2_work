<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="/resources/assets/css/normalize.css">
<link rel="stylesheet" href="/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/assets/css/fontello.css">
<link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="/resources/assets/css/bootstrap-select.min.css"> 
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="/resources/assets/css/price-range.css">
<link rel="stylesheet" href="/resources/assets/css/owl.carousel.css">  
<link rel="stylesheet" href="/resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="/resources/assets/css/owl.transitions.css">
<link rel="stylesheet" href="/resources/assets/css/lightslider.min.css">
<link rel="stylesheet" href="/resources/assets/css/style.css">
<link rel="stylesheet" href="/resources/assets/css/responsive.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>공부어때 동영상 강의 쇼핑몰</title> 
</head>
<style>
    img{
        width : 100%;
    }
    
    .paging{
		text-align : center;
	}	
</style>
<body>                                     
<div class="container">
    <section class="ftco-section">
    	<div class="container">
    		<div class="row" style="height:80%; margin-top:50px;">
    			<!-- <h4 class="s-property-title" style="margin-top:50px">상품 설명영상</h4>  -->
    			<br><br>
    			<div class="col-lg-6 ftco-animate" style="height:435px; ">    			
    				<video autoplay controls style="width:100%; height: 80%;"/>
	         		    <source src="<c:url value="${prod.video_name}"/>" type="video/mp4" >
		    	    </video>
                </div>
    			<div class="col-lg-6 product-details ftco-animate" style="height: 343px;" >
    				<h1 class="property-title" style="font-size:calc(2rem + 1.5vw); font-family: 'Open Sans', sans-serif;">${prod.product_name}</h1>
    				<br>
    				<div class="single-property-header">                                                                                    
						<span class="property-price"><fmt:formatNumber type="currency" value="${prod.product_price}" /></span>
                     </div>    					               
    				<br>
    				<p>${prod.product_description}</p>
          	        <br><br>
          	        <p>  
						<a href="/main/cartorder?product_id=${prod.product_id}" class="btn btn-primary my-2" style="background-color:#FFA500; border-color:#FFA500;">장바구니 담기</a>
		              	<a href="/main/checkout?product_id=${prod.product_id}" class="btn btn-primary my-2" style="background-color:#FFA500; border-color:#FFA500;">구매하기</a>
		              	<%-- <a href="/main/playVideo?product_id=${prod.product_id}" class="btn btn-primary my-2">Play</a> --%>		                     	        
          	        </p>
    			</div>
    		</div>
    	</div>
    </section>
    <h4 class="s-property-title" >상품 상세정보</h4>
    <br>
    <div class="info">
        <img src="/resources/img/${prod.product_name}-1.png" >
    </div>
    <div class="info">
        <img src="/resources/img/${prod.product_name}-2.png" >
    </div>
    
    
</div> 		
	<div class="container">  
		<table class="table">  			
			<h4 class="s-property-title" style="margin-top:50px">후기 게시판</h4>
			<thead> 
				<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col" style="text-align:center">작성자</th>
				<th scope="col" style="text-align:center">작성일자</th>
				<th scope="col" style="text-align:center">별점</th>
				<th scope="col" style="text-align:center">조회수</th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach items="${rlist}" var="board">
					<input type="hidden" name="rating_check" value="${board.rating_check}">
	      			<input type="hidden" name="review_id" value="${board.review_id}">	
	      			<input type="hidden" name="product_id" value="${board.product_id}">	      
					<tr>
						<td>${board.board_id}</td>
						<td>
						<a href="rcontent_view?board_id=${board.board_id}&review_id=${board.review_id}" style="text-decoration:none; color:black">${board.board_title}</a></td>
						<td style="text-align:center">${board.member_id}</td>
				        <td style="text-align:center">${board.board_date}</td>
				        <td style="text-align:center">
							<img src="<c:url value="/resources/img/${board.rating_check}.png"/>" style="width:100px; text-align:center;"/>
						</td>
				        <td style="text-align:center">${board.board_hit}</td>
      				</tr>
				</c:forEach>       
			</tbody>
		<br>
		</table>

		<div class="paging">		
			<c:if test="${pageMaker.pre}">
				<a href="detail?product_id=${prod.product_id}${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
			</c:if>		   
			<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<a href="detail?product_id=${prod.product_id}" style="text-decoration:none; color:black">${idx}&nbsp;&nbsp;</a>
			</c:forEach>			      
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<a href="detail?product_id=${prod.product_id}${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
			</c:if> 
		</div>			
	<div>
	</div>
	</div>
	<br><br><br>
	<script src="/resources/assets/js/vendor/modernizr-2.6.2.min.js"></script>
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
        <script type="/resources/text/javascript" src="/resources/assets/js/lightslider.min.js"></script>
        <script src="/resources/assets/js/main.js"></script>

        <script>
                            $(document).ready(function () {

                                $('#image-gallery').lightSlider({
                                    gallery: true,
                                    item: 1,
                                    thumbItem: 9,
                                    slideMargin: 0,
                                    speed: 500,
                                    auto: true,
                                    loop: true,
                                    onSliderLoad: function () {
                                        $('#image-gallery').removeClass('cS-hidden');
                                    }
                                });
                            });
        </script>

</body>
</html>
