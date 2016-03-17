<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style type = "text/css">
	table { width :640px;  }
	th, td { text-align : center;  padding : 5px; }
	td { border-bottom : solid 1px lightgray; }

	table tr:first-child td { border-bottom : 0px; text-align: left;}
	table tr:nth-child(2) { background-color : #918686; color : white; padding: 7px;}	
	table tr:last-child td { border-bottom : 0px; text-align : right; }
	table tr:last-child input 
	{
		padding : 7px 30px;
		margin-left : 10px;
		margin-right : 5px;
		margin-top : 20px;
		background-color : #85858D;
		color : white;
		font-size : 16px;
		border-radius : 20px;
		border : 0px;
	}
	table tr:last-child input:hover { opacity : 0.7; }
	table img { width : 50px; height : 50px; }
	table a { text-decoration : none; color : #000000; }
	table { margin : auto; }
	h2 { color : #004523; border-bottom : 0px; text-align : left; }
	</style>
	<form action="#" method="post">
	
	<table cellspacing="0">
		<tr>
			<td colspan="4"><h3>관심상품</h3></td>
		</tr>
		<tr>
			<th width="50px">선택</th> 
			<th width="150px">상품이미지</th> 
			<th width>상품명</th> 
			<th width = "150px">가격</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="fav_sel" value="제품번호불러온거"></td>
			<td><img src="images/soap11.jpg" alt="쑥비누사진"></td>
			<td><a href="#">쑥비누</a></td>
			<td>4300원</td> 
		</tr>
		<tr>
			<td><input type="checkbox" name="fav_sel" value="제품번호불러온거"></td>
			<td><img src="images/soap1.jpg" alt="아마씨비누사진"></td>
			<td><a href="#">아마씨비누</a></td>
			<td>3500원</td> 
		</tr>
		
		<tr>
			<td colspan = "4">
			
				<input type = "button" value="상품삭제">
				<input type = "submit" value="장바구니등록">
			</td>
		</tr>
	</table>
	
	</form>
</body>
</html>