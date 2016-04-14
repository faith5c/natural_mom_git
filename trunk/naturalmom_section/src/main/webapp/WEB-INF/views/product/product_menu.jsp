<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="resources/js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
	
	<link rel="apple-touch-icon" href="../resources/images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="../resources/images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel="stylesheet" href="../resources/css/product_menu.css"/>
		
	<title>자연맘</title>
  </head>
  <body>


	<header>
		<%@include file="../_default_header.jsp" %>
	</header>

	
	<div id="container">
		<%@include file="../_default_menu.jsp" %>
		<!-------------Start content--------------------------------------------------->
		<div id="content">
		<!--상품나열(천연비누모음)-->
		<!-- JSP로 구현해야할 부분 -->
		<section>
			<p>상품종류 : ${category_name}</p>
			
			<c:forEach var="pl" items="${product_list}">
				<div>
				<a href="#"><img src="${pl.represent_img}" alt="${pl.product_name}"></a>
				<p><span>${pl.summary_ex}</span>&nbsp;${pl.product_name}</p>
				<p>${pl.selling_price}원</p>
				</div>
			</c:forEach>
			
		</section>
		</div>
		<!--------------------------------------------------end content--------->
		
	</div><!--end container-->


	<footer>
		<%@include file="../_default_footer.jsp" %>
	</footer>


  </body>
  
  
  
  
  
  
  
</html>
