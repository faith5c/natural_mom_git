<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="../js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
	
	<link rel="apple-touch-icon" href="images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel="stylesheet" href="css/admin_common.css"/>
		
	<title>자연맘</title>
<% 
	request.setCharacterEncoding("UTF-8");
	String submenu = (String)request.getParameter("page");
	if(submenu==null){
		submenu= "notice";
	}
%>
	
   </head>

  <body>

	<header>
		<%@include file="_default_header.jsp" %>
	</header>

<!---Start container----------------------------------------------------------------->
	
	<div id="container">
<%
		if(submenu.equals("notice")){%>
			<%@include file="_admin_board_notice_list.jsp" %>
<%		}else if(submenu.equals("event")){%>
			<%@include file="_admin_board_event_list.jsp" %>			
<%		}else if(submenu.equals("qna")){%>
			<%@include file="_admin_board_qna.jsp" %>			
<%		}else if(submenu.equals("review")){%>
			<%@include file="_admin_board_review.jsp" %>			
<%		}else if(submenu.equals("faq")){%>
			<%@include file="_admin_board_faq_list.jsp" %>			
<%		}else{
			System.out.println("board page submenu error");
		}
%>
	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>
