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

	<script type="text/javascript" src="js/nicEdit.js"></script>
	<style type = "text/css">
	/*
		0, 4, 7, 8 : 가운데, 1, 5, 6, 9 : 오른쪽, 2, 3 : 왼쪽
	*****************************************************************/
		* { margin: 0px; padding: 0px; }

		#container { width : 1024px; margin : 100px auto; color: #85858d; }
		#container a { text-decoration: underline; }

		h2 { margin-bottom : 15px; }
		
		table { width: 100%; padding : 0px; }
		table tr:first-child td, table tr:first-child td a { text-align:center; background-color: #918686; color: white; }
		table tr:not(:first-child) td a { color: black; }
		table tr td { border-top : 1px solid grey; border-bottom : 1px solid grey; }
		table tr td { border-right : 1px solid lightgrey; }
		table tr td:first-child { border-left : 1px solid grey; }
		table tr td:last-child { border-right: 1px solid grey; }
		table tr td { padding : 10px; }

		#buttons { margin-top: 20px; text-align: right; }
		#buttons input[type = "button"]
		{
			padding : 7px 20px;
			margin-left : 3px;
			margin-right : 3px; 
			background-color : #85858D;
			color : white;
			font-family : "나눔바른고딕", "맑은 고딕";
			font-size : 16px;
			border-radius : 10px; 
			border : 0px;
		}
		#buttons input[type = "button"]:hover { opacity : 0.7; }

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
		<h2 id = "reg_title">상품 관리</h2>
		<table cellspacing = "0">
			<tr>
				<td>체크</td>
				<td><a href = "#">▼ 상품번호</a></td>
				<td><a href = "#">▼ 분류</a></td>
				<td><a href = "#">▼ 상품명</a></td>
				<td>이미지</td>
				<td><a href = "#">▼ 가격(원가)</a></td>
				<td><a href = "#">▼ 재고</a></td>
				<td><a href = "#">▼ 진열 상태</a></td>
				<td><a href = "#">▼ 재고 상태</a></td>
				<td><a href = "#">▼ 총 누적판매량</a></td>
			</tr>
			<tr>
				<td><input type = "checkbox" name = "" /></td>
				<td>10525</td>
				<td>아토피</td>
				<td><a href = "#">어성초 비누</a></td>
				<td>[사진]</td>
				<td>5000(3000)</td>
				<td>155</td>
				<td>Y</td>
				<td>Y</td>
				<td>1302</td>
			</tr>
		</table>
		<div id = "buttons">
			<input type = "button" id = "dis_y" value = "진열" />
			<input type = "button" id = "dis_n" value = "진열 안함" />
			<input type = "button" id = "sale_y" value = "판매" />
			<input type = "button" id = "sale_n" value = "판매 안함" />
			<input type = "button" id = "del" value = "삭제" />
		</div>
	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>