<%@page import="com.shoppingmall.product.model.ProductStock"%>
<%@page import="com.shoppingmall.product.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Product product = (Product)request.getAttribute("product");
	String[][] stockKind = (String[][])request.getAttribute("stockKind");
	int stockNumColor = (int)request.getAttribute("stockNumColor");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>관리자 페이지</title>
	<!-- CKEditor -->
	<script src="//cdn.ckeditor.com/4.11.2/standard/ckeditor.js"></script>
	<script src="../jslib/common.js"></script>
	<script>
	
		// 상품등록하기
		function stockUpdate(){
			
			// 숫자만 입력 여부 검사.
			//var notNum = numChk();
			//if(notNum){
			//	return;
			//}
			
			registForm.action="/admin/stockModify.do";
			registForm.method="post";
			registForm.encoding="multipart/form-data";
			registForm.submit();			
		}
		
		// 숫자여부 검사
		function numChk(){
			var notNumFlag = false;
			
			var price = registForm.price.value;
			var priceFlag = notNumber(price, registForm.price);
									
			
			if(priceFlag || discountFlag || pointFlag){
				notNumFlag = true;
			}
			
			return notNumFlag;
		}
		
	</script>
</head>

<body>
	<!-- 상단 메뉴 -->
	<%@ include file="/include/adminTopNav.jsp" %>
	<div>
	<!-- 좌측메뉴 -->
	<%@ include file="/include/adminSideNav.jsp" %>

	<!-- 본문영역 -->
	<div class="container">
		<h1 align="center">상품정보변경</h1>
		<form class="form-horizontal" role="form" name="registForm">			
			<div class="form-group">
				<label class="col-sm-2 control-label">상품명</label>
				<div class="col-sm-3">
					<input class="form-control" name="product_name" type="text" value="${product.getProduct_name() }">
					<input class="fomr-control" name="product_id" type="hidden" value="${product.getProduct_id()}">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">사이즈</label>
				<div class="col-sm-1">
					<input class="form-control" name="sizeName_s" type="text" value="S" style = "text-align:center;" readonly>
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="sizeName_m" type="text" value="M" style = "text-align:center;" readonly>
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="sizeName_l" type="text" value="L" style = "text-align:center;" readonly>
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="sizeName_xl" type="text" value="XL" style = "text-align:center;" readonly>
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="sizeName_xxl" type="text" value="XXL" style = "text-align:center;" readonly>
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="sizeName_free" type="text" value="Free" style = "text-align:center;" readonly>
				</div>								
			</div>
			<%for(int i = 0;i<stockNumColor; i++){ %>
			<div class="form-group">
				<label class="col-sm-2 control-label"><%=stockKind[i][0] %></label>
				<div class="col-sm-1">
					<input class="hidden" name="color" type="text" value="<%=stockKind[i][0] %>">
					<input class="form-control" name="size_s" type="text" value="<%=stockKind[i][1] %>">
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="size_m" type="text" value="<%=stockKind[i][2] %>">
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="size_l" type="text" value="<%=stockKind[i][3] %>">
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="size_xl" type="text" value="<%=stockKind[i][4] %>">
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="size_xxl" type="text" value="<%=stockKind[i][5] %>">
				</div>
				<div class="col-sm-1">
					<input class="form-control" name="size_free" type="text" value="<%=stockKind[i][6] %>">
				</div>								
			</div>
			<%} %>
											

			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-10">
					<input type="button" class="btn btn-success" value="재고 추가하기" onClick="stockUpdate()">
				</div>
			</div>
		</form>
	</div>
	</div>
	<!-- 부트스트랩 관련 불러오기!! -->
	<%@ include file="/include/loadBootStrap.jsp"%>
</body>
</html>
