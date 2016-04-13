<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="resources/admin/js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
	
	<link rel="apple-touch-icon" href="../../resources/images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="../../resources/images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel="stylesheet" href="../../resources/admin/css/admin_common.css"/>
	
	<title>자연맘</title>
<% 
	request.setCharacterEncoding("UTF-8");
	String submenu = (String)request.getParameter("page");
	if(submenu==null){
		submenu= "notice";
	}
	String r = (String)request.getParameter("r");
	if (r == null) r = "";
	String w = (String)request.getParameter("w");
	if (w == null || w.isEmpty()) w = "false";
%>
	
   </head>

  <body>

	<header>
		<%@include file="../../_default_header.jsp" %>
	</header>

<!---Start container----------------------------------------------------------------->
	
	<div id="container">


			<%if (r.equals("1")) {%>
				<%@include file = "_a_board_faq_read.jsp" %>
			<%} else if (w.equals("true")) { %>
				<%@include file = "_a_board_faq_write.jsp" %>
			<%} else { %>
				<%@include file="_a_board_faq_list.jsp" %>
			<%} %>			

	</div>
<!--------------------------------------------------------end container------------->
  </body>

</html>
