<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<style type = "text/css">

	#content_body { color: #85858d; padding: 100px; padding-left: 225px; }
	#content_body a { text-decoration: none; }
	#content_body a:hover { opacity : 0.7; }
	#content_body h2 { margin-bottom : 15px; color: #004523; }
	
	table, table input, div, div input { font-family : "나눔바른고딕", "맑은 고딕";}
	tr:not(:first-child) { font-size: 13px; color : black; }
	
	table { width: 720px; padding : 0px; }
	table tr:first-child td { border-top : 1px solid grey; }
	table tr:last-child td { border-bottom : 1px solid grey; }
	table tr td { padding : 10px; }
	table tr:last-child, td:first-child { border-right: 1px solid lightgrey; }
	table tr:not(:last-child) td
	{
		border-bottom : 1px solid lightgrey;
		margin : 0px;
	}

	table tr:first-child td
	{ 
		background-color: #918686; 
		color: white;
	}
	table tr:first-child td, table tr td:first-child { text-align: center; }
	table tr:first-child td:first-child { width: 50px; }

	table input[type = "button"]
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
	table a{ color: black; }

	#pages { margin-top: 15px; }
	#pages a { color: #85858d; }
	#pages a:hover { opacity : 0.7; }
	#pages, #search { text-align: center; }
	#search { width: 764px; margin-top: 20px; }
	#search input[type = "text"], #search select { font : 16px "나눔바른고딕", "맑은 고딕", Arial; }
	#search input[type = "button"]
	{
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

	input[type = "button"]:hover { opacity : 0.7; }
	
	#pgidx { padding : 10px; }
	#pgidx:hover { text-decoration : underline; }
</style>
	
<!-- content_body 부분 -->	
	<h2 id = "reg_title">자주하는 질문</h2>
	<table cellspacing = "0">
		<tr>
			<td id = "no">번호</td>
			<td id = "title">제목</td>
		</tr>
	
	<c:forEach items="${faq_list}" var="fl">
		<tr>
			<td>${fl.faq_rnum}</td>
			<td><a href="<c:url value="/board/faq/read.nm?fr_no=${fl.faq_no}&rn=${fl.faq_rnum}"/>">${fl.faq_title}</a></td>
		</tr>
	</c:forEach>
		
	</table>
	<div id = "pages">
		〈
		<c:forEach var="i" begin="1" end="${(fl.rnum/10)+1}" step="1">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%-- <a href='<c:url value="/board/faq.nm?pgidx=${i}"/>' id="pgidx"><c:out value="${i}"/></a> --%>
			<label onclick="findcurUrl()" id="pgidx"><c:out value="${i}"/></label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</c:forEach>
		〉
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
		
	<script type="text/javascript">
		function searchKeyword(){
			kw = $("#kw").val();
			console.log("kw:"+kw);
			sch = $("#sch").val();
			console.log("sch:"+sch);
			location.href="/soap/board/faq/search.nm?sch="+sch+"&kw="+encodeURIComponent(kw);
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
		
</html>