<%@page import="com.shoppingmall.product.model.Brand"%>
<%@page import="com.shoppingmall.product.model.TopCategory"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Map allList = (Map)request.getAttribute("allList");
	
	List<TopCategory> topCategoryList = (List)allList.get("topCategoryList");
	List<Brand> brandList = (List)allList.get("brandList");
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
		// 서브카테고리 얻기!!
		function getSubCategory(){
			// ajax 포스트방식
			$.post("/admin/sub.do",
				    { topcategory_id: registForm.topcategory_id.value },
				    function(data){
				    	var obj = JSON.parse(data);
				    	var arr = obj.subList;
				    	
				    	console.log(arr);
				    	
				    	// 하위 카테고리 셀렉트 박스 얻기
						var sub = document.getElementById("sub");					
						var len = sub.length;
						//기존값 지우기
						for(var i = 0; i < len; i++){
							sub.remove(1);
						}
						// 옵션생성
						for(var i = 0; i < arr.length; i++){
							var option = document.createElement("option");
							option.text = arr[i].name;
							option.value = arr[i].subcategory_id;
							sub.add(option);
						}
				    }	        
			); // ajax
		}
		
		// 상품등록하기
		function modify(){
			// 선택 안한거 검사
			if(registForm.subcategory_id.value==0){
				alert("카테고리를 선택해주세요.");
				return;
			}else if(registForm.product_name.value==""){
				alert("상품명을 입력해주세요.");
				return;
			}else if(registForm.brand_id.value == 0){
				alert("브랜드를 선택해주세요.");
				return;
			}else if(registForm.myFile.value==""){
				alert("이미지를 첨부해주세요.");
				return;
			}
			
			
			
			// 숫자만 입력 여부 검사.
			var notNum = numChk();
			if(notNum){
				return;
			}
			
			
			registForm.action="/admin/modify.do";
			registForm.method="post";
			registForm.encoding="multipart/form-data";
			registForm.submit();			
		}
		
		// 숫자여부 검사
		function numChk(){
			var notNumFlag = false;
			
			var price = registForm.price.value;
			var priceFlag = notNumber(price, registForm.price);
									
			var discount = registForm.discount.value;
			var discountFlag = notNumber(discount, registForm.discount);
			
			var point = registForm.point.value;
			var pointFlag = notNumber(point, registForm.point);
			
			if(priceFlag || discountFlag || pointFlag){
				notNumFlag = true;
			}
			
			return notNumFlag;
		}
		
		// 이미지 미리보기
		function preview(){
			var thumb = document.getElementById("thumb");
			var filename = document.getElementById("filename");
			var fileList = filename.files;
			
			// 이미지인지 여부 확인!!
			var imgFlag = chkExt(filename.value);
			if(!imgFlag){
				alert("이미지 파일만 올려주세요!!");
				return;
			}
			
			var reader = new FileReader();
			reader.readAsDataURL(fileList[0]);
			
			// FileReader가 읽기를 끝마치면,
			reader.onload = function(event) {
				var img = new Image();
				img.src = event.target.result;
				img.style.height=100+"px";
				
				thumb.innerHTML = '';
				thumb.appendChild(img);
			};
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
				<input class="form-control" name="product_id" type="hidden" value="${product.product_id }" >
			<div class="form-group">
				<label class="col-sm-2 control-label">상위카테고리</label>
				<div class="col-sm-10">
					<select id="topCategory" class="form-control" onChange="getSubCategory()" name="topcategory_id" >
						<option value = ${product.topcategory_name }>${product.topcategory_name }</option>
						<%for(int i = 0; i < topCategoryList.size(); i++){ %>
						<% TopCategory topCategory = topCategoryList.get(i); %>
							<option value="<%=topCategory.getTopcategory_id()%>"><%=topCategory.getName() %></option>
						<%} %>
					</select>
				</div>
			  	<label class="col-sm-2 control-label">하위카테고리</label>
				<div class="col-sm-10">
					<select id="sub" class="form-control" name="subcategory_id">
						<option value = ${product.subcategory_id }>${product.subcategory_name }</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">상품명</label>
				<div class="col-sm-10">
					<input class="form-control" name="product_name" type="text" value="${product.product_name }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">브랜드</label>
				<div class="col-sm-10">
					<select id="brand_id" class="form-control" name="brand_id">
						<option value = ${product.brand_id }>${product.brand_name }</option>
						<%for(int i = 0; i < brandList.size(); i++){ %>
						<% Brand brand = brandList.get(i); %>
							<option value="<%=brand.getBrand_id()%>"><%=brand.getName() %></option>
						<%} %>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">가격</label>
				<div class="col-sm-10">
					<input class="form-control" name="price" type="number" placeholder="숫자만 입력해주세요." min="0" value = "${product.price }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">할인가격</label>
				<div class="col-sm-10">
					<input class="form-control" name="discount" type="number" placeholder="숫자만 입력해주세요." min="0" value = "${product.discount }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">포인트</label>
				<div class="col-sm-10">
					<input class="form-control" name="point" type="number" placeholder="숫자만 입력해주세요." min="0" value = "${product.point }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">상품이미지</label>
				<div class="col-sm-10">
					<input name="myFile" type="file" onChange="preview()" id="filename">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">이미지 미리보기</label>
				<div class="col-sm-10" id="thumb">
					
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">상세설명</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="10" id="detail1" name="detail" style="padding:10px;border:1px gray solid; min-height:480px;" contenteditable="true" >
					${product.detail }

					</textarea>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-10">
					<input type="button" class="btn btn-success" value="상품정보변경" onClick="modify()">
				</div>
			</div>
		</form>
	</div>
	</div>
	<!-- 부트스트랩 관련 불러오기!! -->
	<%@ include file="/include/loadBootStrap.jsp"%>
</body>
</html>
