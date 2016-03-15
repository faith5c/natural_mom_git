<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type = "text/css">
	h2 { color : #004523; }
	.fav_header { background-color : #cccccc; }

	th, td { text-align : center;  padding : 5px; }
	table { width :640px;  }
	
	td { border-bottom : solid 1px lightgray; }
	.fav_buttons { 
		border-bottom : solid 0px white; 
		text-align : right; }
	.fav_buttons input { padding : 3px; margin-right : 10px; }
</style>
</head>
<body>
	<h2>관심상품</h2>

	<form action="" method="">
	
	<table cellspacing="0">
		<tr class="fav_header">
			<th>선택</th> <th>이미지</th> <th>상품명</th> <th>가격</th>
		</tr>
		<tr>
			<td><input type="checkbox" name="fav_sel" value="제품번호불러온거"></td>
			<td><img src="쑥비누사진" alt="제품사진"></td>
			<td>쑥비누</td>
			<td>4300원</td> 
		</tr>
		<tr>
			<td><input type="checkbox" name="fav_sel" value="제품번호불러온거"></td>
			<td><img src="아마씨비누사진" alt="제품사진"></td>
			<td>아마씨비누</td>
			<td>3500원</td> 
		</tr>
		
		<tr>
			<td colspan = "4" class="fav_buttons">
			
				<input type = "button" value="상품삭제">
				<input type = "submit" value="장바구니등록">
			</td>
		</tr>
	</table>
	
	
	
	
	</form>

</body>
</html>