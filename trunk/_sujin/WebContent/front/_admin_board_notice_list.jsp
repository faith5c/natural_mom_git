<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style type="text/css">
		a { text-decoration : none; color : black; }
		table, table input, div, div input { font-family : "나눔바른고딕", "맑은 고딕";}
		table { width : 720px; }
		h2 { color : #004523; padding-left : 10px; text-align : left; }
		th { background-color : #F0F0F0;  font-weight : normal; color : gray; 
			border-top : solid 1px lightgray;
		}
		td, th { padding : 5px; }
		td:not(:nth-child(2)) { text-align: center; }
		td, th{ 
			border-bottom : solid 1px lightgray; 
		}
		td:not(:last-child), th:not(:last-child){ 
			border-right : solid 1px lightgray;
		}
		
		tr:first-child td, tr:last-child td{ border-bottom : 0px; }
		
		table tr:last-child input[type="submit"] {
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
		table tr:last-child input[type="submit"]:hover {
			opacity : 0.7;
		}
		table tr:last-child td {
			text-align : right;
		}
		table { margin : 0 auto;  }
		div { text-align : center; margin-bottom: 15px;}
		

	</style>
</head>
<body>
<form>
<table cellspacing="0">
	<tr><td colspan="5"><h2>공지사항</h2></td></tr>
	<tr>
		<th width="50px;">글번호</th>
		<th>제목</th>
		<th width="100px">작성자</th>
		<th width="100px">작성일</th>
		<th width="50px">조회</th>
	</tr>
	<tr>
		<td>3</td>
		<td><a href="#">회원 특별 혜택 및 사은품 안내</a></td>
		<td>관리자</td>
		<td>2015/10/14</td>
		<td>49</td>
	</tr>
	<tr>
		<td>2</td>
		<td><a href="#">8월 14일 임시공휴일 안내</a></td>
		<td>관리자</td>
		<td>2015/08/11</td>
		<td>24</td>
	</tr>
	<tr>
		<td>1</td>
		<td><a href="#">No.1 파머스 쇼핑몰 자연맘 리뉴얼!</a></td>
		<td>관리자</td>
		<td>2015/06/15</td>
		<td>15</td>
	</tr>
	<tr>
		<td colspan="5"><input type="submit" value="글쓰기"></td>
	</tr>
</table>
	<div>
	<a href="#">〈〈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">〈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">〉</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">〉〉</a>
	</div>
	<div>
			<select>
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="writer">글쓴이</option>
				<option value="title+content">제목+내용</option>
			</select>
			<input type="text" placeholder="제목, 내용, 글쓴이, 제목+내용" name="search">
			<input type="button" value="검색">
	</div>
</form>

</body>
</html>