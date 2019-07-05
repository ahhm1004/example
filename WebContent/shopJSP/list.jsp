<%@page import="common.page.PagingBean"%>
<%@page import="common.file.FileManager"%>
<%@page import="com.shoppingmall.product.model.Product"%>
<%@page import="com.shoppingmall.product.model.PanelSize"%>
<%@page import="com.shoppingmall.product.model.Nation"%>
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
<title>AHH 쇼핑몰</title>
<!-- CKEditor -->
<link rel="stylesheet" type="text/css" href = "header.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../jslib/common.js"></script>
<script>
	function del(){

		if(!confirm('삭제하시겠습니까?')){
			return;
		}
		
		productForm.action = "/admin/delete.do";
		productForm.method="post";
		productForm.submit();
	}
</script>
</head>

<body>
	<jsp:include page="common/header.jsp" />

	<!-- 본문영역 -->
	<div class="container">
		<h2>Outer</h2>
		<form name="form1" method = "post" action = "/shopJSP/list.do">
			<input name = "keyword" value = "${map.keyword }">
			<input type = "submit" value = "조회">
			<br>
			<br>
		</form>
		<div class="table-responsive">
			<table class="table table-hover table-condensed">
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
							<input type="hidden" name="product_id" value="<%=product.getProduct_id()%>">
							<input type="hidden" name="filename" value="<%=product.getFilename()%>">
								<a href="/shopJSP/detail.html">
									<div class="col-sm-4">
										<div class="panel panel-primary">
											<div class="panel-heading"><%=product.getProduct_name() %></div>
											<div class="panel-body">
												<img src="/data/<%=product.getProduct_id()%>.<%=FileManager.getExtend(product.getFilename())%>" width = "320" height = "450" alt="Image">
											</div>
											<div class="panel-heading"><%=product.getPrice() %>원</div>
										</div>
									</div>
								</a>
					<%} %>
				</tbody>
				</form>
			</table>
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
	            	<a href="/shopJSP/list.do?currentPage=<%=firstPage-1%>">
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
	            		<a href="/shopJSP/list.do?currentPage=<%=i%>"><%=i %></a></li>
	            	<%} %>
	            
	            <li>
	            	<%if(lastPage+1 < totalPage){ %>
	            		<a href="/shopJSP/list.do?currentPage=<%=lastPage+1%>">
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



