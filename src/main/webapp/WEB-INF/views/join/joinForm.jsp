<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>myProject</title>

    <!-- 부트스트랩  -->
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 로그인폼 css -->
    <link rel="stylesheet" href="${path }/resources/css/joinForm.css">
</head>
<body>

    <!-- 로고영역 -->
    <div class="container">
        <div class="row col-sm-12 logo-box">
            <img src="${path }/resources/images/logo.png">
        </div>
    </div>

    <!-- 회원가입폼 영역 -->
    <div class="container contents-box">
        <div class="row col-sm-12">

            <div class="row col-sm-4"></div>
            <div class="row col-sm-5 mt-3">
                <form action="join.do" method="post" name="joinfrm">
                    <div class="mb-3 mt-3">
                      <label for="id">ID:</label>
                      <button class="right btn btn-warning" type="button" id="idCheck">check</button>
                      <input type="text" class="form-control" id="id" placeholder="Enter ID" name="id" required>
                    </div>
                    <div class="mb-3 mt-3">
                      <label for="pwd">Password:</label>
                      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" required>
                    </div>
                    <div class="mb-3 mt-3">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" required>
                    </div>
                    <button type="button" class="btn btn-primary" id="submitJoin">회원가입</button>
                    <button type="reset" class="btn btn-primary">취소</button>
                  </form>
            </div>
            <div class="row col-sm-3"></div>
        </div>
    </div>
    
</body>

<script type="text/javascript">
	
	// id 중복체크
	document.getElementById("idCheck").onclick = function() {
	    var id = document.getElementById("id");
	    var regId = /^[a-zA-Z0-9]{5,20}$/; // 알파벳 a~z, A~Z, 숫자 0~9 5글자 이상 20글자 이하
	    
	    if(id.value == "") {
	    	alert("ID를 입력해 주세요.");
	    	id.focus();
	    	return;
	    } else if(!regId.test(id.value)) {
            alert("ID는 알파벳과 숫자를 섞어 5~20 사이만 가능합니다.");
            id.focus();
            return;
        }
	    
	    fetch("idCheck.do?id=" + id.value).then(function(res) {
                res.json().then(function(data) {
                	if(data == "0") {
                		if(confirm("사용가능한 아이디 입니다. 사용하시겠습니까?")) {
                			id.setAttribute("readonly", true);
                		} else {
                			id.setAttribute("readonly", false);
                		}
                	} else {
                		alert("사용중인 아이디입니다.");
                	}
	            })
	        }).catch(err => {
	            console.log(err);
	        })
	};
	
	// 회원가입 폼 유효성 검사
	document.getElementById("submitJoin").onclick = function() {
		
		var regPwd = /^[A-Za-z0-9]{6,12}$/; // 비밀번호
        var regEma = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; // 이메일

        if(joinfrm.id.getAttribute("readonly") != "true") {
            alert("아이디 중복확인을 눌러주세요.");
            joinfrm.id.focus();
            return;
        }else if(joinfrm.pwd.value == "" || !regPwd.test(joinfrm.pwd.value)) {
            alert("비밀번호는 알파벳+숫자 6~12 이여야 합니다.");
            joinfrm.pwd.focus();
            return;
        }else if(joinfrm.email.value == "" || !regEma.test(joinfrm.email.value)) {
            alert("이메일 형식이 올바르지 않습니다. \n 이메일을 확인해 주세요.");
            joinfrm.email.focus();
            return;
        }

        joinfrm.submit();
    }
	
</script>

</html>