<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>아이디 찾기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href = "header.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
$(document).on('click','#findId',function(){
	var name = $('#name').val();
 	var birthday = $('#birthday').val();
 	var phone = $('#phone').val();

 	var postData = {'name' : name , 'birthday' : birthday , 'phone' : phone};

 	
	$.ajax({
        url:'/shopJSP/findingId.do',
        type:'POST',
        dataType : "text",
        data: postData,
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        
        success:function(data){
        	var id = data.id;
        		alert("회원님의 정보로 등록된 ID는 : " + id + " 입니다.");

        },
    });
});

</script>
</head>
<body>
	<jsp:include page="common/header.jsp" />
	
	<div class="container">
			<h1 align="center">ID찾기</h1>
			<form class="form-horizontal" role="form">
			<div class="form-group">
				<label class="col-sm-5 control-label">이름</label>
				<div class="col-sm-2">
					<input class="form-control" name="name" type="text" id = "name">
				</div>
				<br>
				<Br>
				<label class="col-sm-5 control-label">생년월일</label>
				<div class="col-sm-2">
					<input class="form-control" name="birthday" type="text" id = "birthday">
				</div>
				<br>
				<br>
				<label class="col-sm-5 control-label">핸드폰 번호</label>
				<div class="col-sm-2">
					<input class="form-control" name="phone" type="text" id = "phone">
				</div>
				<br>
				<br>
				<label class="col-sm-5 control-label"></label>
				<div class="col-sm-2">
					<input type="button" class="btn btn-success" value="아이디찾기" id = "findId">
				</div>
			</div>
			</form>
			<br>
			<br>
	</div>
</body>

</html>