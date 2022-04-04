<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>



<!-- fixed-top -->
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
	<div class="container-xl">
		<a class="navbar-brand" href="/main/main">공부어때</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample07XL" aria-controls="navbarsExample07XL"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample07XL">
			<ul class="navbar-nav mr-auto">

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="dropdown07XL"
					data-toggle="dropdown" aria-expanded="false">카테고리</a>
					<div class="dropdown-menu" aria-labelledby="dropdown07XL">
						<a class="dropdown-item" href="#">취미</a> <a class="dropdown-item"
							href="#">가드닝</a> <a class="dropdown-item" href="#">고전 읽기</a> <a
							class="dropdown-item" href="#">금융, 재테크</a> <a
							class="dropdown-item" href="#">주식</a> <a class="dropdown-item"
							href="#">부동산</a> <a class="dropdown-item" href="#">음악</a>
					</div></li>


				<li class="nav-item active"><a class="nav-link" href="/nlist">공지사항
						<span class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item active"><a class="nav-link" href="/qlist">문의사항
						<span class="sr-only">(current)</span>
				</a></li>

			</ul>
			<form class="form-inline my-2 my-md-0" action="/main/search"
				method="get">
				<div class="search_input">
					<select name="type">
						<option value="N">강의명</option>
						<option value="D">강의 설명</option>

					</select> <input type="text" name="keyword">
					<button class='btn' style="background-color: #FFA500;">검색</button>
				</div>


			</form>


			<sec:authorize access="isAnonymous()">
				
				<a href="/login" style="color: gray; position: relative; left: 2%;"
					class="login-panel">Login</a>
									
            
            		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            	  <a href="/add/add" style="color:gray;" class="login-panel">Sign Up</a>
            									
					
				
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<c:choose>
					<c:when
						test="${principal.user.member_id != null && principal.user.member_id == 'kbatc5'}">

						<a href="#" style="color: gray;"></a>
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown07XL"
								data-toggle="dropdown" aria-expanded="false"
								style="color: inherit;"><sec:authentication
									property="principal.user.member_id" />님</a>
							<div class="dropdown-menu" aria-labelledby="dropdown07XL">


								<a class="dropdown-item" href="/statistics/income">매출 통계</a> <a
									class="dropdown-item" href="/upload/list2">물건등록삭제</a> <a
									class="dropdown-item" href="/logout">logout</a>

							</div>
					</c:when>
					<c:otherwise>
						<a href="#" style="color: gray;"></a>
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown07XL"
								data-toggle="dropdown" aria-expanded="false"
								style="color: inherit;"><sec:authentication
									property="principal.user.member_id" />님</a>
							<div class="dropdown-menu" aria-labelledby="dropdown07XL">
								<a class="dropdown-item" href="/main/cartorder"">장바구니</a> <a
									class="dropdown-item" href="/myPage/myHome">마이페이지</a> <a
									class="dropdown-item" href="/logout">logout</a>

							</div>
					</c:otherwise>
				</c:choose>
			</sec:authorize>

		</div>
	</div>
</nav>
