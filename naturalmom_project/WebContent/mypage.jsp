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
	<link rel="stylesheet" href="css/mypage.css" />

	<title>자연맘</title>  
  </head>

  <body>
<!--  Start header --------------------------------------------------------------------->
	<header>

			<%@include file="_default_header.jsp" %>

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
					<li id="product_menu_li_1"><a href="product_menu.jsp">공지사항</a></li>
					<li id="product_menu_li_2"><a href="product_menu.jsp">아토피/민감성/유아</a></li>
					<li id="product_menu_li_3"><a href="product_menu.jsp">피부탄력/노화</a></li>
					<li id="product_menu_li_4"><a href="product_menu.jsp">지성/여드름/트러블</a></li>
					<li id="product_menu_li_5"><a href="product_menu.jsp">미백/피부톤개선</a></li>	
				</ul>
			</nav>
		</section>
	
		<!-------------Start content--------------------------------------------------->
		<div id="content">
			<div id="sidebar">
				<ul>
					<li><a href="#" onclick="wishlist()">관심상품</a></li>
					<li><a href="#" onclick="edit_member()">회원정보 수정</a></li>
				</ul>
			</div>
			<div id="content_body">
			
			</div>
		

		</div>
		<!--------------------------------------------------end content--------->
	</div>
<!--------------------------------------------------------end container------------->
<!--Start footer---------------------------------------------------------------------->
	<footer>
		
		<%@include file="_default_footer.jsp" %>
		
	</footer>
<!-------------------------------------------------------------end footer----------->		
  </body>
</html>

<!---------------------------------------------------------Script --------------------->
<script type="text/javascript">
	function edit_member() {
		var edit_page = 'http://localhost:8082/naturalmom_project/_edit_member.jsp';
		$('#content_body').load(edit_page); 
	}
	function wishlist() {
		var wish_page = 'http://localhost:8082/naturalmom_project/_wishlist.jsp';
		$('#content_body').load(wish_page); 
	}
</script>
