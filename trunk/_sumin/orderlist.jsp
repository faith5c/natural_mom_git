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
				<li><a href="customer_center.jsp">고객센터</a></li>
				<li><a href="mypage.jsp">마이페이지</a></li>
				<li><a href="orderlist.jsp">주문조회</a></li>
				<li><a href="basket.jsp">장바구니</a></li>
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
		
<!--//////////////////////////////////////////////////////////////////////////////////////////////-->
		

		<style type="text/css">
			* { font-family : "나눔바른고딕", "맑은 고딕"; }
			#content { text-align : center; }
			h2 { color : #004523; text-align : left; }
			table { width : 640px; margin : auto; }
			th, td { text-align : center; padding : 5px; }
			td { border-bottom : solid 1px lightgray; }
			
			table tr:first-child td { border-bottom : 0px; padding-bottom : 30px;}
			table tr:nth-child(2) th { background-color : #cccccc; color : white; }
			table tr:last-child td { border-bottom : 0px; text-align : right; }
			table tr:last-child input 
			{
				padding : 7px 30px;
				margin-left : 10px;
				margin-right : 5px;
				margin-top : 20px;
				background-color : #85858D;
				color : white;
				font-size : 16px;
				border-radius : 20px;
				border : 0px;
			}
			table tr:last-child input:hover { opacity : 0.7; }
			table img { width : 50px; height : 50px; }
			table a { text-decoration : none; color : #000000; }

		</style>

		<!--주문내역 조회 부분-->
		
		
		<form action="#" method="post">
				<table cellspacing="0">
					<tr>
						<td colspan = "8"><h2>주문내역 조회</h2></td>
					</tr>
					<tr>
						<th>선택</th>
						<th>주문번호</th>
						<th>주문일자</th>
						<th>상품이미지</th>
						<th>상품명</th>
						<th>수량</th>
						<th>결제금액</th>
						<th>처리상태</th>
					</tr>
					<tr>
						<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
						<td>155553</td>
						<td>2016/03/05</td>
						<td><img src="images/soap11.jpg" alt="쑥비누사진"></td>
						<td><a href="#">쑥비누</a></td>
						<td>1</td>
						<td>4300원</td>
						<td>배송준비중</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
						<td>155553</td>
						<td>2016/03/05</td>
						<td><img src="images/soap1.jpg" alt="아마씨비누사진"></td>
						<td><a href="#">아마씨비누</a></td>
						<td>2</td>
						<td>7000원</td>
						<td>배송준비중</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
						<td>122332</td>
						<td>2015/01/12</td>
						<td><img src="images/soap12.jpg" alt="뽕잎비누사진"></td>
						<td><a href="#">뽕잎비누</a></td>
						<td>2</td>
						<td>7300원</td>
						<td>구매확정</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
						<td>122332</td>
						<td>2015/01/12</td>
						<td><img src="images/soap1.jpg" alt="아마씨비누사진"></td>
						<td><a href="#">아마씨비누</a></td>
						<td>4</td>
						<td>21300원</td>
						<td>구매확정</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
						<td>112311</td>
						<td>2014/09/01</td>
						<td><img src="images/soap4.jpg" alt="함초비누사진"></td>
						<td><a href="#">함초비누</a></td>
						<td>1</td>
						<td>4500원</td>
						<td>배송완료</td>
					</tr>
					<tr>
						<td colspan="8">
						<input type="button" value="환불신청">
						<input type="button" value="구매확정">
						</td>
					</tr>
				</table>
		</form>
		
<!--//////////////////////////////////////////////////////////////////////////////////////////////-->

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