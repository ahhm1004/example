-<%@page import="common.page.PagingBean"%>
<%@page import="common.file.FileManager"%>
<%@page import="com.shoppingmall.product.model.Product"%>
<%@page import="com.shoppingmall.product.model.Brand"%>
<%@page import="com.shoppingmall.product.model.TopCategory"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Product> list = (List)request.getAttribute("list");
	PagingBean pb = (PagingBean)request.getAttribute("pb");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 페이지</title>
<!-- CKEditor -->
<script src="//cdn.ckeditor.com/4.5.9/standard/ckeditor.js"></script>
<script src="../jslib/common.js"></script>
<script>
	function add(){
		
		var chkcount = 0;
		// 상품체크여부확인
		for(var i = 0; i < productForm.product_id.length; i++){
			if(productForm.product_id[i].checked){
				chkcount++;
			}
		}
		
		if(chkcount == 0){
			alert("재고를 추가 할 상품을 선택해 주세요.");
			return;
		}
		
		if(chkcount >= 2)
		{
			alert("하나의 상품만 선택해 주세요.");
			return;
		}
		
		if(!confirm('추가하시겠습니까?')){
			return;
		}
		
		productForm.action = "/admin/stockRegist.do";
		productForm.method="post";
		productForm.submit();
	}
	
	function update(){
		
		var chkcount = 0;
		// 상품체크여부확인
		for(var i = 0; i < productForm.product_id.length; i++){
			if(productForm.product_id[i].checked){
				chkcount++;
			}
		}
		
		if(chkcount == 0){
			alert("재고를 추가 할 상품을 선택해 주세요.");
			return;
		}
		
		if(chkcount >= 2)
		{
			alert("하나의 상품만 선택해 주세요.");
			return;
		}
		
		if(!confirm('추가하시겠습니까?')){
			return;
		}
		
		productForm.action = "/admin/stockUpdate.do";
		productForm.method="post";
		productForm.submit();
	}	
</script>
</head>

<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- 상단 메뉴 -->
	<%@ include file="/include/adminTopNav.jsp"%>
	<!-- 좌측메뉴 -->
	<%@ include file="/include/adminSideNav.jsp" %>

	<!-- 본문영역 -->
	<div class="container">
		<h2>상품 목록</h2>
		<form name="form1" method = "post" action = "/admin/list2.do">
			<input name = "keyword" value = "${map.keyword }">
			<input type = "submit" value = "조회">
		</form>
		${map.count }개의 게시물이 있습니다.
		<div class="table-responsive">
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th>#</th>						
						<th>번호</th>
						<th>이미지</th>
						<th>상품명</th>
						<th>브랜드</th>
						<th>가격</th>
						<th>할인가</th>
						<th>포인트</th>
						<th>재고량</th>
						<th>상품등록일</th>
					</tr>
				</thead>
				<!-- 테이블 본문 -->
				<form name="productForm">
				<tbody>
					<%
						int num = pb.getNum();
						int curPos = pb.getCurPos();
					%>
					<%for(int i = 0; i < pb.getPageSize(); i++){ %>
					<%if(num < 1)break; %>
					<%Product product = list.get(curPos++); %>
					<tr>
						<td>
								<input type="checkbox" name="product_id" value="<%=product.getProduct_id()%>">
								<input type="hidden" name="filename" value="<%=product.getFilename()%>">
						</td>
						<td><%=num--%></td>
						<td><img src="/data/<%=product.getProduct_id()%>_thumb.<%=FileManager.getExtend(product.getFilename())%>"></td>
						<td><%=product.getProduct_name() %></td>
						<td><%=product.getBrand_name() %></td>
						<td><%=product.getPrice() %></td>
						<td><%=product.getDiscount() %></td>
						<td><%=product.getPoint() %></td>
						<td><%=product.getStock() %></td>
						<td><%=(product.getRegdate()).substring(0, 10) %></td>
					</tr>
					<%} %>
				</tbody>
				</form>
			</table>
			<!-- 재고 추가/수정 버튼 -->
			<div>
				<input type = "button" class="btn btn-default" value = "재고 추가" onClick = "add()">
				<input type = "button" class="btn btn-default" value = "재고 변경" onClick = "update()">
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
	            	<a href="/admin/list2.do?currentPage=<%=firstPage-1%>">
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
	            		<a href="/admin/list2.do?currentPage=<%=i%>"><%=i %></a></li>
	            	<%} %>
	            
	            <li>
	            	<%if(lastPage+1 < totalPage){ %>
	            		<a href="/admin/list2.do?currentPage=<%=lastPage+1%>">
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
