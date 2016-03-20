<!-- 사용자 - 게시판 - 상품후기 - 상세보기 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

	<style type="text/css">
	#in { 
			font-family : "나눔바른고딕", "맑은 고딕";
			width : 764px;
			margin : 50px auto;
			color: #85858d; }

	h2 { color: #85858D; padding-left : 10px; padding-bottom : 20px; padding-top : 10px; ;}
	td,th { border : 0px solid blue; padding : 5px; }
	
	table{ width : 720px; 
		margin : 0 auto; 
	}
	tr:first-child th, tr:first-child td{ 
		border-top : solid 1px #cccccc; 
		font-weight : bold; 
		color:white;
		background-color:#918686;
	}
	tr:nth-child(2) { 
		text-align : center; 
		color : black; 
		font-weight : normal; 
		
	}	
	tr:nth-child(2) td{ 
		text-align:left;
		border-top : solid 1px #cccccc; 
		border-bottom : solid 1px #cccccc;	
	}tr:nth-child(2) td:nth-child(2){ 
		text-align:center; margin-left:400px;
	}
	tr:nth-child(3) td div{ 
		text-align : right; color : gray; font-size : 0.8em;
	}
	tr:nth-child(4) td{ 
		border-bottom : solid 1px #CCCCCC; 
		padding : 10px 20px 30px 20px; 
		color : black;
	}
	.dat td{ background-color : #F0F0F0; }
	.dat td:first-child{ text-align : center; border-bottom : dotted 1px #cccccc; }
	.dat td{ font-size : 0.9em; border-bottom : dotted 1px #cccccc; }
	.dat_write td:first-child{ text-align : center;}
	.dat_write td{
		font-size : 0.9em;
		background-color : #F0F0F0;
		padding : 10px;
		
	}
	table tr:last-child input {
		padding : 5px 30px;
		margin-right : 5px;
		margin-top : 10px;
		margin-left : 10px; 
		background-color : #85858D;
		color : white;
		font-size : 16px;
		border-radius : 20px;
		border : 0px;
	}
	table tr:last-child td:last-child {
		text-align : right;
	}
	table tr:last-child input:hover{
		opacity : 0.7;
	}
	
</style>
   </head>

  <body>
<!--  Start header --------------------------------------------------------------------->
	<header>
		
	</header>
<!-----------------------------------------------------------end header ----------->	
<!---Start container----------------------------------------------------------------->
	
	<div id="in">
	<form>

<table cellspacing="0">
<h2>상품후기</h2>
<tr>
	<th style="width:80px;">작성자 : </th>
	<td colspan="3">&nbsp;naturalmother</td>
</tr>
<tr>
	<td colspan="2">&nbsp;&nbsp;제품명 : 숯비누 </td>
	<td colspan="3">제품번호 : 12345</td>
</tr>
<tr>
	<td colspan="4">
	<div> 2016/06/17 |  조회수 : 3</div> 
	</td>
</tr>
<tr>
	<td colspan = "4">숯비누는 사랑입니다!</td>
</tr>
<tr class="dat">
	<td>자연맘</td>
	<td colspan="2">저희 자연맘을이용해주셔서 감사합니다. 마일리지 10점 올려드렸어요^^</td>
	<td style="width:80px;">2015/06/27</td>
</tr>
<tr class="dat">
	<td>babo</td>
	<td colspan="2">먹어도 되나요?</td>
	<td style="width:80px;">2015/06/27</td>
</tr>
<tr class="dat_write">
	<td>faith5c</td>
	<td colspan="2">
		<textarea rows="3" cols="90"></textarea>
	</td>
	<td>
		<input type="submit" value="댓글등록">
	</td>
</tr>
<tr>
	<td colspan="2">
		<input type="button" value="이전글">
		<input type="button" value="다음글">
	</td>
	<td colspan="2">
		<input type="button" value="삭제">
		<input type="button" value="목록">
	</td>
</tr>
</table>
</form>
	
	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>