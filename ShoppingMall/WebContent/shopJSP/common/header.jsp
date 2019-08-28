<%@ page contentType="text/html; charset=UTF-8"%>
<header>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
.headerFixed {
	z-index: 100 !important;
	position: fixed !important;
	top: 0px;
}

.allHeader {
	position: relative;
	width: 100%;
	z-index: 100;
	min-width: 1500px;
}

#navbarid {
	min-height: 32px;
	border-radius: 0;
	background-color: white;
	margin-bottom: 0;
	border: 0;
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

#topMenu { /*전체 ul포함*/
	text-align: center;
	height: 10px;
	position: relative;
	background-color: white;
}

#topMenu ul { /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */
	list-style-type: none;
	margin: 0px;
	padding: 0px;
}

#topMenu #topMenuUl { /* 상위 ul 가운데 정렬*/
	display: inline-block;
}

#topMenu ul li { /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */
	color: black;
	margin-left: -1px;
	float: left;
	line-height: 30px;
	vertical-align: middle;
	text-align: center;
}

#topMenu ul li ul li {
	/* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */
	color: black;
	float: none;
	text-align: center;
}

.menuLink { /* 상위 메뉴 a태그 */
	color: black;
	text-decoration: none;
	display: block;
	width: 170px;
	font-size: 16px;
	font-family: "Trebuchet MS", Dotum;
	text-decoration: none;
}

.topMenuLi:hover .menuLink { /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */
	color: black;
	background-color: white;
	font-weight: bold;
}

.submenu { /* 하위 메뉴 스타일 설정 */
	display: none;
	position: absolute;
	height: auto;
	overflow: hidden;
	width: 0 auto;
	text-align: center;
	margin: 0 auto;
	background-color: white;
}

.submenuLink { /* 하위 메뉴의 a 태그 스타일 설정 */
	z-index: 200;
	color: black;
	text-decoration: none;
	display: block;
	width: 170px;
	font-size: 12px;
	font-family: "Trebuchet MS", Dotum;
	margine: 0 auto;
}

.topMenuLi:hover .submenu {
	height: auto;
	display: block;
}

.submenuLink:hover { /*하위 메뉴 커서 on*/
	color: black;
	background-color: #DDD;
	font-weight: bold;
}

.list-inline {
	color: gray;
}

.list-inline a:link {
	color: white;
	text-decoration: none;
}

.list-inline a:visited {
	color: white;
	text-decoration: none;
}

.headerBG {
	background-color: black;
}

#headerHome {
	position: absolute;
	background-image: url("/shopJSP/image/changetomorrow.png");
	top: 2px;
}

#search {
	position: relative;
	width: 200px;
}

#search label {
	font-family: arial;
	color: #FFFEFF;
	cursor: text;
	font-size: 12px;
	font-weight: bold;
	left: 12px !important;
	position: absolute;
	text-shadow: 0 1px 1px #66AACD;
	top: 12px !important;
}

#search input {
	background-color: white;
	border-style: none;
	border-width: 0;
	color: black;
	font: bold 12px/20px "Helvetica Neue", Arial, Helvetica, Geneva,
		sans-serif;
	height: 30px;
	margin: 0px 0px 0px 300px;
	padding: 0 38px 0 12px;
	text-shadow: 0 1px 1px #66AACD;
	width: 400px;
	position: absolute;
	top: -10px;
}

#search button {
	background-color: transparent;
	background-image: url("/shopJSP/image/plus.png");
	border-style: none;
	cursor: pointer;
	height: 28px;
	position: absolute;
	left: 670px;
	text-indent: -9999px;
	top: -9px;
	width: 30px;
}

#search button:hover {
	background-position: 0 -26px;
}


</style>

	<script>
		$(document).ready(function() {
			var header = $('.allHeader').offset();
			$(window).scroll(function() {
				if ($(document).scrollTop() > header.top) {
					$('.allHeader').addClass('headerFixed');
				} else {
					$('.allHeader').removeClass('headerFixed');
				}
			});
		});
	</script>
	<%
		String id = (String) session.getAttribute("id");
	%>
	<div class="allHeader">
		<div class="headerBG" style="padding: 0.5em;">
			<h1>
				<a id="headerHome" href="/shopJSP/index.jsp"><img
					src="/shopJSP/image/changetomorrow.png"> </a>
			</h1>
			<div class="search_section">
				<form id="search" method="get">
					<div>
						<label for="frm-search" style="position: absolute;" class="infield"></label> 
						<input type="text" value="" id="frm-search" name="s">
					</div>
					<div>
						<button type="submit">Search</button>
					</div>
				</form>
			</div>
			<ul align="right" class="list-inline"
				style="padding: 0em 5em 0em 0em;">
				<%
					if (id == null) {
				%>
				<li><a id="" href="/shopJSP/loginForm.jsp"> 로그인</a></li>
				<li><a href="/shopJSP/registForm.jsp"> 회원가입</a></li>
				<%
					} else {
				%>
				<li><%=id%>님</a></li>
				<li><a href="/shopJSP/loginOut.do"> 로그아웃</a></li>
				<li><a href="/shopJSP/myPage.do"> 마이페이지</a></li>
				<%
					}
				%>
				<li><a target="_blank"
					href="https://www.doortodoor.co.kr/parcel/pa_004.jsp"> 배송조회</a></li>
				<li><a href="shopJSP/ordercheck.do"> 주문조회</a></li>
				<li><a href="/shopJSP/cart.html"> 장바구니</a></li>
				<li><a href="/shopJSP/customerCenter.jsp"> 고객센터</a></li>
			</ul>
		</div>

		<nav class="navbar navbar-default" id="navbarid">
			<div class="container-fluid">

				<div id="topMenu">
					<ul id="topMenuUl">

						<li class="topMenuLi"><a class="menuLink"
							href="/shopJSP/index.jsp">홈</a></li>

						<li class="topMenuLi"><a class="menuLink" href="#">베스트</a>
						<li class="topMenuLi"><a class="menuLink" href="productList.do?topcategory_id=1">아우터</a>
							<ul class="submenu">
								<li><a class="submenuLink" href="productList.do?topcategory_id=1&subcategory_id=1">패딩</a></li>
								<li><a class="submenuLink" href=#>코트</a></li>
								<li><a class="submenuLink" href=#>점퍼</a></li>
								<li><a class="submenuLink" href=#>재킷</a></li>
							</ul></li>


						<li class="topMenuLi"><a class="menuLink" href=#>상의</a>
							<ul class="submenu">
								<li><a class="submenuLink" href=#>티셔츠</a></li>
								<li><a class="submenuLink" href=#>맨투맨</a></li>
								<li><a class="submenuLink" href=#>셔츠</a></li>
								<li><a class="submenuLink" href=#>니트/스웨터/가디건</a></li>
								<li><a class="submenuLink" href=#>후드티/후드집업</a></li>
								<li><a class="submenuLink" href=#>카라티</a></li>
							</ul></li>


						<li class="topMenuLi"><a class="menuLink" href=#>하의</a>
							<ul class="submenu">
								<li><a class="submenuLink" href=#>데님 팬츠</a></li>
								<li><a class="submenuLink" href=#>쇼트 팬츠</a></li>
								<li><a class="submenuLink" href=#>코튼 팬츠</a></li>
								<li><a class="submenuLink" href=#>수트 팬츠</a></li>
								<li><a class="submenuLink" href=#>트레이닝 복</a></li>
								<li><a class="submenuLink" href=#>기타</a></li>
							</ul></li>


						<li class="topMenuLi"><a class="menuLink" href=#>신발</a>
							<ul class="submenu">
								<li><a class="submenuLink" href=#>스니커즈</a></li>
								<li><a class="submenuLink" href=#>런닝화</a></li>
								<li><a class="submenuLink" href=#>구두</a></li>
								<li><a class="submenuLink" href=#>부츠</a></li>
								<li><a class="submenuLink" href=#>샌들/슬리퍼</a></li>
								<li><a class="submenuLink" href=#>기타</a></li>
							</ul></li>


						<li class="topMenuLi"><a class="menuLink" href=#>악세사리</a>
							<ul class="submenu">
								<li><a class="submenuLink" href=#>시계</a></li>
								<li><a class="submenuLink" href=#>모자</a></li>
								<li><a class="submenuLink" href=#>안경</a></li>
								<li><a class="submenuLink" href=#>목도리</a></li>
								<li><a class="submenuLink" href=#>벨트</a></li>
								<li><a class="submenuLink" href=#>팔찌/반지/목귀걸이</a></li>
								<li><a class="submenuLink" href=#>기타</a></li>
							</ul></li>


						<li class="topMenuLi"><a class="menuLink" href=#>기타</a></li>


					</ul>
				</div>
			</div>
		</nav>
	</div>
</header>