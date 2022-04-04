<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <header>


 	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
 

        <!-- register-area -->
        <div class="register-area" style="float: none; margin:100 auto;">

            <div class="container">
                <div class="row"style="padding-top:170px;padding-bottom: 170px;">
                    <div class="col-md-5" style="float: none; margin:0 auto;">

                        <div class="col-md-12 col-xs-12 register-blocks">
                            <div class="col-md-12 col-xs-12 login-blocks">
                                <h2>로그인
                                </h2>
                                <form action="/login" method="post">
                                    <div class="form-group">
                                        <label for="name">아이디</label>
                                        <input type="text" class="form-control" id="username" name="username">
                                    </div>
                                    <div class="form-group">
                                        <label for="password">비밀번호</label>
                                        <input type="password" class="form-control" id="password" name="password">
                                    </div>
                                   
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="w-60 btn btn-md btn-warning">
                                            로그인</button>

                                    </div>

                                    <br>

                                    <div class="soscial"style="text-align:-webkit-center;">
                                        <p>소셜 로그인</p>
                                        	

                                    </div>

                                </form>



                                 <button class="social_login" style="font-size: x-large;">
                                 		<a href="/oauth2/authorization/kakao" style="text-decoration: none;">
                                     		<img src="${pageContext.request.contextPath}/resources/assets/img/social_big/kakao.png" alt="">
                                     			&nbsp;kakao
                                     		</img>
                                     	</a>
                                 </button>
                                        
											
                                 <button class="social_login" style="font-size: x-large;">
                                 		<a href="/oauth2/authorization/naver" style="text-decoration: none;">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/social_big/naver.png" alt="">
                                             &nbsp;naver
                                             </img>
                                        </a>      
                                 </button>

                                 <button class="social_login" style="font-size: x-large;">
                                 		<a href="/oauth2/authorization/google" style="text-decoration: none;">
                                        	<img src="${pageContext.request.contextPath}/resources/assets/img/social_big/google.jpg" alt="">
                                            &nbsp;google
                                            </img>
                                        </a>    
                                 </button>
                                        


                            </div>
                        </div>

                    </div>

                </div>
            </div>

        </div>

</body>

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>
</html>