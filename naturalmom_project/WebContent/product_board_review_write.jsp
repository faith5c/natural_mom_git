<!-- 사용자 - 게시판 - 상품후기 - 글쓰기 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자연맘</title>

</head>

	<script type="text/javascript" src="js/nicEdit.js"></script>
	<script type="text/javascript">
		bkLib.onDomLoaded(function(){
			new nicEditor({maxHeight:300}).panelInstance('review_write')
		});
	</script>	
	
	<style type="text/css">
		#in{ width : 720px; margin : 0 auto; color: #85858d;font-style: bold;  padding: 0px; font-family : "나눔바른고딕", "맑은 고딕"; }
		h2, th, table tr:last-child input { font-family : "나눔바른고딕", "맑은 고딕"; }
		h2 { color : #004523; padding-left : 10px; margin-bottom:15px; }
		th { background-color : #F0F0F0;  
			font-weight : normal; 
			color : gray;
			border : solid 1px #cccccc;
			}
		table tr:last-child input 
		{	
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
		table tr:last-child input:hover { opacity : 0.7; }
		table tr:last-child td { text-align : right; }
		table { margin : 0 auto; }
		table { width : 720px; }
	</style>
	
	
	<body>
<!--  Start header --------------------------------------------------------------------->
<header>

</header>
<!-----------------------------------------------------------end header ----------->	
	<div id="in">
	<form action="#" method="post">
	<table cellspacing="2">
		<tr><td colspan="2"><h2>상품후기</h2></td></tr>
		<tr>
			<th style="width:100px;"><label for="title">제목</label></th>
			<td>
			<input style="width:99%;" type="text" id="title" maxlength="127" placeholder="제목을 입력하세요"/>
			</td>
		</tr>
		
		<tr>
			<th>작성자</th>
			<td>
				<input type="text" maxlength="15" style="width:30%" readonly="readonly"/>
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
			<textarea id="review_write" name="text" cols="74" rows="14"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="확인">
				<input type="button" value="취소">
			</td>
		</tr>
	</table>
	</form>
	</div>
</body>
</html>