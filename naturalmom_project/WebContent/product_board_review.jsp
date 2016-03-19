<!-- 사용자 - 게시판 - 상품후기 - 목록 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>자연맘</title>
<style type = "text/css">

		#in { width : 720px; margin : 0 auto; color: #85858d; font-style: bold; padding: 0px; font-family : "나눔바른고딕", "맑은 고딕"; }
		
		h2 { margin-bottom : 15px; color: #004523; }
		
		table { width: 100%; padding : 0px; }
		
		table tr {border-top : 1px solid grey;text-align:center;  }
		table tr:first-child td{ background-color: #CCCCCC; color: white; font-style:bold;}
		table tr:not(:first-child) td { color: black; }
		table tr td { border-bottom : 1px solid grey; }
		table tr td nth-child(odd), table tr td(even) {border-top : 1px solid gray; }
		table tr td { padding : 5px; color: black; border-bottom : 1px solid lightgrey;}
		
		#yuback1{margin-top:50px;}
		#page {text-align:center;}
		#yuback2 {margin-top:10px;}
		#search {text-align:center;}
	</style>
 </head>
 <body>
<!--  Start header --------------------------------------------------------------------->
<header>

</header>
<!-----------------------------------------------------------end header ----------->	
<!---Start container----------------------------------------------------------------->
 
 <div id ="in">
  
	<h2>상품 후기</h2>
		<table cellspacing="0">
			<tr>
				<td>상품명</td>
				<td>상품번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>만족도</td>
			</tr>
			<a href="#"><tr>
				<td>라벤더 비누</td>
				<td>52</td>
				<td>향이 너무 좋아요~</td>
				<td>hook4u</td>
				<td>2015/06/17</td>
				<td>★★★★☆</td>
			</tr></a>
			<a href="#"><tr>
				<td>우유 비누</td>
				<td>25</td>
				<td>뽀독뽀독~ 좋아염</td>
				<td>fath5c</td>
				<td>2015/04/10</td>
				<td>★★★☆☆</td></a>
			</tr>
			<a href="#"><tr>
				<td>숯 비누</td>
				<td>88</td>
				<td>숯비누 레알인생템임!!</td>
				<td>sutzzang</td>
				<td>2015/04/08</td>
				<td>★★★★★</td></a>
			</tr>
		</table>
		<div id="yuback1"></div>
	<div id="page">
		<a>&lt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 1 <a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt;</a>
	</div>
	<div id="yuback2"></div>
	<div id="search">
		<select name="condition" id="">
			<option value=""> 제목 </option>
			<option value=""> 작성자 </option>
			<option value=""> 내용 </option>
		</select>
	<input type="text" placeholder="제목, 내용, 작성자로 검색하실 수 있습니다."></input>
	<input type="submit" value="검색">&nbsp;&nbsp;<button id ="write">글 쓰기</button>
	</div>
	</div>

 </body>
</html>
