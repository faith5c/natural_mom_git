<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8"); 

String category = request.getParameter("category");
String submenu = request.getParameter("submenu");

if(category !=null && submenu!=null){
	
	if(category.equals("product")){
		
		switch(submenu){
		case "register":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="register" name="submenu"/>
			</jsp:forward>
<%		break;

		case "manage":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="manage" name="submenu"/>
			</jsp:forward>
<%		break;

		case "deleted":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="deleted" name="submenu"/>
			</jsp:forward>
<%		break;
		}
		
		
	}else if(category.equals("board")){
		
		switch(submenu){
		case "notice":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="notice" name="submenu"/>
			</jsp:forward>
<%		break;

		case "event":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="event" name="submenu"/>
			</jsp:forward>
<%		break;

		case "qna":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="qna" name="submenu"/>
			</jsp:forward>
<%		break;

		case "review":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="review" name="submenu"/>
			</jsp:forward>
<%		break;

		case "faq":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="faq" name="submenu"/>
			</jsp:forward>
<%		break;
		}
		
		
	}else{ 		// sales
		switch(submenu){
		case "table":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="table" name="submenu"/>
			</jsp:forward>
<%		break;

		case "analysis":%>
			<jsp:forward page="http://localhost:8080/naturalmom_project/admin/admin_product.jsp">
				<jsp:param value="analysis" name="submenu"/>
			</jsp:forward>
<%		break;
		}
	}
}
%>
<h1><%= category %></h1>
<h1><%= submenu %></h1>