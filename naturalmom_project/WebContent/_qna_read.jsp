<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<style type="text/css">
	h2 { color: #004523; padding-top : 20px; }
	td, th { padding : 10px; }
	tr:nth-child(2) th s{ background-color : blue; }
	
	table { width : 720px; 
		margin : 0 auto; 
	}
	tr:nth-child(2) th{ 
		text-align : center; 
		color : white; 
		font-weight : normal; 
		border-right : solid 1px #cccccc;
	}	
	tr:nth-child(2) th, tr:nth-child(2) td{ 
		border-top : solid 1px #cccccc; 
		border-bottom : solid 1px #cccccc;	
	}
	tr:nth-child(3) td div{ 
		text-align : right; color : gray; font-size : 0.8em;
	}
	tr:nth-child(4) td{ 
		border-bottom : solid 1px #CCCCCC; 
		padding : 10px 20px 30px 20px; 
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

<form>
<table cellspacing="0">
<tr><td colspan = "4"><h2>Q&A</h2></td></tr>
<tr style="background: #918686; color: white;">
	<th style="width:80px;">3</th>
	<td colspan="3">재입고 언제 되나요</td>
</tr>
<tr>
	<td colspan="4">
	<div>hook4u | 2016/06/17 | 조회수 24</div> 
	</td>
</tr>
<tr>
	<td colspan = "4">라벤더 비누 언제 재입고 되나요</td>
</tr>
<tr class="dat">
	<td>관리자</td>
	<td colspan="2">안녕하세요 hook4u님! 라벤더 비누는 6월 말 재입고 예정입니다.^^</td>
	<td style="width:80px;">2015/06/27</td>
</tr>
<tr class="dat">
	<td>gag2</td>
	<td colspan="2">빨리 재입고 해주세요</td>
	<td style="width:80px;">2015/06/27</td>
</tr>
<tr class="dat_write">
	<td>faith5c</td>
	<td colspan="2">
		<textarea style="width:100%; resize : none;" cols="30"></textarea>
	</td>
	<td>
		<input type="submit" style="padding : 2px 10px; " value="댓글등록">
	</td>
</tr>
<tr>
	<td colspan="2">
		<input type="button" value="이전글">
		<input type="button" value="다음글">
	</td>
	<td colspan="2">
		<input type="button" value="삭제">
		<input type="button" value="목록" onclick = "location.href='customer_center.jsp?page=qna';">
	</td>
</tr>
</table>
</form>

</body>
</html>