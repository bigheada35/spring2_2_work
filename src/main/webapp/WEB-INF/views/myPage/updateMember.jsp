<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>

<html>
    <script src="http://code.jquery.com/jquery-latest.js"></script> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>회원정보수정</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta
            name="keyword"
            content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link
            href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
            rel='stylesheet'
            type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontello.css">
        <link
            href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
            rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-select.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/wizard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">

        <style>

            .input-form {
                max-width: 680px;
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

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->
			
		<!--header -->
		<jsp:include
			page="${pageContext.request.contextPath }/WEB-INF/views/common/header.jsp"></jsp:include>
			

        <!-- property area -->
        <div class="property-area" style="float: none; margin:100 auto;">
            <div class="container">
                <div class="input-form-backgroud row">
                    <div class="input-form col-md-12 mx-auto" style="float: none; margin:0 auto;">
                        <h4 class="mb-4">회원정보수정</h4>
                        <br>
                        <form class="validation-form" name="frmMember" action="/myPage/updateMember/insert" method="POST" id="frmMember" novalidate="novalidate">

                            <label for="member_id">아이디</label>
                            <div class="row">
                                <div class="col-md-8 mb-3">
                                    <input
                                        type="hidden"
                                        class="form-control"
                                        id="member_id"
                                        name="member_id"
                                        placeholder="<sec:authentication property="principal.user.member_id" />"
                                        value=""
                                        required="required"/></div>
                           
                              </div>

                          	<h4><sec:authentication property="principal.user.member_id" /></h4>

                            

                            <div class="mb-3">
                                <label for=password>비밀번호</label>
                                <input
                                    type="password"
                                    class="form-control"
                                    id="password"
                                    name="password"
                                    placeholder="영문+숫자+특수문자 포함 10자 이상"
                                    value=""
                                    required="required"/>
                               
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
                                    placeholder="<sec:authentication property="principal.user.member_name" />"
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
                                    placeholder="<sec:authentication property="principal.user.member_phone" />"
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
                                        placeholder="<sec:authentication property="principal.user.member_email" />"
                                        value=""
                                        required="required"/></div>
                                <div class="col-md-4 mb-3">
                                    <select style="width:180px; height:45px" name="selectEmail" id="selectEmail"> 
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
                                    placeholder="<sec:authentication property="principal.user.member_address" />"
                                    required="required"/>
                                
                            </div>
                            
                             <div class="mb-3">
                                <label for="member_company">회사</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="member_company"
                                    name="member_company"
                                    placeholder="	<sec:authentication property="principal.user.member_company" />"
                                    required="required"/>
                               
                            </div>

                            <br>

                            <div class="mb-4"></div>
                            <button id="update-btn" type="submit" class="site-btn register-btn"style="font-size: 15pt">
                                수정완료</button>

                       
                        </form>
                    </div>
                </div>
            </div>
            <br>



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
        
       <!-- footer -->
	<jsp:include
		page="${pageContext.request.contextPath }/WEB-INF/views/common/footer.jsp"></jsp:include>
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
    var reg=/^[a-z]+[a-z0-9]{5,19}$/;
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
        var reg=/[ㄱ-힣]{2,}/;
        if(reg.test(name)){//정규표현식을 통과 한다면
                    $("#nameRegErr").hide();
                    successState("#member_name");
        }else{//정규표현식을 통과하지 못하면
                    $("#nameRegErr").show();
                    errorState("#member_name");
        }
    });
    
    

function deleteMember(){
	event.preventDefault();
	if(confirm("회원이 작성한 게시물과 회원의 모든 정보가 삭제됩니다. 정말 탈퇴하시겠습니까? ") ==true){
		alert("탈퇴 실행")
		$.ajax({
			method : "get",
			url : "/myPage/updateMember/delete",
			success : function(data) {
				alert("회원탈퇴가 정상적으로 완료되었습니다. 로그인 창으로 이동합니다.");
				window.location.href = '/logout';
			}
		});
	}
	
	
}

</script>
</html>