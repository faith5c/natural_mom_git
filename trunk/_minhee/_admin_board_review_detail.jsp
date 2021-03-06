<!-- admin_board.jsp - 게시판 - 상품후기 - 상세 -->
<html>
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
	
	<link rel="apple-touch-icon" href="images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel="stylesheet" href="css/admin_common.css"/>
		
	<title>자연맘</title>

	<style type = "text/css">

		#in { font-style: bold;  padding: 0px; font-family : "나눔바른고딕", "맑은 고딕"; width : 720px; margin : 0 auto; color: #85858d; }
		
		h2 { margin-bottom : 15px; color:#85858D;}
		
		table { width: 100%; padding : 0px; }
		table tr td { border-bottom : 1px solid lightgrey; }
		table tr:nth-child(2),table tr:nth-child(3){text-align:center;}
		table tr:nth-child(4),table tr:nth-child(5){text-align:left; margin-left:20px;}
		table tr:first-child{background-color:#918686;}
		table tr:not(:last-child) td
		{
			border-bottom : 1px solid lightgrey;
			margin : 0px;
		}
		table tr td input
		{ 
			border : 1px solid lightgrey; 
			font : 16px "나눔바른고딕", "맑은 고딕", Arial; 
		}
		table tr td select 
		{ 
			border : 1px solid lightgrey; font-size : 1em; 
			font : 16px "나눔바른고딕", "맑은 고딕", Arial;
		}

		table tr td label { margin-right : 25px; }


		#buttons 
		{ 
			margin-top : 20px; text-align : right;
		}
		table td{ padding:5px;}
		
		tr td input[type="submit"], tr td label { text-align:center; }

		table tr td label{text-align:left; margin-left:20px;}
		#buttons.back {margin-left:40px;}
		#buttons.back, #buttons.next { text-align:left; }
		#buttons.delete {margin-right:40px;}
		#buttons.delete, #buttons.list { text-align:right; }

	</style>
   </head>

  <body>
<!--  Start header --------------------------------------------------------------------->
	<header>
		
	</header>
<!-----------------------------------------------------------end header ----------->	
<!---Start container----------------------------------------------------------------->
	
	<div id="in">
		<h2>	상품후기</h2>
			<table>
				<tr>
					<td>No.</td>
					<td>SKU</td>
					<td>Title</td>
					<td>ID</td>
					<td>Date</td>
					<td>hit</td>
				</tr>
				<tr>
					<td>숯비누</td>
					<td>53</td>
					<td>한번사세요! 두번사세요! </td>
					<td>sujinzzang</td>
					<td>2015/06/17</td>
					<td>24</td>
				</tr>
				<tr><td colspan="6">지성 피부에 최고에여~!! 숯비누짱!!</td></tr>
				<tr><td colspan="6"><label>자연맘  :  </label> 안녕하세요! sujinzzang님! 항상 저희 자연맘을 이용해주셔서 감사합니다~^^</td></tr>
				<tr><td colspan="6"> <label>댓글입력</label>
				<textarea name="ripple"cols="90" rows="3">
				
				
				</textarea>
				<input type="submit" value="등록">
				</td>
				</tr> 
				
				
			</table>
			
			<div id="buttons">
				<button name="back">이전글</button>
				<button name="next">다음글</button>
				<button name="delelte">삭제</button>
				<button name="list">목록</button>
				</div>
	
	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>