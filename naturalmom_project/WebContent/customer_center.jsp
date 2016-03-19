<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="js/jquery-1.11.3.min.js"></script>
	<!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
	
	<link rel="apple-touch-icon" href="images/logo.ico" /> <!--애플아이콘등록-->
	<link rel="shortcut icon" href="images/logo.ico" /> <!--단축키아이콘등록-->
	<link rel="stylesheet" href="css/mypage.css" />

	<title>자연맘</title>  
<%
	request.setCharacterEncoding("UTF-8");
	String submenu = request.getParameter("page");
	if(submenu==null){
		submenu = "notice";
	}
%>
  </head>

  <body>


	<header>
		<%@include file="_default_header.jsp" %>
	</header>

	
	<div id="container">
		<%@include file="_default_menu.jsp" %>
		<!-------------Start content--------------------------------------------------->
		<div id="content">
			<div id="sidebar">
				<ul>
					<li><a href="customer_center.jsp?page=notice">공지사항</a></li>
					<li><a href="customer_center.jsp?page=event">이벤트</a></li>
					<li><a href="customer_center.jsp?page=qna">Q&A</a></li>
					<li><a href="customer_center.jsp?page=faq">자주하는 질문</a></li>
				</ul>
			</div>
			<div id="content_body">
<%
				if(submenu.equals("notice")){%>
					<%@include file="_notice_list.jsp" %>
<%				}else if(submenu.equals("event")){%>
					<%@include file="_event_list.jsp" %>					
<%				}else if(submenu.equals("qna")){%>
					<%@include file="_qna_list.jsp" %>					
<%				}else if(submenu.equals("faq")){%>
					<%@include file="_faq_list.jsp" %>					
<%				}else{
					System.out.println("board submenu error");
				}
%>
			
			</div>	
		</div>
		<!--------------------------------------------------end content--------->
	</div><!--end container-->


	<footer>
		<%@include file="_default_footer.jsp" %>
	</footer>


  </body>
</html>


<!---------------------------------------------------------Script --------------------->
<script type="text/javascript">
	function to_event() {
		var event = 'http://localhost:8082/naturalmom_project/_event_list.jsp';
		event+="?page=event";
		$('#content_body').load(event);
	}

</script>
