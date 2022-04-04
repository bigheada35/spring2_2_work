<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="/WEB-INF/include/header.jspf"%>
    <title>공부어때 동영상 강의 쇼핑몰</title>
    

      
    
  </head>
  <body>
  
    <header>


 	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
 

	</header>

<main role="main">


  <iframe width="100%" height="700px" src="https://www.youtube.com/embed/-wW-o_7Je9I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>			
 

  <div class="album py-5 bg-light">
    <div class="container">
    
		
	      <div class="row">
	    	<c:forEach items="${products}" var="prod" varStatus="status" >  	
		        <div class="col-md-3">
		          <div class="card mb-3 shadow-sm">
		          	<a href="/main/detail?product_id=${prod.product_id}">
		            	<img class="bd-placeholder-img card-img-top" src="<c:url value="${prod.image_name}"/>" style="width:200;height:100;" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%"  fill="#eceeef" dy=".3em" id="product_name"> &nbsp&nbsp${prod.product_name}</text></svg>
		            </a>
		            <div class="card-body">
		              <p class="card-text">${prod.product_description}</p>
		              <p id="product_price" class="card-text" id="product_price" style="color:inherit">가격 : <fmt:formatNumber value="${prod.product_price}" pattern="#,###" /> 원</p>
		            </div>
		          </div>
		        </div>
		  
			</c:forEach>		   
		   </div>
      </div>
    </div>
  </div>


</main>


 
    
</body>
<br/>

	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>
      
</html>
