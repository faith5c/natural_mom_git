<!-- admin_sales.jsp - 매출 - 판매분석 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript" src="/soap/resources/tablesorter/jquery-latest.js"></script> 
<script type="text/javascript" src="/soap/resources/tablesorter/jquery.tablesorter.js"></script>
<meta charset="utf-8">
	<style type = "text/css">
	
		* { margin: 0px; padding: 0px; }

		#in { width : 1024px; margin : 50px auto; color: #85858d; font-family : "나눔바른고딕", "맑은 고딕"; }
		#in a { text-decoration: underline; text-decoration: none; color:white; }
				
		h2 { margin-top:40px; margin-bottom: 20px; color: #85858D;}
		
		table { width: 100%; padding : 0px; }
		table th
		{
			background-color: #918686; 
			text-align: center; 
			color: white;
			text-style: bold; 
			padding: 10px;
		}
		table tr td
		{
			border-bottom : 1px solid lightgrey;
			text-align : center;
			margin : 0px;
			padding : 10px;
		}
		table tr:nth-child td:first-child { border-left : 1px solid grey; }
		th.header { 
    		background-image: url(/soap/resources/tablesorter/themes/blue/bg.gif); 
    		cursor: pointer; 
    		background-repeat: no-repeat; 
    		background-position: center right; 
    		border-right: 1px solid #dad9c7; 
		} 
		th.headerSortUp { 
   			background-image: url(/soap/resources/tablesorter/themes/blue/asc.gif); 
		} 
		th.headerSortDown { 
   			background-image: url(/soap/resources/tablesorter/themes/blue/desc.gif); 
		} 
	</style>
   </head>
   <body>
	
<!---Start container----------------------------------------------------------------->
<script type="text/javascript">
	$(document).ready(function() 
		{ 
			$("#rank_sells").tablesorter(); 
		} 
	); 
</script>
    <div id="in">
    	<div id = "stat_product">
		<h2 id = "product_rank"> 판매 상품 순위</h2>
			<table cellspacing="0" id = "rank_sells" class="tablesorter">
				<thead>
				<tr>
					<th>순위</th>
					<th>상품명</th>
					<th>누적 판매 수</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="rank" items="${rank_list}" begin="0" end="2" step="1">
				<tr>
					<td>${rank.rownum}</td>
					<td>${rank.product_name}</td>
					<td>${rank.all_sells}</td>
				</tr>
				</c:forEach>
				</tbody>
			</table>
			<div id = "chart_sales">
			
			</div>
		</div>
		<div id = "stat_member">
			<h2> 고객 분석</h2>
			<div id = "chart_member" >
			
			</div>
		</div>	
	</div>
	<!--------------------------------------------------------end container------------->
  </body>

</html>