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
		
		.review_write span {
			display : inline-block;
			padding : 5px 30px; 
			background-color : #85858D;
			color : white;
			font-size : 16px;
			border-radius : 20px;
			border : 0px;
			margin-right : 5px;
			margin-top : 10px;
			margin-left : 10px;
		}
		.review_write input[type="submit"]:hover {
			opacity : 0.7;
		}
		.review_write td {
			text-align : right;
		}
		table { margin : 0 auto;  }
		.page { text-align : center; margin-bottom: 15px;}
		.search input[type="submit"] {padding : 2px 10px;}
		
		#yuback1{margin-top:50px;}

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
	<tr class="review_write">
		<td colspan="5"><a href="admin_board.jsp?page=review&w=true"><span>글쓰기</span></a></td>
	</tr>
	<tr>
		<td colspan = "5">
		<div class="page">
			<a href="#">〈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#">〉</a>
		</div>
	<div id="yuback2"></div>
		<div class="search">
				<select>
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="writer">글쓴이</option>
					<option value="title+content">제목+내용</option>
				</select>
				<input type="text" placeholder="제목, 내용, 글쓴이, 제목+내용" name="search">
				<input type="submit" value="검색">
	</div>
	</div>
</table>
 </body>
</html>
