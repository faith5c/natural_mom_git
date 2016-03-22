<!-- 사용자 - 게시판 - 상품후기 - 상세보기 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<title>자연맘</title>
<style type="text/css">
	* { font-family : "나눔바른고딕", "맑은 고딕"}
	#container { width : 764px; margin : 40px auto; }
	h2 { color: #004523; }
	td, th:not(first-child) { padding : 10px; }
	tr:nth-child(2) th s{ background-color : blue; }
	
	table { width : 100%; 
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
	table tr:last-child input, tr:nth-child(1) td input{
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
	tr:nth-child(1) td input {
		margin-top : 30px;
	}
	table tr:last-child td:last-child, tr:nth-child(1) td {
		text-align : right;
	}
	table tr:last-child input:hover, tr:nth-child(1) td input:hover{
		opacity : 0.7;
	}
	.dat span {
		display : inline-block; 
		width:20px; 
		text-align : right;
	}
	.dat span:hover {
		opacity : 0.7;
	}
	
	.dat_write input[type="submit"] {
		background : #cec5ce;
		border-radius : 5px;
		color : #635353;
		border : none;
		border : 1px solid #85858d;
		padding : 5px; 
	}
	.dat_write input[type="submit"]:hover {
		opacity : 0.7;
	}
</style>

<form>
<table cellspacing="0">
<tr>
	<td colspan="1"><h2>상품후기</h2></td>
	
</tr>
<tr style="background: #918686; color: white;">
				<th>제품번호:52</th>
				<th>아마씨 비누</th>
				<th>향이 너무좋아요~</th>
				<th>★★★★☆</th>

</tr>
<tr>
	<td colspan="4">
	<div>hook4u | 2016/06/17 | 조회수 24</div> 
	</td>
</tr>
<tr>
	<td colspan = "4">향이 너무좋아요~~향이 너무좋아요~~향이 너무좋아요~~향이 너무좋아요~~향이 너무좋아요~~향이 너무좋아요~~</td>
</tr>
<tr class="dat">
	<td>자연맘</td>
	<td colspan="2">저희 자연맘을이용해주셔서 감사합니다. 마일리지 10점 올려드렸어요^^</td>
	<td style="width:120px;">2015/06/27
	<span onclick="location.href='#'"><i class="fa fa-times-circle"></i></span>
	</td>
</tr>
<tr class="dat">
	<td>babo</td>
	<td colspan="2">먹어도되나요?</td>
	<td>2015/07/19
	<span onclick="location.href='#'"><i class="fa fa-times-circle"></i></span>
	</td>
</tr>
<tr class="dat_write">
	<td>자연맘</td>
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
		<input type="button" value="목록" onclick = "location.href='admin_board.jsp?page=review';">
	</td>
</tr>
</table>
</form>

</body>
</html>		
				
			


	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>
