<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style type = "text/css">
		* { 
			margin: 0px; padding: 0px;
			font-family : "나눔바른고딕", "맑은 고딕";
			
			}

		#container { width : 764px; margin : 100px auto; color: #85858d; }
		#container a { text-decoration: underline; }

		h2 { margin-bottom : 15px; }
		
		table { width: 100%; padding : 0px; }
		#board tr:first-child td { border-top : 1px solid grey; }
		#board tr:last-child td { border-bottom : 1px solid grey; }
		#board tr td:first-child { border-left : 1px solid grey; }
		#board tr td:last-child { border-right : 1px solid grey; }
		#board tr td { padding : 10px; }
		#board tr:first-child td:first-child { border-right: 1px solid lightgrey; }
		#board tr:not(:last-child) td
		{
			border-bottom : 1px solid lightgrey;
			margin : 0px;
		}

		#board tr:first-child td
		{ 
			background-color: #918686; 
			color: white;
		}
		#board tr:first-child td:first-child
		{ 
			width: 50px;
			text-align: center;
		}

		#buttons { width: 100%; margin-top: 20px; }
		#buttons input
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
		#buttons input:hover { opacity : 0.7; }

		#buttons tr td:last-child { text-align:right; }
	</style>
<html>
	<div id="container">
		<h2 id = "reg_title">자주하는 질문</h2>
			<table cellspacing = "0" id = "board">
				<tr>
					<td id = "no">1</td>
					<td id = "title">임시 타이틀</td>
					<td id = "writer" >작성자</td>
				</tr>
				<tr><td colspan = "2" id = "content">임시 자주하는 질문 내용입니다.</td></tr>
			</table>
			<table cellspacing = "0" id = "buttons">
				<tr>
					<td>
						<input type = "button" value = "이전글" id = "prev" name = "prev">
						<input type = "button" value = "다음글" id = "next" name = "next">
					</td>
					<td>
						<input type = "button" value = "수정" id = "mod" name = "mod">
						<input type = "button" value = "삭제" id = "del" name = "del">
						<input type = "button" value = "목록" id = "list" name = "list">
					</td>
				</tr>
			</table>
	</div>
</html>