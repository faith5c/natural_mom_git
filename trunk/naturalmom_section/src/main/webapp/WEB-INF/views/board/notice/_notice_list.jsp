<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
		a {text-decoration: none;color: black;}

		a:hover {opacity: 0.7;}

		table, table input, div, div input {font-family: "나눔바른고딕", "맑은 고딕";}
		
		table {width: 720px; }

		h2 {color: #004523;text-align: left;padding-top: 30px;padding-bottom: 10px;}

		th { background-color : #918686;  font-weight : normal; color : white; 
			border-top : solid 1px lightgray; padding: 10px; }
		td:not(:nth-child(2)) { text-align: center; }
		td, th{ border-bottom : solid 1px lightgray; }
		td:not(:first-child) { font-size: 13px; padding: 10px;}
		td:not(:last-child), th:not(:last-child){ 
			border-right : solid 1px lightgray;
		}
		
		tr:first-child td { border-bottom : 0px; }
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
		
		table { margin : 0 auto;  }
		#page { text-align : center; margin-bottom: 15px; margin-top: 15px; margin-left:100px;}
		
		body .search { text-align: center;  margin-left: 100px;}
		
		.search input[type="submit"]{
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
</style>
</head>
<body>
	<form>
		<table cellspacing="0">
			<tr>
				<td colspan="5"><h2>공지사항</h2></td>
			</tr>
			<tr>
				<th width="50px;">글번호</th>
				<th>제목</th>
				<th width="100px">작성자</th>
				<th width="100px">작성일</th>
				<th width="50px">조회</th>
			</tr>

			<c:forEach var="no" items="${ no_list }">
				<tr>
					<td>${ no.notice_no }</td>
					<td>
						<a href="/board/notice_read.nm?r=${no.notice_no}">${ no.ntc_title }
						<c:if test="${ no.ntc_re_no gt 0}"><b>[${ no.ntc_re_no }]</b></c:if> 
						</a>
					</td>
					<td>관리자</td>
					<td><fmt:formatDate value="${ no.ntc_write_day }" type="Date" /></td>
					<td>${ no.ntc_hits }</td>
				</tr>
			</c:forEach>
		</table>
		<div id="page">
			<a href="#">〈〈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">〈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<c:forEach begin="1" end="${ ab }" varStatus="abN">
						&nbsp;<a href="/soap/board/notice.nm?ab=${ ab }&nb=${ abN.index }">${ abN.index }</a>&nbsp;
					</c:forEach>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="#">〉</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">〉〉</a>
		</div>
		<div class="search">
			<select>
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="writer">글쓴이</option>
				<option value="title+content">제목+내용</option>
			</select> <input type="text" placeholder="제목, 내용, 글쓴이, 제목+내용" name="search">
			<input type="submit" value="검색">
		</div>
	</form>

</body>
</html>