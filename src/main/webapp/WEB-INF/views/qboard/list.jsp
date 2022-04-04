<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
	
</head>
<style>
	img{
		width : 1.2em
	}

	.btn{
		background-color:#FFA500; 
		border-color:#FFA500;
	}
		
	.paging{
		text-align : center;
	}
		
	.n-button{
		position : 
	}
</style>
<body>     
	
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
		 
   <br>
	<div class="container">  
		<table class="table">  
			<h1>문의사항</h1>   
			<br>
         	<thead> 
				<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col" style="text-align:center">작성일자</th>
				<th scope="col" style="text-align:center">조회수</th>
				</tr>
			</thead>
      </tr>
      <c:forEach items="${qlist}" var="board">
      <tr>
       	 <input type="hidden" name="reply_group" value="${board.reply_group}">
       	 <input type="hidden" name="board_enable" value="${board.board_enable}">
         <td>${board.board_id}</td>           
         <td>                 	
	        <c:if test="${board.board_enable=='N'}">
	            <img src="${pageContext.request.contextPath}/resources/img/lock.png"/>
	            <c:choose>
	                <c:when test="${board.member_id eq principal.user.member_id || principal.user.member_id == 'kbatc5' || principal.user.member_id == 'admin'}">	
	                	<c:forEach begin="1" end="${board.reply_indent}">[답변]</c:forEach>
	        			<a href="qcontent_view?board_id=${board.board_id}&reply_group=${board.reply_group}" style="text-decoration:none; color:black"><c:out value="${board.board_title}"/></a>	          
	                </c:when>
	                <c:otherwise>비밀글은 작성자와 크리에이터만 볼 수 있습니다.</c:otherwise>
	            </c:choose>
	       	</c:if>
	        <c:if test="${board.board_enable == 'Y'}" >
	        	<c:forEach begin="1" end="${board.reply_indent}">[답변]</c:forEach>
	        	<a href="qcontent_view?board_id=${board.board_id}&reply_group=${board.reply_group}" style="text-decoration:none; color:black">
	        	<c:out value="${board.board_title}"/></a>
	        </c:if>	
         	</td>
         <td>${board.member_id} </td>      
         <td style="text-align:center">${board.board_date}</td>
         <td style="text-align:center">${board.board_hit}</td>
      </tr>
      </c:forEach>
                   
   </table>  
   <tr>
      		<c:choose>         	
	                <c:when test="${principal.user.member_number != null}">	
	                	<td colspan="5"> <a href="qwrite_view"><button type="button" class="btn btn-dark">글작성</button></a> </td>           
	                </c:when>
	                <c:otherwise></c:otherwise>
	            </c:choose>
   </tr>  
      
   <div class="paging">	   
	   <c:if test="${pageMaker.pre}">
	         <a href="qlist${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
	   </c:if>
	
		<!-- 링크를 걸어준다 1-10페이지까지 페이지를 만들어주는것  -->
		<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
			<a href="qlist${pageMaker.makeQuery(idx)}" style="text-decoration:none; color:black">${idx}</a>
		</c:forEach>
		      
		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<a href="qlist${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
		</c:if> <br>
	</div>
</body>

	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>

</html>