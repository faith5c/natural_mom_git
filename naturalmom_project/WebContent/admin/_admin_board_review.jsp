<!-- admin_board.jsp - 게사판 - 상품후기 - 목록 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>자연맘</title>
<style type = "text/css">
	

		#in { 
					font-family : "나눔바른고딕", "맑은 고딕";
					width : 764px;
					margin : 50px auto;
					color: #85858d; }
		#in a { text-decoration : none; color : black; }
		#in a:hover  { opacity : 0.7; }
		
		#in h2 { margin-bottom : 15px; color: #004523; }
		
		.review { width: 100%; padding : 0px; }
		.review_write td a {
			text-align : right;
		}
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
		.review tr {border-top : 1px solid grey; }
		

		.review tr th{color:white; text-align:center; background-color: #918686; padding:5px;}
		.review tr:not(:last-child) td { color: black; text-align:center;}
		.review tr td nth-child:(odd), table tr td:(even) {border-top : 1px solid gray; }
		.review tr:not(:last-child) td { padding : 5px; color: black;border-bottom : 1px solid lightgrey;}
	
		.review_write input[type="submit"]:hover {
			opacity : 0.7; 
		}
		.review_write td {
			text-align : right;
		}
		
		.review { margin : 0 auto;  }
		.page { text-align : center; margin-bottom: 15px;}
		.search{text-align:center;}
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
		<table class="review" cellspacing="0">
			<tr>
				<th>상품명</th>
				<th>상품번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>만족도</th>
			</tr>
			<tr>
				<td>아마씨 비누</td>
				<td>52</td>
				<td><a href="admin_board.jsp?page=review&r=1">향이 너무 좋아요~</td>
				<td>hook4u</td>
				<td>2015/06/17</td>
				<td>★★★★☆</td>
			</tr></a>
			<tr>
				<td>아마씨 비누</td>
				<td>25</td>
				<td><a href="admin_board.jsp?page=review&r=2">피부가 부들부들해염~~</td>
				<td>agamom</td>
				<td>2015/04/10</td>
				<td>★★★☆☆</td></a>
			</tr>
			<tr>
				<td>숯 비누</td>
				<td>88</td>
				<td><a href="admin_board.jsp?page=review&r=3">숯비누 레알인생템임!!</td>
				<td>sutzzang</td>
				<td>2015/04/08</td>
				<td>★★★★★</td></a>
			</tr>
		
	<tr class="review_write">
		<td colspan="6"><a href="admin_board.jsp?page=review&w=true"><span>글쓰기</span></a></td>
	</tr>
		</table>
		<div class="page">
			<a href="#">〈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#">〉</a>
		</div>
		<div class="search" >
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

 </body>
 
</html>

