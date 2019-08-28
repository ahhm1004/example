<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@page import="com.shoppingmall.product.model.Product"%>
<%@page import="common.file.FileManager"%>
<% 
	Product product = (Product)request.getAttribute("vo");
%>
<!DOCTYPE html>
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
<style>
	.container{
		padding-top:200px;
	}
</style>
<style>
	.con1{
		margin-top:10px;
	}
</style>
</head>

<body>
	<jsp:include page="common/header.jsp" />


	<!-- 해더끝 -->
	
	<div class="container">
		<div class="col-md-6"  style="border: 1px solid silver;" align="center">
			<img src="/data/<%=product.getProduct_id()%>_thumb.<%=FileManager.getExtend(product.getFilename())%>" alt="Image">
		</div>
		<div class="col-md-6"    align="center">
			<label>상품번호</label><span>${vo.product_id}</span><br> <br>
			<label>상품 명</label><span>${vo.product_name}</span><br> <br> 
			<label>소비자가</label><span>${vo.price}</span><br><br>
			<label>브랜드</label><span>${vo.brand_id}</span><br><br>
			<label>색상</label>
			<select>
				<option>검정</option>
				<option>흰</option>
			</select>
			<br><br>
			<label>사이즈</label>
			<select>
				<option>S</option>
				<option>M</option>
				<option>L</option>
				<option>XL</option>
			</select>
			<br><br><br><br>
			<label>총 가격</label><span>1</span><br><br>
			<div></div>
			<br><br>
			<div align="center">
				<button class="btn btn-default">BUY NOW</button>
				<button class="btn btn-default" onclick="location.href='insertCart.do'">CART</button>
				<button class="btn btn-default">WISH LIST</button>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="container" >
		<div style="border: 1px solid silver;"></div><br>
		<h3>1</h3>
		<div>1</div>
	</div>
	<br>
	<br>
	<br>
	<div class="container" >
		<div style="border: 1px solid silver;"></div><br>
		<h3>1</h3>
		<div>1</div>
	</div>
	<br>
	<br> 
	<div class="container">
	<div style="border: 1px solid silver;"></div><br>
		<h3>1</h3>
		<p>1</p>
		<form class="form-inline" role="form">
			<div>
			<label for="id">1</label><input type="id" class="form-control"
				id="id" placeholder="Enter id">
			</div>
			<br>
			<div >
				<label >1</label><input type="radio">1
			</div>
			<br>
			<div>
				<label>1</label>
			</div>
			<br>
			<div>
				<label>1</label><textarea class="form-control" rows="4" cols="50"></textarea>
				<button class="btn btn-default">1</button>
			</div>
		</form>
		<br>
		<div style="border: 1px solid silver;"></div><br>
		<div style="border: 1px solid silver;" align="center">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>1</th>
							<th>1</th>
							<th>1</th>
							<th>1</th>
							<th>1</th>
							<th>1</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="6">1</td>
						</tr>
					</tbody>
				</table>
			</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	