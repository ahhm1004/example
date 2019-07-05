<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>비밀번호 찾기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href = "header.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
	$(function(){
		$("#findPw").click(function(){
			$.ajax({
				url : '/shopJSP/findingPw.do',
				type : 'post',
				data : {
					id : $('#id').val(),
					email : $('#email').val()
				},
			});
		});
	});

</script>
</head>
<body>
	<jsp:include page="common/header.jsp" />
	
	<div class="container">
			<h1 align="center">PW찾기</h1>
			<form class="form-horizontal" role="form">
			<div class="form-group">
				<label class="col-sm-5 control-label">ID</label>
				<div class="col-sm-2">
					<input class="form-control" name="id" type="text" id = "id">
				</div>
				<br>
				<Br>
				<label class="col-sm-5 control-label">이메일</label>
				<div class="col-sm-2">
					<input class="form-control" name="email" type="text" id = "email">
				</div>
				<br>
				<br>
				<label class="col-sm-5 control-label"></label>
				<div class="col-sm-2">
					<input type="button" class="btn btn-default" value="아이디찾기" id = "findPw">
				</div>
			</div>
			</form>
			<br>
			<br>
	</div>
</body>

</html>