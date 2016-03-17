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
			<li><a href="#">상품</a></li>
			<li><a href="#">주문</a></li>
			<li><a href="#">회원</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">매출</a></li>
		</ul>
		</nav>
			
	</header>
<!-----------------------------------------------------------end header ----------->	
<!---Start container----------------------------------------------------------------->
	
<%@ include file="admin_product_analysis.jsp" %>

<!--------------------------------------------------------end container------------->
  </body>

</html>
