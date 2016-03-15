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
				<li><a href="admin_edit_admin.jsp">정보 수정</a></li>
				<li><a href="admin_logout.jsp">로그아웃</a></li>
			</ul>
			<h3>관리자 모드입니다.</h3>
		</nav>

		<!--관리메뉴-->
		<nav id = "admin_menu">
		<ul>
			<li>
				<a href="admin_product.jsp">상품</a>
				<div id="sub">
					<ul>
						<li><a href="#">상품등록</a></li>
						<li><a href="#">상품관리</a></li>
						<li><a href="#">삭제상품</a></li>
					</ul>
				</div>
			</li>
			<li><a href="admin_order.jsp">주문</a></li>
			<li><a href="admin_member.jsp">회원</a></li>
			<li>
				<a href="admin_board.jsp">게시판</a>
				<div id="sub">
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">이벤트</a></li>
						<li><a href="#">Q&A</a></li>
						<li><a href="#">상품후기</a></li>
						<li><a href="#">자주하는 질문</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="admin_sales.jsp">매출</a>
				<div id="sub">
					<ul>
						<li><a href="#">매출 조회</a></li>
						<li><a href="#">매출 분석</a></li>
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
