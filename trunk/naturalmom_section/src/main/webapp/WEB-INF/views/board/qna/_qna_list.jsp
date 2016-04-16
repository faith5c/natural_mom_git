<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<style type="text/css">
		table a { text-decoration : none; color : black; }
		table a:hover  { opacity : 0.7; }
		
		/* table, table input, div, div input { font-family : "나눔바른고딕", "맑은 고딕";}
		 */
		table { width : 720px; }
		h2 { color : #004523; text-align : left; padding-top : 20px; }
		th { background-color : #918686;  font-weight : normal; color : white; 
			border-top : solid 1px lightgray; }
		td, th { padding : 10px; }
		td:not(:nth-child(2)) { text-align: center; }
		td:not(:first-child) { font-size: 13px; }
		td, th{ 
			border-bottom : solid 1px lightgray; 
		}
		td:not(:last-child), th:not(:last-child){ 
			border-right : solid 1px lightgray;
		}
		
		tr:first-child td, tr:last-child td, .qna_write td{ border-bottom : 0px; }
		th { border-top : 1px solid gray; }
		.qna_write span {
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
		.qna_write input[type="button"]:hover {
			opacity : 0.7;
		}
		.qna_write td {
			text-align : right;
		}
		table { margin : 0 auto;  }
		.page { text-align : center; margin-bottom: 15px;}
		
		#search input[type="button"]{
			padding : 5px 10px;
			margin-left : 3px;
			margin-right : 3px; 
			background-color : #85858D;
			color : white;
			font-family : "나눔바른고딕", "맑은 고딕";
			font-size : 16px;
			border-radius : 20px; 
			border : 0px;
		}
		#pgidx { padding : 10px; }
		#pgidx:hover { text-decoration : underline; }
		#search input[type = "text"], #search select { font : 16px "나눔바른고딕", "맑은 고딕", Arial; }
		input[type = "button"]:hover { opacity : 0.7; }
		
	</style>
</head>
<body>
<form>
<table cellspacing="0">
	<tr><td colspan="5"><h2>Q&A</h2></td></tr>
	<tr>
		<th width="50px;">번호</th>
		<th>제목</th>
		<th width="100px">작성자</th>
		<th width="100px">작성일</th>
		<th width="50px">조회</th>
	</tr>
	
	<c:forEach items="${qna_list}" var="ql">
			<tr>
				<td>${ql.qna_rnum}</td>
				<td>
					<a href="<c:url value="/board/qna/read.nm?qr_no=${ql.qna_no}&rn=${ql.qna_rnum}"/>">
					
					<c:forEach var="i" begin="1" end="${ql.qna_pos}" step="1">
						&nbsp;&nbsp;
					</c:forEach>
					
					<c:if test="${ql.qna_ref!=ql.qna_no}"><i class="fa fa-reply fa-rotate-180" aria-hidden="true"></i>&nbsp;</c:if>
					${ql.qna_title}
						<c:if test="${ql.qna_re_count!=0}">
							[${ql.qna_re_count}]
						</c:if>
					<c:if test="${ql.qna_pw != null}"><i class="fa fa-lock"></i></c:if>
					</a>
				</td>
				<td>
					<c:choose>
						<c:when test='${fn:containsIgnoreCase(ql.mem_id, "admin")}'>
							관리자
						</c:when>
						<c:otherwise>
							${ql.mem_id}
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<fmt:formatDate value="${ql.qna_write_day}" pattern="yyyy/MM/dd"></fmt:formatDate>
				</td>
				<td>${ql.qna_hits}</td>
			</tr>
		</c:forEach>
	<tr class="qna_write">
		<td colspan="5" style="border-top: 1px solid grey">
		<a href="/soap/board/qna/write_form.nm">
		<span>글쓰기</span>
		</a>
		</td>
	</tr>
	<tr>
		<td colspan = "5">
		<div id = "pages">
			〈
			<c:forEach var="i" begin="1" end="${(fl.rnum/10)+1}" step="1">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label onclick="findcurUrl()" id="pgidx"><c:out value="${i}"/></label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</c:forEach>
			〉
			<br/>&nbsp;
		</div>
		
		<div id = "search">
			<select id="sch">
				<option value="tt">제목</option>
				<option value="con">내용</option>
				<option value="ttcon">제목+내용</option>
			</select>
			<input type = "text" name = "kw" id="kw"/>
			<input type = "button" value = "검색" onclick="searchKeyword()"/>
		</div>
		
	</tr>
	
</table>
	
</form>

		<script type="text/javascript">
			function searchKeyword(){
				kw = $("#kw").val();
				console.log("kw:"+kw);
				sch = $("#sch").val();
				console.log("sch:"+sch);
				location.href="/soap/board/qna/search.nm?sch="+sch+"&kw="+encodeURIComponent(kw);
				//alert(decodeURIComponent(kw));
			}
			
			function findcurUrl(){
				var mid;
				
				var curUrl = location.href;
				console.log("curUrl : "+curUrl);
				
				var curQuery = location.search;
				console.log("curQuery : "+curQuery);

				if(curQuery){ //쿼리가 있어
					if(curUrl.indexOf("?pgidx") != -1){ //?pgidx가 있으면
						mid = "?" //?pgidx를 없애버릴거니까 ? 추가
					}else {
						mid = "&" //없으면 &로 연결
					}
				}else{ //쿼리가없어
					mid = "?"
				}
				
				var temp1 = curUrl.indexOf("pgidx");
	
				if(temp1 != -1){ //pgidx가 있으면
					curUrl = curUrl.slice(0,temp1-1); //&pgidx, ?pgidx부터 없애기 위해 -1 붙임
					console.log("changeUrl : "+curUrl);
				} 
				
				location.href=curUrl+mid+"pgidx="+$("#pgidx").html();
			}
		</script>
		
</body>
</html>