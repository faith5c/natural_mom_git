<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	* { font-family : "나눔바른고딕", "맑은 고딕"; }
	#content { text-align : center; }
	h2 { color : #004523; text-align : left; }
	table { width : 640px; margin : auto; }
	th, td { text-align : center; padding : 5px; }
	td { border-bottom : solid 1px lightgray; }
	
	table tr:first-child td { border-bottom : 0px; padding-bottom : 30px;}
	table tr:nth-child(2) th { background-color : #cccccc; color : white; }
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
	
</style>
</head>
<body>

	<!--주문내역 조회 부분-->
	<form action="#" method="post">
		<table cellspacing="0">
			<tr>
				<td colspan = "8"><h2>주문내역 조회</h2></td>
			</tr>
			<tr>
				<th>선택</th>
				<th>주문번호</th>
				<th>주문일자</th>
				<th>상품이미지</th>
				<th>상품명</th>
				<th>수량</th>
				<th>결제금액</th>
				<th>처리상태</th>
			</tr>
			<tr>
				<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
				<td>155553</td>
				<td>2016/03/05</td>
				<td><img src="images/soap11.jpg" alt="쑥비누사진"></td>
				<td><a href="#">쑥비누</a></td>
				<td>1</td>
				<td>4300원</td>
				<td>배송준비중</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
				<td>155553</td>
				<td>2016/03/05</td>
				<td><img src="images/soap1.jpg" alt="아마씨비누사진"></td>
				<td><a href="#">아마씨비누</a></td>
				<td>2</td>
				<td>7000원</td>
				<td>배송준비중</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
				<td>122332</td>
				<td>2015/01/12</td>
				<td><img src="images/soap12.jpg" alt="뽕잎비누사진"></td>
				<td><a href="#">뽕잎비누</a></td>
				<td>2</td>
				<td>7300원</td>
				<td>구매확정</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
				<td>122332</td>
				<td>2015/01/12</td>
				<td><img src="images/soap1.jpg" alt="아마씨비누사진"></td>
				<td><a href="#">아마씨비누</a></td>
				<td>4</td>
				<td>21300원</td>
				<td>구매확정</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="orderlist_sel" value="선택된주문번호 랑 상품번호"></td>
				<td>112311</td>
				<td>2014/09/01</td>
				<td><img src="images/soap4.jpg" alt="함초비누사진"></td>
				<td><a href="#">함초비누</a></td>
				<td>1</td>
				<td>4500원</td>
				<td>배송완료</td>
			</tr>
			<tr>
				<td colspan="8">
				<input type="button" value="환불신청">
				<input type="button" value="구매확정">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>