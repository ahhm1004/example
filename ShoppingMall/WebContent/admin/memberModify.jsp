<%@page import="com.shoppingmall.member.model.Member"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List list = (List) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>관리자 페이지</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	<script language="JavaScript">
/* 		var number = [ "010", "011", "016", "017" ];
		var email_domain = [ "naver.com", "gmail.com", "daum.com" ];
		var cellPhone, cellPhone2, cellPhone3;
		var birthday, year, month, work;
		var id, repwd;
		var email_id, domain_text, domain;
		var roadAddress, detailAddress;
		var year_value, month_value, work_value;
		var cellPhone_value;
		var flag = false;
		function init() {
			year = document.getElementById("year");
			month = document.getElementById("month");
			work = document.getElementById("work");
			cellPhone = document.getElementById("cellPhone");
			cellPhone2 = document.getElementById("cellPhone2");
			cellPhone3 = document.getElementById("cellPhone3");
			birthday = document.getElementById("birthday");
			id = document.getElementById("id");
			domain = document.getElementById("domain");
			email_id = document.getElementById("email_id");
			domain_text = document.getElementById("domain_text");
			repwd = document.getElementById("repwd");
			roadAddress = document.getElementById("roadAddress");
			detailAddress = document.getElementById("detailAddress");
	
			createBirthday();
			createCellPhone();
			createDomain();
		}
	
		function createBirthday() {
			for (var i = 1930; i < 2016; i++) {
				var option = document.createElement("option");
				option.value = i;
				option.text = i;
				year.add(option);
			}
			for (var i = 1; i <= 12; i++) {
				var option = document.createElement("option");
				if (i < 10) {
					option.value = "0" + i;
				} else {
					option.value = i;
				}
				option.text = i;
				month.add(option);
			}
			for (var i = 1; i <= 31; i++) {
				var option = document.createElement("option");
				if (i < 10) {
					option.value = "0" + i;
				} else {
					option.value = i;
				}
				option.text = i;
				work.add(option);
			}
		}
	
		function createCellPhone() {
			for (var i = 0; i < number.length; i++) {
				var option = document.createElement("option");
				option.value = number[i];
				option.text = number[i];
				cellPhone.add(option);
			}
		}
		function createDomain() {
			for (var i = 0; i < email_domain.length; i++) {
				var option = document.createElement("option");
				option.value = email_domain[i];
				option.text = email_domain[i];
				domain.add(option);
			}
		}
		function cellPhoneChange() {
			cellPhone_value = cellPhone.options[cellPhone.selectedIndex].value;
		}
		function mailChange() {
			var option_value = domain.options[domain.selectedIndex].value;
			domain_text.value = option_value;
		}
		function yearChange() {
			year_value = year.options[year.selectedIndex].value;
		}
		function monthChange() {
			month_value = month.options[month.selectedIndex].value;
		}
		function workChange() {
			work_value = work.options[work.selectedIndex].value;
		}
		function modify() {
			//아이디
			if (form1.id.value == "") {
				alert("아이디를 입력하세요");
				return;
			}
			//비밀번호체크
			if (repwd.value.length < 6) {
				alert("비밀번호가 6자리 이상 입력하세요");
				return;
			} else if (form1.pwd.value != repwd.value) {
				alert(form1.pwd.value);
				alert(repwd.value);
				alert("비밀번호가 일치하지 않습니다");
				return;
			}
			//이름체크
			if (form1.name.value == "") {
				alert("이름을 입력하세요");
				return;
			}
			//성별체크
			if (form1.gender.value == "") {
				alert("성별을 체크하세요");
				return;
			}
			//생년월일 체크
			if (year.value == "") {
				alert("생년월일을 체크하세요");
				return;
			} else if (month.value == "") {
				alert("생년월일을 체크하세요");
				return;
			} else if (work.value == "") {
				alert("생년월일을 체크하세요");
				return;
			}
			//이메일 체크
			if (email_id.value == "") {
				alert("이메일을 작성해주세요");
				return;
			} else if (domain_text.value == "") {
				alert("이메일을 작성해주세여");
				return;
			}
			//휴대폰체크
			if (cellPhone.value == "") {
				alert("휴대폰을 입력하세요");
				return;
			}
			if (cellPhone2.value == "") {
				alert("휴대폰을 입력하세요");
				return;
			} else if (cellPhone3.value == "") {
				alert("휴대폰을 입력하세요");
				return;
			}
			//우편번호
			if (roadAddress.value == "") {
				alert("주소 입력하세요");
				return;
			}
			//아이디 중복체키
			/* if (flag==false) {
				alert("아이디 중복체크하세요");
				return;
			}
	
			/*telephone,point 
			modifyFrom.birthday.value = year_value + "/" + month_value + "/" + work_value;
			modifyFrom.email.value = email_id.value + "@" + domain_text.value;
			modifyFrom.addr.value = roadAddress.value + "/" + detailAddress.value;
			modifyFrom.phone.value = cellPhone_value + "-" + cellPhone2.value + "-" + cellPhone3.value;
			alert(modifyFrom.phone.value);
			alert(modifyFrom.addr.value);
			modifyFrom.action = "/admin/memberModify.do";
			modifyForm.method="post";
			modifyForm.encoding="multipart/form-data";
			modifyFrom.submit();
			alert("회원정보변경성공");
	
		} */
	</script>
	<script>
		// 회원 정보 변경하기
		function modify(){
			modifyForm.action="/admin/memberModify.do";
			modifyForm.method="post";
			modifyForm.encoding="multipart/form-data";
			modifyForm.submit();			
		}
		
	</script>
</head>
<body>
<%-- 	<!-- 상단 메뉴 -->
	<%@ include file="/include/adminTopNav.jsp" %>
	<div>
	<!-- 좌측메뉴 -->
	<%@ include file="/include/adminSideNav.jsp" %>

	<!-- 본문영역 -->
	<div class="container">
		<h1 align="center">회원정보변경</h1>
		<form class="form-horizontal" role="form" name="modifyForm">
				<input type="hidden" name="birthday" value=""> 
				<input type="hidden" name="email" value="">
				<input type="hidden" name="addr" value="">
				<input type="hidden" name="point" value="0">
				<input type="hidden" name="telephone" value="0">
				<input type="hidden" name="phone" value="">
				
				<input class="form-control" name="member_id" type="hidden" value="${member.member_id }"  >
			<div class="form-group">
				<label class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-10">
					<input class="form-control" name="id" type="text" value="${member.id }" readonly>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
					<input class="form-control" name="pwd" type="text" value="${member.pwd }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="email_id" value="${member.email }.">
					@												
					<input type="text" class="form-control" id="domain_text" value="">
					<select class="form-control" id="domain" onchange="mailChange()">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">우편번호</label>
				<div class="col-sm-10">
					<input class="form-control" name="zipcode" type="text" value="${member.zipcode }" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">주소</label>
				<div class="col-sm-10">
					<input class="form-control" name="addr" type="text" value="${member.addr }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">이름</label>
				<div class="col-sm-10">
					<input class="form-control" name="name" type="text" value="${member.name }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">생일</label>
				<div class="col-sm-10">
					<input class="form-control" name="birthday" type="text" value="${member.birthday }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">핸드폰번호</label>
				<div class="col-sm-10">
					<input class="form-control" name="phone" type="text" value="${member.phone }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">포인트</label>
				<div class="col-sm-10">
					<input class="form-control" name="point" type="number" placeholder="숫자만 입력해주세요." min="0" value = "${member.point }">
				</div>
			</div>
						<div class="form-group">
				<label class="col-sm-2 control-label">회원 등급</label>
				<div class="col-sm-10">
					<input class="form-control" name="level_id" type="number" placeholder="숫자만 입력해주세요." min="0" value = "${member.level_id }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">전화번호</label>
				<div class="col-sm-10">
					<input class="form-control" name="telephone" type="text" value="${member.telephone }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">성별</label>
				<div class="col-sm-10">
					<input class="form-control" name="gender" type="text" value="${member.gender }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-10">
					<input type="button" class="btn btn-success" value="회원정보변경" onClick="modify()">
				</div>
			</div>
		</form>
	</div>
	</div>
	<!-- 부트스트랩 관련 불러오기!! -->
	<%@ include file="/include/loadBootStrap.jsp"%> --%>
 <body>
	<!-- 상단 메뉴 -->
	<%@ include file="/include/adminTopNav.jsp" %>
	<div>
	<!-- 좌측메뉴 -->
	<%@ include file="/include/adminSideNav.jsp" %>

	<!-- 본문영역 -->
	<div class="container">
		<h1 align="center">회원정보변경</h1>
		<form class="form-horizontal" role="form" name="modifyForm">
				<input class="form-control" name="member_id" type="hidden" value="${member.member_id }" >
			<div class="form-group">
				<label class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-10">
					<input class="form-control" name="id" type="text" value="${member.id }" readonly>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
					<input class="form-control" name="pwd" type="text" value="${member.pwd }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-10">
					<input class="form-control" name="email" type="text" value="${member.email }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">우편번호</label>
				<div class="col-sm-10">
					<input class="form-control" name="zipcode" type="text" value="${member.zipcode }" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">주소</label>
				<div class="col-sm-10">
					<input class="form-control" name="addr" type="text" value="${member.addr }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">이름</label>
				<div class="col-sm-10">
					<input class="form-control" name="name" type="text" value="${member.name }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">생일</label>
				<div class="col-sm-10">
					<input class="form-control" name="birthday" type="text" value="${member.birthday }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">핸드폰번호</label>
				<div class="col-sm-10">
					<input class="form-control" name="phone" type="text" value="${member.phone }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">포인트</label>
				<div class="col-sm-10">
					<input class="form-control" name="point" type="number" placeholder="숫자만 입력해주세요." min="0" value = "${member.point }">
				</div>
			</div>
						<div class="form-group">
				<label class="col-sm-2 control-label">회원 등급</label>
				<div class="col-sm-10">
					<input class="form-control" name="level_id" type="number" placeholder="숫자만 입력해주세요." min="0" value = "${member.level_id }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">전화번호</label>
				<div class="col-sm-10">
					<input class="form-control" name="telephone" type="text" value="${member.telephone }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">성별</label>
				<div class="col-sm-10">
					<input class="form-control" name="gender" type="text" value="${member.gender }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-10">
					<input type="button" class="btn btn-success" value="회원정보변경" onClick="modify()">
				</div>
			</div>
		</form>
	</div>
	</div>
	<!-- 부트스트랩 관련 불러오기!! -->
	<%@ include file="/include/loadBootStrap.jsp"%>
</body>
</html>
