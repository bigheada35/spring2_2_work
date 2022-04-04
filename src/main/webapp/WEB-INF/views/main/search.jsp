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
    <title>검색 결과</title>
    

   
    
  </head>
  <body>
  
    <header>


    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
   <jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
 

   </header>

<main role="main">



  <div class="album py-5 bg-light">
    <div class="container">
    
       
         <div class="row">
          <c:forEach items="${list}" var="prod" varStatus="status" >     
              <div class="col-md-3">
                <div class="card mb-3 shadow-sm">
                   <a href="/main/detail?product_id=${prod.product_id}">
                   <rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em" id="product_name"> &nbsp&nbsp${prod.product_name}</text></svg>
                  </a>
                  <div class="card-body">
                    <p class="card-text">${prod.product_description}</p>
                    <p id="product_price" class="card-text" id="product_price">가격 : <fmt:formatNumber value="${prod.product_price}" pattern="#,###" /> 원</p>
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