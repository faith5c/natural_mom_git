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
	<link rel="stylesheet" href="css/admin_common.css"/>
		
	<title>자연맘</title>
	
   </head>

  <body>
<!--  Start header --------------------------------------------------------------------->
	<header>

		<!--관리자 정보메뉴-->
		<nav id = "admin_info_menu">
			<ul>
				<li><a href="#">정보 수정</a></li>
				<li><a href="#">로그아웃</a></li>
			</ul>
			<h3>관리자 모드입니다.</h3>
		</nav>

		<!--관리메뉴-->
		<nav id = "admin_menu">
		<ul>
			<li>
				<a href="#">상품</a>
				<div id="sub">
					<ul>
						<li>상품등록</li>
						<li>상품관리</li>
						<li>삭제상품</li>
					</ul>
				</div>
			</li>
			<li><a href="#">주문</a></li>
			<li><a href="#">회원</a></li>
			<li>
				<a href="#">게시판</a>
				<div id="sub">
					<ul>
						<li>공지사항</li>
						<li>이벤트</li>
						<li>Q&A</li>
						<li>상품후기</li>
						<li>자주하는 질문</li>
					</ul>
				</div>
			</li>
			<li>
				<a href="#">매출</a>
				<div id="sub">
					<ul>
						<li>매출조회</li>
						<li>판매분석</li>
					</ul>
				</div>
			</li>
		</ul>
		</nav>
			
	</header>
<!-----------------------------------------------------------end header ----------->	
<!---Start container----------------------------------------------------------------->
	
	<div id="container">

	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>
