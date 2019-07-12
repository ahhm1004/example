<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href = "css/header.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>


/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

label {
	width: 130px;
}

</style>
</head>
<body>
<!-- í¤ë common/css -->

<jsp:include page="common/header.jsp" />
<!-- //í´ëë -->
	설명란
	<div class="container">
		<h3>MyPage</h3>
		<div style="border: 1px solid silver;" align="center">
			<h4>장바구니</h4>
			<div align="left">
				<strong>장바구니 담긴 상품</strong>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>번호</th>
						<th>사진 </th>
						<th>제품명</th>
						<th>수량</th>
						<th>적립</th>
						<th>가격</th>
						<th>배송비</th>
						<th>취소</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>1</th>
						<th>image</th>
						<th>name</th>
						<th><div><input type="text" size="1">stock</div></th>
						<th>point</th>
						<th>price</th>
						<th>배송비</th>
						<th><button type="submit" class="btn btn-default">삭제</button></th>
					</tr>
					<tr >
						<th colspan="8" ><div align="right">총 구매금액 : 11,400원 + 배송료 1,500원 = 12,900원 (받으실 예상 적립금 3,420원)</div></th>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<div align="center">
			2만원 미만 구매시 배송비 1500원 추가(제주도 으큼)
		</div>
		<br>
		<div align="center">
			<button type="submit" class="btn btn-default">쇼핑 계속하기</button>
			<button type="submit" class="btn btn-default">장바구니 비우기</button>
			<button type="submit" class="btn btn-default">모두 주문하기</button>
		</div>
	</div>
</body>
</html>