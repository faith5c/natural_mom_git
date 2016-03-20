<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="../js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
	
	<link rel="apple-touch-icon" href="images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel="stylesheet" href="css/admin_common.css"/>
		
	<title>자연맘</title>
	
	<script type="text/javascript" src="js/nicEdit.js"></script>
	<script type="text/javascript">
		bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
	</script>
	<script>
		function order_popup()
		{
			window.open("_admin_order_popup.jsp", "운송장 등록", "width = 420px, height = 410px, left = 500px, top = 200px, scrollbars = no, toobar = no, menubar = no, status = no, location = no, resizeable = no");
		}
	</script>
	<style type = "text/css">

		* { margin: 0px; padding: 0px; }

		#container { width : 1024px; margin : 50px auto; color: #85858d; }
		#container a { text-decoration: underline; }

		h2 { margin-bottom : 15px; }
		
		table { width: 100%; padding : 0px;  font-size : 12.5px;}
		table tr:first-child td, table tr:first-child td a { text-align:center; background-color: #918686; color: white; }
		table tr:not(:first-child) td a { color: black; }
		table tr td { border-bottom : 1px solid lightgrey; }
		table tr td { border-right : 1px solid lightgrey; }
		table tr td:first-child { border-left : 1px solid grey; }
		table tr td:last-child { border-right: 1px solid grey; }
		table tr:last-child td { border-bottom : 1px solid grey; }
		table tr td { padding : 10px; }

		table tr:not(:first-child) td:nth-child(1), table tr:not(:first-child) td:nth-child(3), table tr:not(:first-child) td:nth-child(4), 
		table tr:not(:first-child) td:nth-child(2), table tr:not(:first-child) td:nth-child(5), table tr:not(:first-child) td:nth-child(7), 
		table tr:not(:first-child) td:nth-child(8), table tr:not(:first-child) td:nth-child(9),  td:nth-child(6) { text-align: center; }
		table tr:not(:first-child) td:nth-child(2), table tr:not(:first-child),
		table tr:not(:first-child) td:nth-child(10) { text-align: right; }

		table tr:first-child td:nth-child(1){ width:5%; }
		table tr:first-child td:nth-child(2){ width:11%; }
		table tr:first-child td:nth-child(3){ width:9%; }
		table tr:first-child td:nth-child(4){ width:9%; }
		table tr:first-child td:nth-child(5){ width:9%; }
		table tr:first-child td:nth-child(6){ width:9%; }
		table tr:first-child td:nth-child(7){ width:6%; }
		table tr:first-child td:nth-child(8){ width:9%; } 
		table tr:first-child td:nth-child(9){ width:14%; } 
		table tr:first-child td:nth-child(10){ width:11%; } 
		table tr:first-child td:nth-child(11){ width:8%; } 

		#buttons { margin-top: 20px; text-align: right; }
		#buttons input[type = "button"]
		{
			padding : 7px 20px;
			width : 110px;
			margin-left : 3px;
			margin-right : 3px; 
			background-color : #85858D;
			color : white;
			font-family : "나눔바른고딕", "맑은 고딕";
			font-size : 16px;
			border-radius : 10px; 
			border : 0px;
		}
		#buttons input[type = "button"]:hover, #save:hover { opacity : 0.7; }
		
		#save
		{
			padding : 7px 20px;
			width : 110px;
			margin-left : 3px;
			margin-right : 3px; 
			background-color : #85858D;
			color : white;
			font-family : "나눔바른고딕", "맑은 고딕";
			font-size : 16px;
			border-radius : 10px; 
			border : 0px;
			float : right;
		}

		#delivery_register { float : left; }

	</style>
   </head>

  <body>

	<header>
		<%@include file="_default_header.jsp" %>
	</header>

<!---Start container---------------------------------------------------------------->
	
	<div id="container">
		<input type = "button" id = "save" value = "저장" />
		<h2 id = "order_title">주문 관리</h2>
		<table cellspacing = "0">
			<tr>
				<td>체크</td>
				<td><a href = "#">▼ 주문일</a></td>
				<td><a href = "#">▼ 주문번호</a></td>
				<td><a href = "#">▼ 주문자</a></td>
				<td><a href = "#">▼ 묶음선택</a></td>
				<td><a href = "#">▼ 상품명</a></td>
				<td><a href = "#">▼ 개수</a></td>
				<td><a href = "#">▼ 결제금액</a></td>
				<td> 배송메세지</td>
				<td> 운송장번호</td>
				<td><a href = "#">▼ 처리상태</a></td>
			</tr>
			<tr>
				<td><input type = "checkbox" name = "" /></td>
				<td>2016-03-04</td>
				<td>242424</td>
				<td>윤수민</td>
				<td></td>
				<td>어성초 비누</td>
				<td>2</td>
				<td>11,500</td>
				<td>부재 시 경비실에...</td>
				<td>3455643533455</td>
				<td>
					<select name="process_no">
						<option value="1">&nbsp;배송준비중&nbsp;</option>
						<option value="2">&nbsp;배송대기&nbsp;</option>
						<option value="3">&nbsp;배송중&nbsp;</option>
						<option value="4">&nbsp;배송완료&nbsp;</option>
						<option value="5">&nbsp;구매확정&nbsp;</option>
						<option value="6">&nbsp;환불처리&nbsp;</option>
						<option value="7">&nbsp;환불완료&nbsp;</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><input type = "checkbox" name = "" /></td>
				<td>2016-03-05</td>
				<td>242425</td>
				<td>최소라</td>
				<td>○</td>
				<td>숯 비누</td>
				<td>2</td>
				<td>12,500</td>
				<td>부재 시 옆집에...</td>
				<td></td>
				<td>
					<select name="process_no">
						<option value="1">&nbsp;배송준비중&nbsp;</option>
						<option value="2">&nbsp;배송대기&nbsp;</option>
						<option value="3">&nbsp;배송중&nbsp;</option>
						<option value="4">&nbsp;배송완료&nbsp;</option>
						<option value="5">&nbsp;구매확정&nbsp;</option>
						<option value="6">&nbsp;환불처리&nbsp;</option>
						<option value="7">&nbsp;환불완료&nbsp;</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><input type = "checkbox" name = "" /></td>
				<td>2016-03-05</td>
				<td>242426</td>
				<td>최소라</td>
				<td>○</td>
				<td>해초 비누</td>
				<td>1</td>
				<td>5,500</td>
				<td>부재 시 옆집에...</td>
				<td></td>
				<td>
					<select name="process_no">
						<option value="1">&nbsp;배송준비중&nbsp;</option>
						<option value="2">&nbsp;배송대기&nbsp;</option>
						<option value="3">&nbsp;배송중&nbsp;</option>
						<option value="4">&nbsp;배송완료&nbsp;</option>
						<option value="5">&nbsp;구매확정&nbsp;</option>
						<option value="6">&nbsp;환불처리&nbsp;</option>
						<option value="7">&nbsp;환불완료&nbsp;</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><input type = "checkbox" name = "" /></td>
				<td>2016-03-05</td>
				<td>242427</td>
				<td>정미니</td>
				<td></td>
				<td>숯 비누</td>
				<td>1</td>
				<td>7,500</td>
				<td></td>
				<td></td>
				<td>
					<select name="process_no">
						<option value="1">&nbsp;배송준비중&nbsp;</option>
						<option value="2">&nbsp;배송대기&nbsp;</option>
						<option value="3">&nbsp;배송중&nbsp;</option>
						<option value="4">&nbsp;배송완료&nbsp;</option>
						<option value="5">&nbsp;구매확정&nbsp;</option>
						<option value="6">&nbsp;환불처리&nbsp;</option>
						<option value="7">&nbsp;환불완료&nbsp;</option>
					</select>
				</td>
			</tr>
		</table>
		<br>
		
		<br>
		<div id = "buttons">
			<input type = "button" onclick = "order_popup();" id = "delivery_register" value = "운송장등록" />
			<input type = "button" id = "delivery_stand_by" value = "배송대기" />
			<input type = "button" id = "refund_process" value = "환불처리"/>
			<input type = "button" id = "refund_complete" value = "환불완료" />
		</div>
	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>
