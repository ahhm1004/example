<%@page import="com.shoppingmall.product.model.EventInfo"%>
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
	String eventName = "이벤트설정";
	List<Product> list = (List)request.getAttribute("list");
	PagingBean pb = (PagingBean)request.getAttribute("pb");
	List<EventInfo> eventList = (List)request.getAttribute("eventList");
	int event_id = 0;
	if(request.getAttribute("event_id") != null){
		event_id = (int)request.getAttribute("event_id");
		switch(event_id){
			case 1:
				eventName="메인노출상품";
				break;
			case 2:
				eventName="베스트상품";
				break;
			case 3:
				eventName="신상품";
				break;
			case 4:
				eventName="추천상품";
				break;
		}
	}
		
	
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
	// 이벤트 등록
	function eventRegist(){
		var chkcount = 0;
		var product_id = [];
		// 상품체크여부확인
		if(eventForm.product_id.length == null){
			if(eventForm.product_id.checked){
				chkcount++;
			}
		}
		
		for(var i = 0; i < eventForm.product_id.length; i++){
			if(eventForm.product_id[i].checked){
				chkcount++;
				product_id.push(eventForm.product_id[i].value);
			}
		}
		
		if(chkcount == 0){
			alert("이벤트 등록할 상품을 선택해 주세요.");
			return;
		}
		
		
		// 이벤트 중복 등록 방지
		$.post("/admin/duplicateEvent.do",
			    { product_id: product_id, eventinfo_id: eventForm.eventinfo_id.value },
			    function(data){
			    	var obj = JSON.parse(data);
			    	console.log(obj);
			    	if(obj == false){
			    		eventForm.action="/admin/eventRegist.do";
			    		eventForm.method="post";
			    		eventForm.submit();
			    	}else{
				    	var arr = obj.productList;
				    	console.log(obj.productList);
				    	var msg = "상품의 이벤트가 중복됩니다.!!\n";
				    	for(var i = 0; i < obj.productList.length; i++){
				    		msg = msg +"--> " + arr[i].product_name+"\n";
				    	}
				    	alert(msg);
				    	return;
			    	}
			    }	        
		); // ajax
		
	}
	
	// 이벤트 정렬
	function selectEvent(){
		sortForm.action="/admin/eventSelect.do";
		sortForm.method="post";
		sortForm.submit();
	}
	
	// 이벤트삭제
	function eventDelete(){
		var chkcount = 0;
		// 상품체크여부확인
		for(var i = 0; i < eventForm.product_id.length; i++){
			if(eventForm.product_id[i].checked){
				chkcount++;
			}
		}
		
		if(chkcount == 0){
			alert("이벤트 등록할 상품을 선택해 주세요.");
			return;
		}
		
		eventForm.action="/admin/eventDelete.do";
		eventForm.method="post";
		eventForm.submit();
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
		<h2><%=eventName %></h2>
		<form role="form" name="sortForm">
		    <div class="form-group">
		    <!-- 이벤트 정보 -->
		      <select class="form-control" id="sel1" onChange="selectEvent()" name="eventinfo_id">
		        <option value = "0">이벤트목록</option>
	        	<option value="-1">전체상품보기</option>
		        <%for(int i = 0; i < eventList.size(); i++){ %>
		        <%EventInfo eventInfo = eventList.get(i); %>
		        	<option value="<%=eventInfo.getEventinfo_id()%>"><%=eventInfo.getTitle() %></option>
		        <%} %>
		      </select>
		     </div>
		   </form>
		<form name="eventForm">
		<% if(event_id != 0){ %>
			<input type="hidden" value="<%=event_id%>" name="event_id">
		<%} %>
		<div class="table-responsive">
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th>#</th>						
						<th>번호</th>
						<th>이미지</th>
						<th>상품명</th>
						<th>브랜드</th>
						<th>제조국가</th>
						<th>화면크기</th>
						<th>가격</th>
						<th>할인가</th>
						<th>포인트</th>
						<th>재고량</th>
						<th>상품등록일</th>
					</tr>
				</thead>
				<!-- 테이블 본문 -->
				<tbody>
					<%
						int num = pb.getNum();
						int curPos = pb.getCurPos();
					%>
					<%for(int i = 0; i < pb.getPageSize(); i++){ %>
					<%if(num < 1)break; %>
					<%Product product = list.get(curPos++); %>
					<tr>
						<td><input type="checkbox" name="product_id" value="<%=product.getProduct_id()%>"></td>
						<td><%=num--%></td>
						<td><img src="/data/<%=product.getProduct_id()%>_thumb.<%=FileManager.getExtend(product.getFilename())%>"></td>
						<td><%=product.getProduct_name() %></td>
						<td><%=product.getBrand_name() %></td>
						<td><%=product.getNation_name() %></td>
						<td><a href="#myModal" data-toggle="modal">화면크기</a></td>
						<!-- 모달정의 -->
						<div id="myModal" class="modal fade" role="dialog">
							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">화면크기</h4>
									</div>
									<div class="modal-body">
										<p>
											<%List<PanelSize> pList = product.getPanelSize(); %>
											<%for(int j = 0; j < pList.size(); j++){ %>
												<%PanelSize psize = pList.get(j); %>
												<%if(j < pList.size()-1){ %>
													<%=psize.getName()+", "%>
												<%}else{ %>
													<%=psize.getName()%>
												<%} %>
												
											<%} %>							
										</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
									</div>
								</div>
							
							</div>
						</div>
						<td><%=product.getPrice() %></td>
						<td><%=product.getDiscount() %></td>
						<td><%=product.getPoint() %></td>
						<td><%=product.getStock() %></td>
						<td><%=product.getRegdate() %></td>
					</tr>
					<%} %>
				</tbody>
			</table>
		</div>
			<div>
				<div class="form-group col-sm-2">
				  <select class="form-control" id="sel1" name = "eventinfo_id">
				    <option value="0">이벤트 선택</option>
				    <!-- 이벤트 등록 -->
					    <%for(int i = 0; i < eventList.size(); i++){ %>
		        		<%EventInfo eventInfo = eventList.get(i); %>
				 		   <option value="<%=eventInfo.getEventinfo_id() %>"><%=eventInfo.getTitle() %></option>
				 	   <%} %>
				  </select>
				</div>
				
				<input type="button" class="btn btn-default" value="이벤트등록" onClick="eventRegist()">
				<input type="button" class="btn btn-default" value="이벤트삭제" onClick="eventDelete()">
			</div>
		</form>
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
