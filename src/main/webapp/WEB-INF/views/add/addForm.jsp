<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <title>유저 회원가입</title>
   
   <style>

            .input-form {
                max-width: 480px;
                margin-top: 80px;
                padding: 32px;
                background: #fff;
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                border-radius: 10px;
                -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
            }
   </style>
</head>

<body>

 <header>


 	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
 

	</header>

<!-- property area -->
        <div class="property-area" style="float: none; margin:100 auto;">
            <div class="container">
                <div class="input-form-backgroud row">
                    <div class="input-form col-md-6 mx-auto" style="float: none; margin:0 auto;margin-bottom: 30px;">
                        <h4 class="mb-4">회원가입</h4>
                        <br>
                        <c:url value="/add/addUser" var="addUserUrl"/>
                        <form class="member_form" name="frmMember" action="${addUserUrl}" method="POST" id="frmMember">

                            <label for="member_id">아이디</label>
                            <div class="row">
                                <div class="col-md-8 mb-3">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="member_id"
                                        name="member_id"
                                        placeholder=""
                                        value=""
                                        required="required"/></div>
                                <div class="col-md-4 mb-3">
                                    <input type="button" id="idCheck" style="height:40px; width:150px;background-color:#FFA500;" value="중복확인">
                                </div>
                              </div>

                                 <span id="idRegErr" class="help-block">영문+숫자 6자 이상.</span>
         						 <span class="glyphicon glyphicon-ok form-control-feedback"></span>

                            

                            <div class="mb-3">
                                <label for=password>비밀번호</label>
                                <input
                                    type="password"
                                    class="form-control"
                                    id="password"
                                    name="password"
                                    placeholder=""
                                    value=""
                                    required="required"/>
                                <span id="pwdRegErr" class="help-block">영문+숫자+특수문자 포함 10자 이상.</span>
         						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>

                            <div class="mb-3">
                                <label for="rePassword">비밀번호 확인</label>
                                <input
                                    type="password"
                                    class="form-control"
                                    id="rePassword"
                                    name="rePassword"
                                    placeholder=""
                                    value=""
                                    required="required"/>
                                <span id="rePwdErr" class="help-block">비밀번호와 일치하지 않습니다. 다시 입력해 주세요.</span>
                				<span class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>
                            
                              <div class="mb-3">
                                <label for="member_name">이름</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="member_name"
                                    name="member_name"
                                    placeholder=""
                                    value=""
                                    required="required"/>
                                <span id="nameRegErr" class="help-block">성명을 입력해주세요.</span>
         						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>
                            
                            <div class="mb-3">
                                <label for="member_phone">연락처(-제외)</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="member_phone"
                                    name="member_phone"
                                    placeholder="01082825353"
                                    required="required"/>
                                <span id="phoneRegErr" class="help-block">-제외 숫자만 입력해주세요.</span>
         						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>
                            
                            <label for="member_email">이메일</label>
                            <div class="row">
                                <div class="col-md-8 mb-3">
    
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="member_email"
                                        name="member_email"
                                        placeholder="you@naver.com"
                                        value=""
                                        required="required"/></div>
                                <div class="col-md-4 mb-3">
                                    <select style="width:160px; height:40px" name="selectEmail" id="selectEmail"> 
        									<option value="1"selected>직접입력</option>
        									<option value="naver.com">naver.com</option>
        									<option value="hanmail.net">hanmail.net</option>
        									<option value="gmail.com">gmail.com</option> 
       										 <option value="daum.net">daum.net</option></select>
                                </div>
                                 </div>
    
                                <span id="emailErr" class="help-block">올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
         						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
    
                           
                         
                            <div class="mb-3">
                                <label for="member_address">주소</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="member_address"
                                    name="member_address"
                                    placeholder="서울특별시 강남구"
                                    required="required"/>
                                
                            </div>
                            
                             <div class="mb-3">
                                <label for="member_company">회사</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="member_company"
                                    name="member_company"
                                    placeholder="서울특별시 강남구"
                                    required="required"/>
                               
                            </div>

                            <br>

                            <div class="mb-4"></div>
                            <button class="btn btn-warning btn-lg btn-block" type="submit">가입하기</button>
                        </form>
                    </div>
                </div>
            </div>
		</div>
		

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>

			<script src="${pageContext.request.contextPath}/resources/assets/js/modernizr-2.6.2.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.10.2.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-select.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-hover-dropdown.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/easypiechart.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easypiechart.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/wow.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/icheck.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/price-range.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.validate.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/wizard.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

</body>

<script>
  	
 // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
      'use strict';

      window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');

        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
          form.addEventListener('submit', function(event) {
            if (form.checkValidity() === false) {
              event.preventDefault();
              event.stopPropagation();
            }
            form.classList.add('was-validated');
          }, false);
        });
      }, false);
    })();
 
    $(document).ready(function(){
        $('.main i').on('click',function(){
            $('input').toggleClass('active');
            if($('input').hasClass('active')){
                $(this).attr('class',"fa fa-eye-slash fa-lg")
                .prev('input').attr('type',"text");
            }else{
                $(this).attr('class',"fa fa-eye fa-lg")
                .prev('input').attr('type','password');
            }
        });
    });
    
    // 성공 상태로 바꾸는 함수
    function successState(sel){
        $(sel)
        .parent()
        .removeClass("has-error")
        .addClass("has-success")
        .find(".glyphicon")
        .removeClass("glyphicon-remove")
        .addClass("glyphicon-ok")
        .show();
 
        $("#frmMember button[type=submit]")
                    .removeAttr("disabled");
    };
    // 에러 상태로 바꾸는 함수
    function errorState(sel){
        $(sel)
        .parent()
        .removeClass("has-success")
        .addClass("has-error")
        .find(".glyphicon")
        .removeClass("glyphicon-ok")
        .addClass("glyphicon-remove")
        .show();
 
        $("#frmMember button[type=submit]")
                    .attr("disabled","disabled");
    };
    
    // 아이디 중복 체크
    
let idCheck = 0;

$(document).ready(function(){
	
	$("#idCheck").click(function(event) {
		
        event.preventDefault();
        event.stopPropagation();
        
		let memberId = $("#member_id").val();
		
		let data = {
			member_id : memberId
		};
		
		console.log(JSON.stringify(data));
		
		$.ajax({
			type: "POST",
			url : "${pageContext.request.contextPath}/add/idCheck",
			cache : false,
			contentType:"application/json; charset='UTF-8'",
			data : JSON.stringify(data),
			success : function(jsonData){
				if(jsonData.idCount > 0){
					alert("아이디가 존재합니다! 다른 아이디를 입력해주세요");
					$("#member_id").focus();
					$("#frmMember button[type=submit]")
                    .attr("disabled","disabled");
					
				}
				else{
					alert("사용가능한 아이디입니다.");
					$("#password").focus();
					idCheck = 1;
				}
			},
			error : function(e){
				console.log(e);
				alert("error : " , e);
			}

		}) //end ajax
		
	}); //end #idCheck.click();
	
	
}); //end ready()

//아이디 정규식 부분
$("#member_id").keyup(function(){
    var id=$(this).val();
    // 아이디 검증할 정규 표현식
    var reg=/^(?=.*\d{1,50})[a-z]+[a-z0-9]{5,13}$/; 
    if(reg.test(id)){//정규표현식을 통과 한다면
                $("#idRegErr").hide();
                successState("#member_id");
    }else{//정규표현식을 통과하지 못하면
                $("#idRegErr").show();
                errorState("#member_id");
    }
});

//연락처 정규식 
$("#member_phone").keyup(function(){
    var phone=$(this).val();
    // 연락처 검증할 정규 표현식
    var reg=/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
    if(reg.test(phone)){//정규표현식을 통과 한다면
    	 		$("#phoneRegErr").hide();
                successState("#member_phone");
    
    }else{//정규표현식을 통과하지 못하면
    			$("#phoneRegErr").show();
                errorState("#member_phone");
    }
});
    
  //이메일 입력방식 선택 
    $('#selectEmail').change(function(){ 
    	$("#selectEmail option:selected").each(function () { 
    		if($(this).val()== '1'){ //직접입력일 경우 
    			$("#member_email").val(''); //값 초기화 
    			$("#member_email").attr("disabled",false); //활성화 
    			}else{ //직접입력이 아닐경우 
    				$("#member_email").val("@"+$(this).text()); //선택값 입력 
    				$("#member_email").attr("disabled",false); //비활성화 => 활성화로 변경
    				} 
    		}); 
    	}); 
  
    // 이메일 검증할 정규 표현식
    $("#member_email").keyup(function(){
        var email=$(this).val();
        var reg=/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        if(reg.test(email)){//정규표현식을 통과 한다면
                    $("#emailErr").hide();
                    successState("#member_email");
        }else{//정규표현식을 통과하지 못하면
                    $("#emailErr").show();
                    errorState("#member_email");
        }
    });
    
  //비밀번호 코드
    $("#password").keyup(function(){
        var pwd=$(this).val();
        // 비밀번호 검증할 정규 표현식
        var reg=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{10,}$/;
        if(reg.test(pwd)){//정규표현식을 통과 한다면
                    $("#pwdRegErr").hide();
                    successState("#password");
        }else{//정규표현식을 통과하지 못하면
                    $("#pwdRegErr").show();
                    errorState("#password");
        }
    });
    $("#rePassword").keyup(function(){
        var rePassword=$(this).val();
        var password=$("#password").val();
        // 비밀번호 같은지 확인
        if(rePassword==password){//비밀번호 같다면
            $("#rePwdErr").hide();
            successState("#rePassword");
        }else{//비밀번호 다르다면
            $("#rePwdErr").show();
            errorState("#rePassword");
        }
    });
    
    //이름 정규식
    $("#member_name").keyup(function(){
        var name=$(this).val();
        //  이름 검증할 정규 표현식
        var reg=/[ㄱ-힣]{2,5}/;
        if(reg.test(name)){//정규표현식을 통과 한다면
                    $("#nameRegErr").hide();
                    successState("#member_name");
        }else{//정규표현식을 통과하지 못하면
                    $("#nameRegErr").show();
                    errorState("#member_name");
        }
    });
    
    
    </script>

</html>