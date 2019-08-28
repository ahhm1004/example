<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Bootstrap Example</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href = "header.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/header.css" type="text/css">
<style>
</style>
<jsp:include page="common/daumPostcode.jsp" />
<script>
	var xhttp;
	function ajaxIncluding() {
		if (window.XMLHttpRequest) {
			xhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	//로그인 체크
	function login() {
		if (form1.id.value == "") {
			alert("아이디를 입력해주세요");
			return;
		} else if (form1.pwd.value == "") {
			alert("비밀번호를 입력해주세요");
			return;
		}
		ajaxIncluding();
		xhttp.open("POST", "/shopJSP/loginCheck.do", true);
		xhttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				var data = xhttp.responseText;
				var obj = JSON.parse(data);
				alert(obj.msg);
				//로그인성공시
				location.href="/shopJSP/index.jsp";
			}
		};
		xhttp.send("id=" + form1.id.value + "&pwd=" + form1.pwd.value);
	}
	function regist() {
				location.href="/shopJSP/registForm.jsp";
	}
	
	function findid() {
		location.href="/shopJSP/findId.jsp";
	}
	
	function findpw() {
		location.href="/shopJSP/findPw.jsp";
	}
	
	
</script>
</head>
<body>
	<jsp:include page="common/header.jsp"/>
	<div class="container" align="center">
		<form class="form-inline" name="form1" method="post">
			<fieldset>
				<legend>로그인</legend>
				<div class="form-group">
					<label for="id">아이디:</label> <input type="text"
						class="form-control" id="id" name="id" placeholder="Enter id">
				</div>
				<br>
				<div class="form-group">
					<label for="pwd">비밀번호:</label> <input type="password"
						class="form-control" id="pwd" name="pwd"
						placeholder="Enter password">
				</div>
				<br>
				<div class="checkbox">
					<label><input type="checkbox"> Remember me</label>
				</div>
				<br>
				<input type="button" class="btn btn-default" onclick="login()" value="로그인">
				<input type="button" class="btn btn-default" onclick="regist()" value="회원가입">
				
				<br> <br>
				<div class="form-group">
					회원아이디를 잊어버리셨나요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" class="btn btn-default"  value="아이디찾기" onclick="findid()">
					
				</div>
				<br>
				<div class="form-group">
					비밀번호가 생각나지 않으세요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" class="btn btn-default"  value="비밀번호찾기" onclick = "findpw()">
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>
