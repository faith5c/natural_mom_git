<!-- 사용자 - 게시판 - 상품후기 - 상세보기 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style type="text/css">

	#container { width : 800px; margin : 50px auto; }
	#container h2 { color: #004523; margin-bottom : 15px; }
	
	table { width : 100%; margin : 0 auto; }
	table td { padding : 10px; }
	
	table tr:nth-child(1) td
	{ 
		text-align : center; 
		background: #918686;
		color : white; 
		border-right : solid 1px #cccccc;
		border-top : solid 1px #cccccc; 
		border-bottom : solid 1px #cccccc;
	}
	table tr:nth-child(2) td div
	{ 
		text-align : right; 
		color : gray; 
		font-size : 0.8em;
	}
	table tr:nth-child(3) td
	{ 
		border-bottom : solid 1px #CCCCCC; 
		padding : 10px 20px 30px 20px; 
	}
	table tr:last-child td:last-child { text-align : right; }
	
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
	
	.dat td { background-color : #F0F0F0; }
	.dat td:first-child { text-align : center; border-bottom : dotted 1px #cccccc; }
	.dat td:last-child { width : 120px; }
	.dat td { font-size : 0.9em; border-bottom : dotted 1px #cccccc; }

	.dat_write td:first-child { text-align : center; }
	.dat_write td
	{
		font-size : 0.9em;
		background-color : #F0F0F0;
		padding : 10px;	
	}
	.dat_write td textarea { font-family : "나눔바른고딕", "맑은 고딕"; }
	
	.dat span 
	{
		display : inline-block; 
		width: 20px; 
		text-align : right;
	}
	.dat span:hover { opacity : 0.7; }
	
	.dat_write input[type="submit"] 
	{
		background : #cec5ce;
		border-radius : 5px;
		color : #635353;
		border : none;
		border : 1px solid #85858d;
		padding : 5px; 
	}
	.dat_write input[type="submit"]:hover {	opacity : 0.7; }
	
</style>

<form action = "#" method = "post">
<h2>상품 후기</h2>

<table cellspacing = "0">
<!-- 제목 부분 -->
	<tr>
		<td style="width:100px;">${review.product_no}</td>
		<td style="width:150px;">${review.product_name}</td>
		<td>${review.rvw_title}</td>
		<td>
			<c:forEach var="i" begin="0" end="5" step="1">
				<c:if test="${i < review.rvw_satisfaction}">
					★
				</c:if>
				<c:if test="${i > review.rvw_satisfaction}">
					☆
				</c:if>
			</c:forEach>
		</td>
	</tr>
<!-- 글쓴이 정보 -->
	<tr>
		<td colspan="4">
			<div>${review.mem_id} | <fmt:formatDate value="${review.rvw_write_day}" type = "date" /> | 조회수 ${review.rvw_hits}</div> 
		</td>
	</tr>
<!-- 내용 -->
	<tr>
		<td colspan = "4">
			${review.rvw_content}
		</td>
	</tr>
<!-- 댓글 부분 -->
	<c:forEach var = "reply" items = "${reply}">
	<tr class = "dat">
		<td>${reply.mem_id}</td>
		<td colspan="2">${reply.rvw_re_content}</td>
		<td>
			<fmt:formatDate value="${reply.rvw_re_write_day}" type = "date" />
			<span onclick="location.href='#'"><i class="fa fa-times-circle"></i></span>
		</td>
	</tr>
	</c:forEach>
<!-- 댓글 쓰기 -->
	<tr class = "dat_write">
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
		<!-- 숫자 받아서 유효하지 않을 경우 다음, 이전 숫자로 넘어가도록 -->
			<input type="button" value="이전글" onclick="location.href='review_read_p.nm?&r=${review.review_no - 1}'">
			<input type="button" value="다음글" onclick="location.href='review_read_p.nm?&r=${review.review_no + 1}'">
		</td>
		<td colspan="2">
			<input type="button" value="삭제">
			<input type="button" value="목록" onclick = "location.href='review.nm';">
		</td>
	</tr>
</table>
</form>
