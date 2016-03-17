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
	<link rel="stylesheet" href="css/product_menu.css"/>
		
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
		<!--상품나열(천연비누모음)-->
		<!-- JSP로 구현해야할 부분 -->
		<section>
			<p>상품종류 : 천연비누모음</p>

			<div>
			<a href="#"><img src="images/soap12.jpg" alt="뽕잎비누"></a>
			<p><span>맑은 피부톤을 위한 </span>뽕잎비누</p>
			<p>4300원</p>
			</div>
			
			<div>
			<a href="#"><img src="images/soap11.jpg" alt="쑥비누"></a>
			<p><span>풍부한 무기질과 비타민의 </span>쑥비누</p>
			<p>4300원</p>
			</div>

			<div>
			<a href="#"><img src="images/soap10.jpg" alt="발효어성초비누"></a>
			<p><span>지성 피부를 위한 </span>발효어성초비누</p>
			<p>4500원</p>
			</div>

			<div>
			<a href="#"><img src="images/soap9.jpg" alt="로즈마리비누"></a>
			<p><span>보습 및 피부 탄력을 위한 </span>로즈마리비누</p>
			<p>4500원</p>
			</div>

			<div>
			<a href="#"><img src="images/soap8.jpg" alt="감초비누"></a>
			<p><span>민감한 살결에 좋은 </span>감초비누</p>
			<p>3900원</p>
			</div>
	
			<div>		
			<a href="#"><img src="images/soap7.jpg" alt="편백나무비누"></a>
			<p><span>피톤치드가 함유되어있는 </span>편백나무비누</p>
			<p>4300원</p>
			</div>

			<div>
			<a href="#"><img src="images/soap6.jpg" alt="캐모마일비누"></a>
			<p><span>연약한 살결에 추천하는 </span>캐모마일비누</p>
			<p>4500원</p>
			</div>

			<div>
			<a href="#"><img src="images/soap5.jpg" alt="강황비누"></a>
			<p><span>트러블 살결 추천! </span>강황비누</p>
			<p>4300원</p>
			</div>

			<div>		
			<a href="#"><img src="images/soap4.jpg" alt="함초비누"></a>
			<p><span>잡티, 트러블 제거에 도움되는 </span>함초비누</p>
			<p>4500원</p>
			</div>

			<div>		
			<a href="#"><img src="images/soap3.jpg" alt="어성초비누"></a>
			<p><span>살결의 청결과 진정을 위한 </span>어성초비누</p>
			<p>3900원</p>
			</div>

			<div>		
			<a href="#"><img src="images/soap2.jpg" alt="붉나무비누"></a>
			<p><span>건강하고 생기있는 살결을 위해! </span>붉나무비누</p>
			<p>5500원</p>
			</div>

			<div>	
			<a href="#"><img src="images/soap1.jpg" alt="아마씨비누"></a>
			<p><span>영양 가득한 생명의 씨앗 </span>아마씨비누</p>
			<p>3500원</p>
			</div>
	
		</section>
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
