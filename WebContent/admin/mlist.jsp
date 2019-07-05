<%@page import="common.page.PagingBean"%>
<%@page import="com.shoppingmall.member.model.Member"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Member> list = (List)request.getAttribute("mlist");
	PagingBean pb = (PagingBean)request.getAttribute("pb");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 페이지</title>
<script src="../jslib/common.js"></script>
<script>
	function del(){
		
		var chkcount = 0;
		// 상품체크여부확인
		for(var i = 0; i < memberForm.member_id.length; i++){
			if(memberForm.member_id[i].checked){
				chkcount++;
			}
		}
		
		if(chkcount == 0){
			alert("삭제할 회원을 선택해 주세요.");
			return;
		}
		
		if(!confirm('삭제하시겠습니까?')){
			return;
		}
		
		memberForm.action = "/admin/memberDelete.do";
		memberForm.method="post";
		memberForm.submit();
	}
	
	function mod(){
		
		var chkcount = 0;
		// 상품체크여부확인
		for(var i = 0; i < memberForm.member_id.length; i++){
			if(memberForm.member_id[i].checked){
				chkcount++;
			}
		}
		
		if(chkcount == 0){
			alert("수정할 회원을 선택해 주세요.");
			return;
		}
		
		if(!confirm('수정하시겠습니까?')){
			return;
		}
		
		memberForm.action = "/admin/memberView.do";
		memberForm.method="post";
		memberForm.submit();
	}
</script>
</head>

<body>
	<!-- 상단 메뉴 -->
	<%@ include file="/include/adminTopNav.jsp"%>
	<!-- 좌측메뉴 -->
	<%@ include file="/include/adminSideNav.jsp" %>

	<!-- 본문영역 -->
	<div class="container">
		<h2>상품 목록</h2>
		<div class="table-responsive">
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th>#</th>						
						<th>번호</th>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이메일</th>
						<th>우편번호</th>
						<th>주소</th>
						<th>이름</th>
						<th>생일</th>
						<th>핸드폰 번호</th>
						<th>포인트</th>
						<th>회원 등급</th>
						<th>가입일</th>
						<th>수정일</th>
						<th>전화번호</th>
						<th>성별</th>
					</tr>
				</thead>
				<!-- 테이블 본문 -->
				<form name="memberForm">
				<tbody>
					<%
						int num = pb.getNum();
						int curPos = pb.getCurPos();
					%>
					<%for(int i = 0; i < pb.getPageSize(); i++){ %>
					<%if(num < 1)break; %>
					<%Member member = list.get(curPos++); %>
					<tr>
						<td>
								<input type="checkbox" name="member_id" value="<%=member.getMember_id()%>">
						</td>
						<td><%=num--%></td>
						<td><%=member.getId() %></td>
						<td><%=member.getPwd() %></td>
						<td><%=member.getEmail() %></td>
						<td><%=member.getZipcode() %></td>
						<td><%=member.getAddr() %></td>
						<td><%=member.getName() %></td>
						<td><%=member.getBirthday() %></td>
						<td><%=member.getPhone() %></td>
						<td><%=member.getPoint() %></td>
						<td><%=member.getLevel_id() %></td>
						<td><%=(member.getRegdate()).substring(0, 10) %></td>
						<td><%=(member.getRecently()).substring(0, 10) %></td>
						<td><%=member.getTelephone() %></td>
						<td><%=member.getGender() %></td>
					</tr>
					<%} %>
				</tbody>
				</form>
			</table>
			<!-- 삭제, 수정버튼 -->
			<div>
				<input type="button" class="btn btn-default" value="삭제" onClick="del()">
				<input type = "button" class="btn btn-default" value = "수정" onClick = "mod()">
			</div>
		</div>
		<!-- 페이징 -->
		<div align="center">
			<ul class="pagination">
	            	<%
	            		int firstPage = pb.getFirstPage();
	            		int lastPage = pb.getLastPage();
	            		int totalPage = pb.getTotalPage();
	            		int currentPage = pb.getCurrentPage();
	            	%>
	            <li>
	            <%if(firstPage-1 > 1){ %>
	            	<a href="/admin/list.do?currentPage=<%=firstPage-1%>">
	            <%}else{ %>
	            	<a href="javascript:alert('첫번째 페이지 입니다!!')">
	            <%} %>
	            <span class="glyphicon glyphicon-chevron-left"></span></a></li>
	            <!-- if currentPage 하고 같으면 active하기. -->
	            	<%for(int i = firstPage; i <= lastPage; i++){ %>
	            		<%if(i > totalPage)break; %>
	            		<%if(currentPage == i){ %>
	            			<li class="active">
	            		<%}else{ %>
	            			<li>
	            		<%} %>
	            		<a href="/admin/list.do?currentPage=<%=i%>"><%=i %></a></li>
	            	<%} %>
	            
	            <li>
	            	<%if(lastPage+1 < totalPage){ %>
	            		<a href="/admin/list.do?currentPage=<%=lastPage+1%>">
	            	<%}else{ %>
	            		<a href="javascript:alert('마지막 페이지 입니다!!')">
	            	<%} %>
	            <span class="glyphicon glyphicon-chevron-right"></span></a></li>
	          </ul>
          </div>
	</div>

	<!-- 부트스트랩 관련 불러오기!! -->
	<%@ include file="/include/loadBootStrap.jsp"%>
</body>
</html>
