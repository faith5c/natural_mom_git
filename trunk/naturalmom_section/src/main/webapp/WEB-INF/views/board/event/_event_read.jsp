<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style type = "text/css">

		#inside { padding-top : 70px; padding-left: 220px;
					margin : 30px auto;  font-size: 14px; }
		#inside a { text-decoration: underline; }

		h2 { margin-bottom : 15px; font-size: 24px; color: #004523;}
		
		table { width: 720px; padding : 0px; }
		#board tr:first-child td { border-top : 1px solid grey; }
		#board tr:last-child td { border-bottom : 1px solid grey; }
		#board tr td:first-child { border-left : 1px solid grey;}
		#board tr td:last-child { border-right : 1px solid grey; }
		#board tr td { padding : 10px;}
		#board tr:first-child td:first-child { border-right: 1px solid lightgrey; }
		#board tr:not(:last-child) td
		{
			border-bottom : 1px solid lightgrey;
			margin : 0px;
		}

		#board tr:first-child td
		{ 
			background-color: #918686; 
			color: white;
		}
		#board tr:first-child td:first-child
		{ 
			text-align: center;
		}

		#buttons { width: 720px; margin-top: 20px; }
		#buttons input
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
		#buttons input:hover { opacity : 0.7; }

		#buttons tr td:last-child { text-align:right; }
		
		#event_content { height: 100px; vertical-align: top; color: black; }
		#re_submit { 
			padding: 15px 10px; 
			background-color: #85858d; 
			color : white;
			border-radius : 10px; 
		}
		.re_title{ width: 80px;}
		
		span {
		color : black;
		display : inline-block; 
		width:20px; 
		text-align : right;
	}
	
	span:hover {
		opacity : 0.7;
	}
		
	</style>
<html>
	<div id="inside">
		<h2 id = "reg_title">이벤트</h2>
			<table cellspacing = "0" id = "board">
			
				<tr>
					<td id = "no" width="15%">${con.evt_rnum}</td>
					<td id = "title" width="55%" colspan="2" >${con.evt_title}</td>
					<td id = "id" width="13%">${con.mem_id}</td>
					<td id = "write_day" width="20%">${con.evt_write_day}</td>
					<td id = "hits" width="5%">${con.evt_hits}</td>
				</tr>
				<tr><td colspan="6" id="event_content">${con.evt_content}</td></tr>
				
				
				
			<c:forEach var="re" items="${re}">
				<tr>
					<td id = "re_id" class="re_title">${re.mem_id }</td>
					<td id = "re_content" colspan="3" width="55%">${re.evt_re_content }</td>
					<td id = "re_write_day" colspan="2" style="text-align: right">${re.evt_re_write_day }	
						<span onclick="deleteRe()"><i class="fa fa-times-circle"></i></span></td>
						<!-- location.href='event_re_del.nm?reid=${re.event_re_no}' -->
				</tr>
			</c:forEach>
			
				<tr>
					<td class="re_title">댓글입력</td>
					<td colspan="4"><textarea style="width:100%; resize : none;" cols="30" rows="3"></textarea></td>
					<td><input type = "button" value = "등록" id = "re_submit" name = "re_submit"></td>
				</tr>
				
			
			</table>
			<table cellspacing = "0" id = "buttons" style="margin-bottom: 80px;">
				<tr>
					<td>
						<input type = "button" value = "이전글" id = "prev" name = "prev">
						<input type = "button" value = "다음글" id = "next" name = "next">
					</td>
					<td>
						<input type = "button" value = "수정" id = "mod" name = "mod">
						<input type = "button" value = "삭제" id = "del" name = "del">
						<input type = "button" value = "목록" id = "list" name = "list" onclick="location.href='event.nm';">
					</td>
				</tr>
			</table>
	</div>

<script type="text/javascript">

	function deleteRe() {
		
		
	}
</script>	
	
</html>