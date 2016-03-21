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
<style type="text/css">



#container {
	text-align: left;
	padding-top: 50px;
}

table {
		margin : 0 auto;
		width: 640px;
		font-family : "나눔바른고딕", "맑은 고딕";
}

table tr:not(:first-child) td{
	text-align: left;
	font-size: 13px;
	color: black;
	padding-bottom: 15px;
}

h2{color: #004523;}

#button { text-align: center; }

#submit { 
	padding : 7px 30px;
	margin-left : 5px;
	margin-right : 5px; 
	background-color : #85858D;
	color : white;
	font-family : "나눔바른고딕", "맑은 고딕";
	font-size : 16px;
	border-radius : 10px; 
	border : 0px;
}

td:FIRST-CHILD {
	width: 20%;
	vertical-align: top;
}

</style>
   </head>

  <body>

	<header>
		<%@include file="_default_header.jsp" %>
	</header>

<!---Start container----------------------------------------------------------------->
	
	<div id="container">
	<form action="" method="post">
		<table>
			<tr>
				<td colspan="2"><h2>관리자 비밀번호 수정</h2><br><hr><br></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="id" name="id" disabled="disabled"/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="pw" name="pw"/>&nbsp;
					(영문, 숫자포함 6-18자 입력)</td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" id="pw2" name="pw2"/>&nbsp;
					<span>비밀번호를 한번 더 입력하세요</span></td>
			</tr>
			
			<tr>
				<td colspan="2"><p id="button"><input type="submit" id="submit" value="확인" /></p></td>
			</tr>
		</table>
	</form>

	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>
