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
	<link rel="stylesheet" href="css/membership.css" />

	<title>자연맘</title>  
  </head>

  <body>
<!--  Start header --------------------------------------------------------------------->
	<header>

		<!--유저메뉴-->
		<nav id = "user_menu_pc">
			<ul>
				<li><a href="#">고객센터</a></li>
				<li><a href="#">마이페이지</a></li>
				<li><a href="#">주문조회</a></li>
				<li><a href="#">장바구니</a></li>
				<li><a href="membership.jsp">회원가입</a></li>
				<li><a href="login.jsp">로그인</a></li>
			</ul>
		</nav>

		<!--로고(공통)-->
		<a href="index.jsp"><img id="logo" src="images/logo_gray.gif" alt="로고"></a>
			
	</header>
<!-----------------------------------------------------------end header ----------->	
<!---Start container----------------------------------------------------------------->
	
	<div id="container">
		<section>
			
			<!--검색-->
			<p id="search_pc"><label for="find">search </label><input type="text" size = 10; id="find"><a href="#"><img src="images/btn_search.gif"></a></p>

			<!--메인배너-->
			<div id = "main_banner"></div>


			<!--상품메뉴-->
			<nav id = "product_menu">
				<ul >
					<li id="product_menu_li_1"><a href="product_menu.jsp">천연비누모음</a></li>
					<li id="product_menu_li_2"><a href="product_menu.jsp">아토피/민감성/유아</a></li>
					<li id="product_menu_li_3"><a href="product_menu.jsp">피부탄력/노화</a></li>
					<li id="product_menu_li_4"><a href="product_menu.jsp">지성/여드름/트러블</a></li>
					<li id="product_menu_li_5"><a href="product_menu.jsp">미백/피부톤개선</a></li>	
				</ul>
			</nav>
		</section>
	
		<!-------------Start content--------------------------------------------------->
		<div id="content">
		
		<!--회원가입 폼-->
		<form action="#" method="post">
			<% %>				
		</form>
		

		</div>
		<!--------------------------------------------------end content--------->
	</div>
<!--------------------------------------------------------end container------------->
<!--Start footer---------------------------------------------------------------------->
	<footer>
		
		<!--회사메뉴-->
		<nav id="company_menu">
			<ul>
				<a href="company_menu_1.jsp">회사소개</a>
				<a href="company_menu_2.jsp">Natural 시스템</a>
				<a href="company_menu_3.jsp">Natural 파머스</a>
			</ul>
		</nav>

		<address>상호 : 한결유통&nbsp;&nbsp;
		주소 : 전북 남원시 광치농공 2길 36&nbsp;&nbsp;
		전화번호 : 1800-9388&nbsp;&nbsp;<br>
		이메일 : naturalmom@nate.com<br>
		<em>copyright&copy; 자연맘 All Right Reserved</em><br>
		</address>
	</footer>
<!-------------------------------------------------------------end footer----------->		
  </body>
</html>
