<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style type = "text/css">
		#content_body { 
					font-family : "나눔바른고딕", "맑은 고딕";
					padding-top : 20px; padding-left: 100px;
					margin : 30px auto; color: #85858d; }
		#content_body a { text-decoration: none; }
		#content_body a:hover { opacity : 0.7; }

		h2 { margin-bottom : 15px; font-size: 24px; color: #004523;}
		
		table { width : 640px; font-size: 13px; }
		table tr:first-child td, table tr:last-child td { border-top : 1px solid grey; }
		table tr td { padding : 10px; }
		table tr:not(:last-child) td:first-child { border-right: 1px solid lightgrey; }
		table tr:not(:last-child) td
		{
			border-bottom : 1px solid lightgrey;
			margin : 0px;
		}
		table tr:not(:first-child) td:not(:nth-child(2)) {text-align: center;}
		table tr:first-child td
		{ 
			background-color: #918686; 
			color: white;
		}
		table tr:first-child td, table tr:not(:last-child) td:first-child { text-align: center; }

		table tr:last-child td { text-align: right; }

		table input[type = "button"]
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
		table a{ color: black; }
		

		#pages { margin-top: 15px;}

		#pages a { color: #85858d; font-size: 20px;}
		#pages a:hover { opacity : 0.7; }
		#pages, #search { text-align: center; width: 640px;}
		#search { width: 764px; margin-top: 20px; }
		#search input[type = "text"], #search select { font : 16px "나눔바른고딕", "맑은 고딕", Arial; }
		#search input[type = "submit"],#write
		{
			padding : 5px 10px;
			margin-left : 3px;
			margin-right : 3px; 
			background-color : #85858D;
			color : white;
			font-family : "나눔바른고딕", "맑은 고딕";
			font-size : 16px;
			border-radius : 10px; 
			border : 0px;
		}

		input[type = "submit"]:hover, #write:hover { opacity : 0.7; }
		#buttons tr td:last-child { text-align:right; }
	</style>

<div id="content_body">
	<form action="">
		<h2 id = "reg_title">이벤트</h2>
		<table cellspacing = "0">
			<tr>
				<td width="8%">번호</td>
				<td width="50%" >제목</td>
				<td width="15%">작성자</td>
				<td width="17%">작성일</td>
				<td width="8%">조회</td>
			</tr>
			<tr>
				<td id = "no">1</td>
				<td><a href = "customer_center.jsp?page=event&r=1">3만원 이상 구매 시 무료배송</a></td>
				<td id = "id" >자연맘</td>
				<td id = "write_day" >2016-03-16</td>
				<td id = "hits" >5</td>
				
			</tr>
			<td colspan="5" style="text-align: right">
				<a id = "write" name = "write" 
					href="customer_center.jsp?page=event&w=true">글쓰기</a>
			</td>
		</table>
		<div id = "pages">
			<a href = "#">&lsaquo;</a>
			&nbsp;&nbsp;&nbsp;
			1
			&nbsp;&nbsp;&nbsp;
			<a href = "#">&rsaquo;</a>
		</div>
		<div id = "search">
			<select id = "option">
				<option>제목</option>
				<option>내용</option>
				<option>제목+내용</option>
			</select>
			<input type = "text" name = "search" />
			<input type = "submit" value = "검색" />
		</div>
	</form>
</div>

</html>