<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="../js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
	
	<link rel="apple-touch-icon" href="images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel="stylesheet" href="css/admin_common.css"/>
		
	<title>자연맘</title>
	
   </head>
  <body>

	<header>
		<%@include file="_default_header.jsp" %>
	</header>

<!---Start container----------------------------------------------------------------->
	
	<div id="container">
	
<% String page_param = request.getParameter("page"); %>

<% if (page_param != null && page_param.equals("register")) { %>
	<%@ include file = "_admin_product_register.jsp" %>
<% } else if (page_param != null && page_param.equals("manage")) { %>
	<%@ include file = "_admin_product_manage.jsp" %>
<% } else if (page_param != null && page_param.equals("deleted")) {%>	
	<%@ include file = "_admin_product_deleted.jsp" %>
<% } else { %>
	<%@ include file = "_admin_product_register.jsp" %>
<% } %>
	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>
