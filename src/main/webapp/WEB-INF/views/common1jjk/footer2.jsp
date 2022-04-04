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
        <title> 공부어때 | Home page</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

     <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico"
	type="/resources/jjk/images/x-icon">
<link rel="icon" href="favicon.ico" type="/resources/jjk/images/x-icon">

<link rel="stylesheet" href="/resources/jjk/assets/css/normalize.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/fontello.css">
<link
	href="/resources/jjk/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="/resources/jjk/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link href="/resources/jjk/assets/css/animate.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet"
	href="/resources/jjk/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/resources/jjk/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/price-range.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/owl.carousel.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/owl.theme.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/owl.transitions.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/style.css">
<link rel="stylesheet" href="/resources/jjk/assets/css/responsive.css">

    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
      
        <!-- Footer area-->
        <div class="footer-area">

            <div class=" footer">
                <div class="container">
                    <div class="row">

                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>About us </h4>
                                <div class="footer-title-line"></div>

                                <img src="/resources/jjk/assets\img\공부어때.jpg" alt="" class="wow pulse" data-wow-delay="1s">
                                <p>If you don't buy Kbat, it will be a disaster. Buy Kbat right away. It's not a forced sale.</p>
                                <ul class="footer-adress">
                                    <li><i class="pe-7s-map-marker strong"> </i> 서울특별시 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;금천구 가산동 426-5 </li>
                                    <li><i class="pe-7s-mail strong"> </i> kbat@naver.com</li>
                                    <li><i class="pe-7s-call strong"> </i> 010-1234-5678</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Quick links </h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-menu">
                                    <li><a href="properties.html">카테고리</a>  </li> 
                                    <li><a href="#">공지사항</a>  </li> 
                                    <li><a href="<c:url value="/login" />">로그인 </a></li> 
                                    <li><a href="contact.html">content</a></li> 
                                    <li><a href="faq.html">E-mail</a>  </li> 
                                    <li><a href="faq.html">Team </a>  </li> 
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Last News</h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-blog">
                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="/resources/jjk/assets\img\그림1.jpg">
                                            </a>
                                            <span class="blg-date">2022.02.02</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">DB 설계도 앞에서 한컷 송승준, 김대민, 엄선화, 정진광 </p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="/resources/jjk/assets\img\그림2.jpg">
                                            </a>
                                            <span class="blg-date">2022.03.02</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">DB 설계 발표 한수현 </p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="/resources/jjk/assets\img\그림3.jpg">
                                            </a>
                                            <span class="blg-date">2022.03.27</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">장바구니 만드는 이소영</p>
                                        </div>
                                    </li> 


                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer news-letter">
                                <h4>Stay in touch</h4>
                                <div class="footer-title-line"></div>
                                <p>Hello, I'm Kbat. Kbat will help you develop yourself. I'm rooting for you who are passionate.</p>

                                <form>
                                    <div class="input-group">
                                        <input class="form-control" type="text" placeholder="E-mail ... ">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </form> 

                                <div class="social pull-right"> 
                                    <ul>
                                        <li><a class="wow fadeInUp animated" href="https://twitter.com/Kbat"><i class="fa fa-twitter"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://www.facebook.com/Kbat" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://plus.google.com/Kbat" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/Kbat" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/Kbat" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                    </ul> 
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>







            <div class="footer-copy text-center">
                <div class="container">
                    <div class="row">
                        <div class="pull-left">
                            <span> (C) <a href="http://www.KimaroTec.com">Kbat</a> , All rights reserved 2022  </span> 
                        </div> 
                        <div class="bottom-menu pull-right"> 
                            <ul> 
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">카테고리</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">공지사항</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">로그인</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Content</a></li>
                            </ul> 
                        </div>
                    </div>
                </div>
            </div>

        </div>

                                


         
     



        


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