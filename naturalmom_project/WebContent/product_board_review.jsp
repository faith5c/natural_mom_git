<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>자연맘</title>
  <script type = "text/javascript" src = "http://code.jquery.com/jquery-1.12.0.min.js"> </script>
<script>
		$(document).ready(function(){
		
				// 초기화
				$("table tr:not(:nth-child(2)):nth-child(even) td").css("display", "none");	

				$("table tr:gt(1) td a").click(function(){
						if ($(this).parent().parent().next().children("td").css("display") == "none")
						{
							$("table tr:not(:nth-child(2)):nth-child(even) td").slideUp(0);	
							$(this).parent().parent().next().children("td").slideDown(0);		
							$("table tr:not(:nth-child(2)):nth-child(even) td").removeClass("selected");		
							$(this).parent().parent().next().children("td").addClass("selected");			
						}
						else
						{
							$("table tr:not(:nth-child(2)):nth-child(even) td").slideUp(0);		
							$(this).parent().parent().next().children("td").removeClass("selected");
							$("table tr:not(:nth-child(2)):nth-child(even) td").css("display", "none");
						}
				}).mouseover(function(){
						$(this).addClass("over");
				}).mouseout(function(){
						$(this).removeClass("over");
				});
		
		});
		
	</script>

<style type = "text/css">

		#in { width : 1100px; margin : 0 auto; color: #85858d; font-style: bold; padding: 0px; font-family : "나눔바른고딕", "맑은 고딕"; }
		
		h2 { font-size:2.5em; margin : 5px; color: #004523;  text-align:center;}
		a { text-decoration : none; color : black; }
		a:hover  { opacity : 0.7; }
		table { width: 100%; padding : 0px; }
		
		table tr {border-top : 1px solid grey;text-align:center;  }
		table tr:nth-child(2) td{ background-color: #CCCCCC; color: white; font-style:bold;}
		table tr:not(:first-child) td { color: black; }
		table tr td { border-bottom : 1px solid grey; }
		table tr td nth-child(odd), table tr td(even),table tr td {border-top : 1px solid gray; }
		table tr td { padding : 5px; color: black; border-bottom : 1px solid lightgrey;}
	
		.review_write span {
			display : inline-block;
			padding : 5px 30px; 
			background-color : #85858D;
			color : white;
			font-size : 16px;
			border-radius : 20px;
			border : 0px;
			margin-right : 5px;
			margin-top : 10px;
			margin-left : 10px;
		}
		.review_write input[type="submit"]:hover {
			opacity : 0.7;
		}
		.review_write td {
			text-align : right;
		}
		#button{text-align:bottom;}

		table { margin : 0 auto;  }
		.page { text-align : center; margin-bottom: 15px;}
		.search input[type="submit"] {padding : 2px 10px;}
		.search { text-align :center; }
		#button{margin-top:50px;}
		#yuback2{margin-top:50px;}

	</style>
 </head>
 <body>
<!--  Start header --------------------------------------------------------------------->
<header>

</header>
<!-----------------------------------------------------------end header ----------->	
<!---Start container----------------------------------------------------------------->
 
 <div id ="in">
 
 <h2>구매 후기</h2>
  	<table cellspacing="0">
		<tr class="review_write">
			<td colspan="5"><a href="admin_board.jsp?page=review&w=true"><span>글쓰기</span></a></td>
		</tr>
		<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>만족도</td>
			</tr>
			<tr>
				<td>52</td>
				<td><a href="#">향이 너무 좋아요~</a></td>
				<td>hook4u</td>
				<td>2015/06/17</td>
				<td>★★★★☆</td>
			</tr>
			<tr>
				<td colspan = "4"class="reivew">향기가 좋아요~
				향기가 좋아요~향기가 좋아요~향기가 좋아요~향기가 좋아요~				
				향기가 좋아요~향기가 좋아요~향기가 좋아요~향기가 좋아요~
				향기가 좋아요~향기가 좋아요~향기가 좋아요~향기가 좋아요~
				향기가 좋아요~향기가 좋아요~향기가 좋아요~향기가 좋아요~
				향기가 좋아요~향기가 좋아요~향기가 좋아요~향기가 좋아요~
				향기가 좋아요~향기가 좋아요~향기가 좋아요~향기가 좋아요~
				향기가 좋아요~!향기가 좋아요~!!!향기가 좋아요~!향기가 좋아요~</td>

				
				<td class="review_write" colspan="1" rowspan="0">
				<a href="#"><span>수정</span></a>
				<a href="#"><span>삭제</span></a></td>
			
			</tr>
				<tr>
				<td>52</td>
				<td><a href="#">향이 너무 좋아요~</a></td>
				<td>hook4u</td>
				<td>2015/06/17</td>
				<td>★★★★☆</td>
			</tr>
			<tr>
				<td colspan = "4">향기가 좋아요~</td>
		
			
				<td class="review_write" colspan="1" rowspan="0">
				<a href="#"><span>수정</span></a>
				<a href="#"><span>삭제</span></a></td>
			
			</tr>
				<tr>
				<td>52</td>
				<td><a href="#">향이 너무 좋아요~</a></td>
				<td>hook4u</td>
				<td>2015/06/17</td>
				<td>★★★★☆</td>
			</tr>
			<tr>
				<td colspan = "4">향기가 좋아요~</td>
		
				<td class="review_write" colspan="1" rowspan="0">
				<a href="#"><span>수정</span></a>
				<a href="#"><span>삭제</span></a></td>
			</tr>
	<tr>
		<td colspan = "5" style="border:0px;">
	</tr>
	</table>
			<div id="yuback2"></div>
		<div class="page">
			<a href="#">〈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#">〉</a>
		</div>


	</div>
 </body>
</html>
