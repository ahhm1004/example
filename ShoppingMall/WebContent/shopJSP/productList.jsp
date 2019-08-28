<%@page import="common.page.PagingBean"%>
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
	Product productPage = list.get(0);
%>
<html lang="en">
<head>
<title>AHH 쇼핑몰</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="common/header.jsp" />

<style>
body .container {
	z-index: 1;
	width: 1400px;
	height: 500px;
}

.productImageAll {
	position: relative;
	top: 15px;
	width: 1400px;
	height: auto;
	margin-left: auto;
	margin-right: auto;

}

.productImageLine {
	height: auto;
	list-style: none;
	text-align: center;
	padding-left: 0px;
	margin-left: 20px;
}

.productImagePiece {
	display: inline-block;
	margin-right: 20px;
	width: 320px;
	height: 550px;
	text-align: center;
}

.img-responsive {
	height: 380px;
}

.productImageDetail {
	width: 90%;
	margin: 0 auto;
	padding: 0;
	text-align: center;
}

footer .contaier-fruid {
	pdding-top: 15px;
}

</style>
</head>
<body>
	<div class="productImageAll">
		<ul class="productImageLine">
				<%
					int num = pb.getNum();
					int curPos = pb.getCurPos();
				%>
				<%for(int i = 0; i < pb.getPageSize(); i++){ %> 
				<%if(num < 1)break; %>
				<%Product product = list.get(curPos++); %>
			<li class="productImagePiece">
				<a href="/shopJSP/detail.do?product_id=<%=product.getProduct_id() %>"> 
				<img src="/data/<%=product.getProduct_id()%>_thumb.<%=FileManager.getExtend(product.getFilename())%>">
				</a>
				<div class="productImageDetail">
					<p><%=product.getProduct_name()%></p>
					<p>4color S/M/L/XL 사이즈</p>
					<p><%=product.getPrice() %>원</p>
				</div>
			</li>
			<% num--; %>
			<%} %>
		</ul>
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
	            	<%if(productPage.getSubcategory_id()==0){ %>
	            		<a href="/shopJSP/productList.do?topcategory_id=<%=productPage.getTopcategory_id() %>&currentPage=<%=firstPage-1%>">
	            		<%} else{ %>
	            		<a href="/shopJSP/productList.do?topcategory_id=<%=productPage.getTopcategory_id() %>&subcategory_id=<%= productPage.getSubcategory_id()%>&currentPage=<%=firstPage-1%>">
	            		<%} %>
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
	            		<%if(productPage.getSubcategory_id()==0){ %>
	            		<a href="/shopJSP/productList.do?topcategory_id=<%=productPage.getTopcategory_id() %>&currentPage=<%=i%>"><%=i %></a></li>
	            		<%} else{ %>
	            		<a href="/shopJSP/productList.do?topcategory_id=<%=productPage.getTopcategory_id() %>&subcategory_id=<%= productPage.getSubcategory_id()%>&currentPage=<%=i%>"><%=i %></a></li>
	            		<%} %>
	            	<%} %>
	            
	            <li>
	            	<%if(lastPage+1 < totalPage){ %>
	            		<%if(productPage.getSubcategory_id()==0){ %>
	            		<a href="/shopJSP/productList.do?topcategory_id=<%=productPage.getTopcategory_id() %>&currentPage=<%=lastPage+1%>">
	            		<%} else{ %>
	            		<a href="/shopJSP/productList.do?topcategory_id=<%=productPage.getTopcategory_id() %>&subcategory_id=<%= productPage.getSubcategory_id()%>&currentPage=<%=lastPage+1%>">
	            		<%} %>
	            	<%}else{ %>
	            		<a href="javascript:alert('마지막 페이지 입니다!!')">
	            	<%} %>
	            <span class="glyphicon glyphicon-chevron-right"></span></a></li>
	          </ul>
          </div>
	</div>
</body>
</html>