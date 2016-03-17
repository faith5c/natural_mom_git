<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
	
	<link rel="apple-touch-icon" href="images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel = "stylesheet" href="css/etc_menu.css"/>

	<title>자연맘</title>  

  </head>
  <body>


	<header>
			<%@include file="_default_header.jsp" %>
	</header>

	
	<div id="container">
		<%@include file="_default_menu.jsp" %>
		<!-------------Start content--------------------------------------------------->
		<div id="content">
		
		<img class="company_img2" src="images/info_system.jpg" alt="제조시스템">

		</div>
		<!--------------------------------------------------end content--------->
	</div><!--end container-->
	

	<footer>
		<%@include file="_default_footer.jsp" %>
	</footer>


  </body>
</html>
