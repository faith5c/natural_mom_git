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
	<link rel="stylesheet" href="css/product_soap.css"/>
		
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
			<div id="soap_img">
				<img src="images/soap1.jpg" alt="아마씨사진"/>
			</div>
			
			<div id="soap_table">
				<table>
					<tr>
						<td colspan="2">아마씨 비누 100g</td>
					</tr>
					<tr>
						<td colspan="2">영양 가득한 생명의 씨앗</td>
					</tr>
					<tr>
						<td>판매 가격</td>
						<td>3500원</td>
					</tr>
					<tr>
						<td>유통 기한</td>
						<td>상품 수령 후 1년</td>
					</tr>
					<tr>
						<td>중량</td>
						<td>100g</td>
					</tr>
					<tr>
						<td>구매 수량</td>
						<td><input type="number" min="1" max="100" step="1" value="1" size="3"/></td>
					</tr>
					<tr>
						<td colspan="2">
							총계
							<label id="total">3500</label>원
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<button>장바구니</button>
						<button>바로구매</button>
						</td>
					</tr>
				</table>
			</div>
			
			<p>상품설명</p>
			<div>
				<img id="soap_desc" src="images/soap1_desc.jpg" alt="아마씨설명"/>
			</div>
			<p>배송정보</p>
			<div>
				<img src="images/info_delivery.jpg" alt="배송정보"/>
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
