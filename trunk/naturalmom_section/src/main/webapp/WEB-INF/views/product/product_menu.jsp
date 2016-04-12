<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="resources/js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
	
	<link rel="apple-touch-icon" href="resources/images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="resources/images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel="stylesheet" href="resources/css/product_menu.css"/>
		
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
		
	</div><!--end container-->


	<footer>
		<%@include file="../_default_footer.jsp" %>
	</footer>


  </body>
</html>
