<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style type="text/css">
		#container { width : 764px; margin : 50px auto;}
		a { text-decoration : none; color : black; }
		a:hover  { opacity : 0.7; }
		table, table input, div, div input { font-family : "나눔바른고딕", "맑은 고딕";}
		table { width : 100%; }
		h2 { color : #004523;  text-align : left; padding-bottom: 10px; }
		th { background-color : #918686;  font-weight : normal; color : white; 
			border-top : solid 1px lightgray; padding: 10px; }
		td:not(:nth-child(2)) { text-align: center; }
		td, th{ border-bottom : solid 1px lightgray; }
		td:not(:first-child) { font-size: 13px; padding: 10px;}
		td:not(:last-child), th:not(:last-child){ 
			border-right : solid 1px lightgray;
		}
		
		tr:first-child td, tr:last-child td{ border-bottom : 0px; }
		th { border-top : 1px solid gray; }
		table tr:last-child input[type="submit"] {
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
		table tr:last-child input[type="submit"]:hover {
			opacity : 0.7;
		}
		table tr:last-child td {
			text-align : right;
		}
		table { margin : 0 auto;  }
		#page { text-align : center; margin-bottom: 15px;}
		
		body .search { text-align: center; }
		
		.search input[type="button"]{
			padding : 2px 10px;
			margin-left : 3px;
			margin-right : 3px; 
			background-color : #85858D;
			color : white;
			font-family : "나눔바른고딕", "맑은 고딕";
			font-size : 16px;
			border-radius : 10px; 
			border : 0px;
		}
		
		.notice_write span {
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
		.notice_write:hover {
			opacity : 0.7;
		}
		.notice_write td {
			text-align : right;
		}
	</style>
</head>
<body>

<table cellspacing="0">
	<tr><td colspan="5"><h2>공지사항</h2></td></tr>
	<tr>
		<th width="50px;">글번호</th>
		<th>제목</th>
		<th width="100px">작성자</th>
		<th width="100px">작성일</th>
		<th width="50px">조회</th>
	</tr>
	
		<c:if test="${ not empty no_list }">
			<c:forEach var="no" items="${ no_list }">
				<tr>
					<td>${ no.notice_no }</td>
					<td>
						<a href="/soap/admin/board/notice_read.nm?r=${no.notice_no}&d=0">${ no.ntc_title}</a>
						<c:if test="${ no.ntc_re_no gt 0}"><b>[${ no.ntc_re_no }]</b></c:if> 
					</td>
					<td>관리자</td>
					<td><fmt:formatDate value="${ no.ntc_write_day }" type="Date" /></td>
					<td>${ no.ntc_hits }</td>
				</tr>
			</c:forEach>
			</c:if>
			<c:if test="${ empty no_list }">
				<tr >
					<td colspan="5" style="text-align: center; font-size: 15px; padding: 20px">
					해당 검색 내용이 없습니다.</td>
				</tr>
			</c:if>
	
	<tr class="notice_write">
		<td colspan="5"><a href="notice.nm?w=true&r=0"><span>글쓰기</span></a></td>
	</tr>
</table>
	<div id="page">
	<a href="#">〈〈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">〈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<c:forEach begin="1" end="${ ab }" varStatus="abN">
						&nbsp;<a href="/soap/admin/board/notice.nm?ab=${ ab }&nb=${ abN.index }">${ abN.index }</a>&nbsp;
					</c:forEach>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">〉</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">〉〉</a>
	</div>
	<div class="search">
			<select name="k" id="kind">
				<option value="제목">제목</option>
				<option value="내용">내용</option>
				<option value="제목+내용">제목+내용</option>
			</select> <input type="text" placeholder="제목, 내용, 제목+내용" name="s" id="text_search">
			<input type="button" value="검색" onclick="search()">
		</div>
	
<script type="text/javascript">
	function search()
	{
		var kind = document.getElementById("kind").value;
		var search = document.getElementById("text_search").value;
		if(search != null){
		location.href="notice.nm?k=" + kind + "&s=" + encodeURIComponent(search);
		}
	}
</script>

</body>
</html>