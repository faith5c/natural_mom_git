<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<style type = "text/css">

		#container   { width : 1024px; margin : 100px auto; color: #85858d; }
		#container a { text-decoration: underline; }

		#container h2 { margin-bottom : 15px; }
		
		table { width: 100%; padding : 0px; }
		table tr:first-child td, table tr:first-child td a { text-align:center; background-color: #918686; color: white; }
		table tr:not(:first-child) td a { color: black; }
		table tr td { border-top : 1px solid grey; border-bottom : 1px solid grey; }
		table tr td { border-right : 1px solid lightgrey; }
		table tr td:first-child { border-left : 1px solid grey; }
		table tr td:last-child { border-right: 1px solid grey; }
		table tr td { padding : 10px; }

		table tr:not(:first-child) td:nth-child(1), table tr:not(:first-child) td:nth-child(3), 
		table tr:not(:first-child) td:nth-child(4), table tr:not(:first-child) td:nth-child(5), 
		table tr:not(:first-child) td:nth-child(8), table tr:not(:first-child) td:nth-child(9) { text-align: center; }
		table tr:not(:first-child) td:nth-child(2), table tr:not(:first-child) td:nth-child(6), 
		table tr:not(:first-child) td:nth-child(7), table tr:not(:first-child) td:nth-child(10) { text-align: right; }


		#buttons { margin-top: 20px; text-align: right; }
		#buttons input[type = "button"]
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
		#buttons input[type = "button"]:hover { opacity : 0.7; }

	</style>

<!-- container 부분 -->	
	<h2 id = "reg_title">상품 관리</h2>
		<table cellspacing = "0">
			<tr>
				<td>체크</td>
				<td><a href = "#">▼ 상품번호</a></td>
				<td><a href = "#">▼ 분류</a></td>
				<td><a href = "#">▼ 상품명</a></td>
				<td>이미지</td>
				<td><a href = "#">▼ 가격(원가)</a></td>
				<td><a href = "#">▼ 재고</a></td>
				<td><a href = "#">▼ 진열 상태</a></td>
				<td><a href = "#">▼ 재고 상태</a></td>
				<td><a href = "#">▼ 총 누적판매량</a></td>
			</tr>
			<tr>
				<td><input type = "checkbox" name = "" /></td>
				<td>10525</td>
				<td>아토피</td>
				<td><a href = "#">어성초 비누</a></td>
				<td>[사진]</td>
				<td>5000(3000)</td>
				<td>155</td>
				<td>Y</td>
				<td>Y</td>
				<td>1302</td>
			</tr>
		</table>
		<div id = "buttons">
			<input type = "button" id = "dis_y" value = "진열" />
			<input type = "button" id = "dis_n" value = "진열 안함" />
			<input type = "button" id = "sale_y" value = "판매" />
			<input type = "button" id = "sale_n" value = "판매 안함" />
			<input type = "button" id = "del" value = "삭제" />
		</div>
</html>