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
	* { font-family : "나눔바른고딕", "맑은 고딕"}
	h2 { color: #004523; padding-left : 10px; padding-bottom : 20px; padding-top : 10px; }
	td,th { border : 0px solid blue; padding : 5px; }
	tr:nth-child(2) th s{ background-color : blue; }
	
	table { width : 720px; 
		margin : 0 auto; 
	}
	tr:nth-child(2) th{ 
		text-align : center; 
		color : gray; 
		font-weight : normal; 
		border-right : solid 1px #cccccc;
	}	
	tr:nth-child(2) th, tr:nth-child(2) td{ 
		border-top : solid 1px #cccccc; 
		border-bottom : solid 1px #cccccc;	
	}
	tr:nth-child(4) td{ 
		border-top : solid 1px #CCCCCC; 
		padding : 10px 20px 30px 20px; 
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
	
	.pw_write {
		margin : 0 auto; 
		text-align : center;
		padding : 10px; 
		border : solid 1px lightgray; 
		width : 400px; 
		background-color : #f0f0f0;
		border : solid 1px #85858D;
		color : #555555;
	}
	
</style>

<form>
<table cellspacing="0">
<tr><td colspan = "4"><h2>Q&A</h2></td></tr>
<tr>
	<th style="width:80px;">3</th>
	<td colspan="3">재입고 언제 되나요</td>
</tr>

<tr>
	<td colspan="4">
	<br/>&nbsp;
	<div class="pw_write"> 
	비밀번호 확인
	<hr/>
	이 글은 비밀글입니다. 비밀번호를 입력해주세요<br/><br/>
	비밀번호&nbsp;&nbsp;&nbsp;
	<input type="password" name="pw" size="8">&nbsp;&nbsp;&nbsp;
	<input type="button" name="secret_check" value="확인">
	<br/>&nbsp;
	</div>
	<br/>&nbsp;
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

</body>
</html>