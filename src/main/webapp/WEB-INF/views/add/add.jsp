<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <title>유저 회원가입</title>
</head>

<body>

 <header>


 	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
 

	</header>


 <div class="property-area">
        <div class="container">
        	 <div class="main text" style="text-align: center; padding: 70px;">
                    <h1>원하는 회원가입 선택</h1>
             </div>
            <div class="row">
                <div class="col-lg-6 col-sm-12 col-md-12">

                    <img src="${pageContext.request.contextPath}/resources/assets/img/user.png" style="width: 60%; POSITION: RELATIVE;LEFT: 28%;">
                    <a href="/add/addFormAdmin"><button style="width: 200PX; height: 50px; margin: 33px; margin-left:213px; font-size: large;">
                    크리에이터</button></a>

                </div>

                <div class="col-lg-6 col-sm-12 col-md-12">

                    <img src="${pageContext.request.contextPath}/resources/assets/img/user.png" style="position: relative; left: 20%; width:60%;">
                     <a href="/add/addForm"><button style="width: 200PX;height: 50px;margin: 33px;margin-left: 180px;font-size: large; MARGIN-BOTTOM: 49%;">
                    회원</button></a>

                </div>

            </div>
        </div>
        </div>

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>
</body>
</html>