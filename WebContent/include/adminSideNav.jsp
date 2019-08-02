<%@ page contentType="text/html; charset=UTF-8"%>
<%
		String regist = "";
		String plist2 = "";
		String plist = "";
		String mlist = "";
		String event = "";
		String notice="";
		String uri = request.getRequestURI();
		String jsp = uri.substring(uri.lastIndexOf("/")+1);
		// active 고르기
		switch(jsp){
			case "regist.jsp":
				regist = "active";
				break;
			case "list2.jsp":
				plist2 = "active";
				break;		
			case "list.jsp":
				plist = "active";
				break;
			case "event.jsp":
				event = "active";
				break;
			case "notice.jsp":
				notice = "active";
				break;
			case "mlist.jsp":
				mlist = "active";
				break;	
		}
	%>
	<div class="container-responsive">
		<div class="row">
			<div class="col-sm-1 col-md-1 sidebar">
				<ul class="nav nav-sidebar">
					<li class="<%=regist%>"><a href="/admin/regist.do">상품등록</a></li>
					<li class="<%=plist2%>"><a href="/admin/list2.do">상품 재고 등록<span class="sr-only">(current)</span></a></li>
					<li class="<%=plist%>"><a href="/admin/list.do">상품리스트<span class="sr-only">(current)</span></a></li>
					<li class="<%=event%>"><a href=#>이벤트설정</a></li>
					<li class="<%=notice%>"><a href="/admin/notice.do">공지사항</a></li>
					<li class="<%=mlist%>"><a href="/admin/mlist.do">회원리스트</a></li>
				</ul>
			</div>
		</div>
	</div>