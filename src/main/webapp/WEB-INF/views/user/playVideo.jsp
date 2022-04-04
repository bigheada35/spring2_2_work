<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="/WEB-INF/include/header.jspf"%>
    <title>공부어때 동영상 강의 쇼핑몰</title>
    
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
	
	
  </head>
  <body>
    <header>
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
	</header>

<main role="main">

<!--   <section class="jumbotron text-center"> -->
<!--     <div class="container"> -->
<%--       <h1>${prod.video_name}</h1>
      <p class="lead text-muted">${prod.product_description}</p> --%>
      <p>
		<!-- controls loop muted style="width:100%"-->
		<video width="1600" height="900" controls autoplay style="width:100%"/>
		  	<source src="<c:url value="${prod.video_name}"/>" type="video/mp4">
		</video>
      </p>
<!--     </div> -->
<!--   </section> -->
  


</main>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/css/assets/dist/js/bootstrap.bundle.min.js"></script>

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>

</html>
