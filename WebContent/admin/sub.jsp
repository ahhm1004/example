<%@page import="com.shoppingmall.product.model.SubCategory"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<SubCategory> list = (List)request.getAttribute("sub");
	StringBuffer sb = new StringBuffer();	
	sb.append("{");
	sb.append("\"subList\":[");	
		for(int i = 0; i < list.size(); i++){
			SubCategory sub = list.get(i);
			
			sb.append("{");
			sb.append("\"name\":\""+sub.getName()+"\",");
			sb.append("\"subcategory_id\":"+sub.getSubcategory_id());
			if(i < list.size()-1){
				sb.append("},");
			}else{
				sb.append("}");
			}
		}	
	sb.append("]");
	sb.append("}");
	out.print(sb);
%>

