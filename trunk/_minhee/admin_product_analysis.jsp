<!-- admin_sales.jsp - 매출 - 판매분석 -->

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

		#in { width : 1024px; margin : 100px auto; color: #85858d;font-family : "나눔바른고딕", "맑은 고딕"; }
		table a{text-style:none;}
		
		h2 { margin-bottom : 15px; color: #85858D;}
		
		a{text-decoration: none;}
		
		table { width: 100%; padding : 0px; }
		table tr {border-top : 1px solid grey; padding:5px;}
		table tr:first-child td{ text-align:center; background-color: #918686; color: white; font-style:bold;}
		table tr:not(:first-child) td { color: black; }
		table tr td {   border-top : 1px solid grey;  color: black;}
		table tr:first-child th
		{ 
		
			background-color: #918686; 
			text-align: center; 
			color: white; 
		}
		th, td { text-align : center; }
		table tr:nth-child td:first-child { border-left : 1px solid grey; }
		table tr:first-child td
		{
			border-bottom : 1px solid lightgrey;
			margin : 0px;
		}
		table tr:nth-child(1) td
		{ 
			border-bottom : 1px solid lightgrey;
			margin : 0px;
		}

		table tr:last-child td
		{ 
			border-bottom : 1px solid grey;	
			margin : 0px;
		}

	</style>
   </head>
   <body>
<!--  Start header --------------------------------------------------------------------->

<!-----------------------------------------------------------end header ----------->	
<!---Start container----------------------------------------------------------------->

    
    
    <div id="in">
		<h2 id = "product_rank"> 판매 상품 순위</h2>
		<form action = "#" method = "post">
			<table cellspacing = "0">
				<tr>
						<th>
							<a href="#"> ▼ 순위</a>
						</th>
						<th>
							<a href="#"> ▼ 상품명</a>
						</th>
						<th>
							<a href="#"> ▼ 누적 판매 수</a>
						</th>
				</tr>			
				<a href="#"></a><tr>
					<td><label for = "rank"> 1 </label></td>
					<td><label for = "name"> 숯 비누 </label></td>
					<td><label for = "total"> 3333 </label></td>
				</tr></a>
				<a href="#"><tr>
					<td><label for = "rank"> 2 </label></td>
					<td><label for = "name"> 어성초 비누 </label></td>
					<td><label for = "total"> 2222 </label></td>
				</tr></a>
				<a href="#"><tr>
					<td><label for = "rank"> 3 </label></td>
					<td><label for = "name"> 우유 비누 </label></td>
					<td><label for = "total"> 1111 </label></td>					
				</tr></a>
			</table>
			
			<h2> 고객 분석</h2>
		</form>
	</div>
	<!--------------------------------------------------------end container------------->
  </body>

</html>