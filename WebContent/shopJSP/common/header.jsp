<%@ page contentType="text/html; charset=UTF-8"%>
<header>

	<%String id=(String)session.getAttribute("id"); %>
	<div align="right" class="jumbotron" style="padding: 0.5em 0.6em;">
		<ul class="list-inline">
		<%if(id==null){%>
			<li><a href="/shopJSP/loginForm.jsp"><span
					class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
			<li><a href="/shopJSP/registForm.jsp"><span
					class="glyphicon glyphicon-user"></span> 회원가입</a></li>
			<%}else{%>
						<li><%=id%>님</a></li>
						<li><a href="/shopJSP/loginOut.do"><span
					class="glyphicon glyphicon-user"></span> 로그아웃</a></li> 
			<li><a href="/shopJSP/myPage.do"><span
					class="glyphicon glyphicon-user"></span> 마이페이지</a></li>
					<%} %>
			<li><a href="/shop/cart.html"><span
					class="glyphicon glyphicon-shopping-cart"></span> 장바구니</a></li>
		</ul>
	</div>
	<div class="jumbotron" style="padding: 0.5em 5em;">
		<div class="container text-center">
			<h4>AHH SHOPPING MALL</h4>
			<p>FASHION's Ahn Hyo Hm</p>
		</div>
	</div>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/shopJSP/index.jsp">온라인스토어 ></a>
			</div>
			<div id = "topMenu">
				<ul>
					<li>|</li>
				
					<li class = "topMenuLi">
						<a class= "menuLink" href="/shopJSP/index.jsp">홈</a>
					</li>
					
					<li>|</li>
					
					<li class = "topMenuLi">
						<a class= "menuLink" href= "#">아우터</a>
						<ul class="submenu">
							<li><a class="submenuLink" href=#>패딩</a></li>
							<li><a class="submenuLink" href=#>코트</a></li>
							<li><a class="submenuLink" href=#>점퍼</a></li>
							<li><a class="submenuLink" href=#>재킷</a></li>
						</ul>
					</li>
					
					<li>|</li>
					
					<li class = "topMenuLi">
						<a class= "menuLink" href=#>상의</a>
						<ul class="submenu">
							<li><a class="submenuLink" href=#>티셔츠</a></li>
							<li><a class="submenuLink" href=#>맨투맨</a></li>
							<li><a class="submenuLink" href=#>셔츠</a></li>
							<li><a class="submenuLink" href=#>니트/스웨터/가디건</a></li>
							<li><a class="submenuLink" href=#>후드티/후드집업</a></li>
							<li><a class="submenuLink" href=#>카라티</a></li>
						</ul>
					</li>
					
					<li>|</li>
					
					<li class = "topMenuLi">
						<a class= "menuLink" href=#>하의</a>
						<ul class="submenu">
							<li><a class="submenuLink" href=#>데님 팬츠</a></li>
							<li><a class="submenuLink" href=#>쇼트 팬츠</a></li>
							<li><a class="submenuLink" href=#>코튼 팬츠</a></li>
							<li><a class="submenuLink" href=#>수트 팬츠</a></li>
							<li><a class="submenuLink" href=#>트레이닝 복</a></li>
							<li><a class="submenuLink" href=#>기타</a></li>
						</ul>
					</li>
					
					<li>|</li>
					
					<li class = "topMenuLi">
						<a class= "menuLink" href=#>신발</a>
						<ul class="submenu">
							<li><a class="submenuLink" href=#>스니커즈</a></li>
							<li><a class="submenuLink" href=#>런닝화</a></li>
							<li><a class="submenuLink" href=#>구두</a></li>
							<li><a class="submenuLink" href=#>부츠</a></li>
							<li><a class="submenuLink" href=#>샌들/슬리퍼</a></li>
							<li><a class="submenuLink" href=#>기타</a></li>
						</ul>
					</li>
					
					<li>|</li>
					
					<li class = "topMenuLi">
						<a class= "menuLink" href=#>악세사리</a>
						<ul class="submenu">
							<li><a class="submenuLink" href=#>시계</a></li>
							<li><a class="submenuLink" href=#>모자</a></li>
							<li><a class="submenuLink" href=#>안경</a></li>
							<li><a class="submenuLink" href=#>목도리</a></li>
							<li><a class="submenuLink" href=#>벨트</a></li>
							<li><a class="submenuLink" href=#>팔찌/반지/목귀걸이</a></li>
							<li><a class="submenuLink" href=#>기타</a></li>
						</ul>
					</li>
					
					<li>|</li>
					
					<li class = "topMenuLi">
						<a class= "menuLink" href=#>기타</a>
					</li>
					
					<li>|</li>
					
					<li class = "topMenuLi">
						<a class= "menuLink" href="/shopJSP/customerCenter.jsp">고객센터</a>
					</li>
					
					<li>|</li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><span
							class="glyphicon glyphicon-search">검색</span></a>
						<ul class="dropdown-menu">
							<input type="text" placeholder="Search Blog..">

						</ul></li>
				</ul>
			</div>
	</nav>
</header>