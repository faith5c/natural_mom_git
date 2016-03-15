
<!-- 

admin_매출_판매분석  *  현재 페이지






admin_매출_매출관리
admin_게시판_상품후기_목록
admin_게시판_상품후기_내용


 -->



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	int process = request.getParameter("process"); //처리상태
	String name = request.getParameter("name"); //상품명
%>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->

	<link rel="apple-touch-icon" href="images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel="stylesheet" href="css/admin_common.css"/>
		
	<title>자연맘</title>

	<style type = "text/css">
		#container { width : 1024px; margin : 100px auto; color: #85858d; }
		
		h2 { margin-bottom : 15px; }
		
		table { width: 100%; padding : 0px; }
		table tr:first-child td { border-top : 1px solid grey; }
		table tr:nth-child td:first-child { border-left : 1px solid grey; }
		table tr td { padding : 10px; }
		table tr:first-child td
		{
			border-bottom : 1px solid lightgrey;
			margin : 0px;
		}
		table tr:nth-child(1) td
		{ 
			margin : 0px;
		}

		table tr:last-child td
		{ 
			border-bottom : 1px solid lightgrey;	
			margin : 0px;
		}

	</style>
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

    
    
    <div id="container">
		<h2 id = "product_rank"> 판매 상품 순위</h2>
		<form action = "#" method = "post">
			<table cellspacing = "0">
				<tr>
						<td>
							<select name = "rank" id = "rank">
							<option>순위</option>
							</select>
						</td>
						<td>
							<select name = "name" id = "name">
							<option>상품명</option>
							</select>
						</td>
						<td>
							<select name = "total" id = "total">
							<option>누적 판매 수</option>
							</select>
						</td>
				</tr>			
				<tr>
					<td><label for = "rank"> 1 </label></td>
					<td><label for = "name"> 숯 비누 </label></td>
					<td><label for = "total"> 3333 </label></td>
				</tr>
				<tr>
					<td><label for = "rank"> 2 </label></td>
					<td><label for = "name"> 어성초 비누 </label></td>
					<td><label for = "total"> 2222 </label></td>
				</tr>
				<tr>
					<td><label for = "rank"> 3 </label></td>
					<td><label for = "name"> 우유 비누 </label></td>
					<td><label for = "total"> 1111 </label></td>					
				</tr>
			</table>
			
			<h2> 고객 분석</h2>
		</form>
	</div>
	<!--------------------------------------------------------end container------------->
  </body>

</html>