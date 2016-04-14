<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<style type = "text/css">

		#container   { width : 1024px; margin : 50px auto; color: #85858d; }
		#container a { text-decoration: underline; }

		#container h2 { margin-bottom : 15px; }
		
		table { width: 100%; padding : 0px; }
		table tr:first-child td, table tr:first-child td a { text-align:center; background-color: #918686; color: white; }
		table tr:not(:first-child) td a { color: black; }
		table tr td { border-top : 1px solid grey; border-bottom : 1px solid grey; }
		table tr td { border-right : 1px solid lightgrey; }
		table tr td:first-child { border-left : 1px solid grey; }
		table tr td:last-child { border-right: 1px solid grey; }
		table tr td { padding : 10px; }

		table tr:not(:first-child) td:nth-child(1), table tr:not(:first-child) td:nth-child(2),  
		table tr:not(:first-child) td:nth-child(3), table tr:not(:first-child) td:nth-child(4), 
		table tr:not(:first-child) td:nth-child(5), table tr:not(:first-child) td:nth-child(8), 
		table tr:not(:first-child) td:nth-child(9) { text-align: center; }
		table tr:not(:first-child) td:nth-child(6), table tr:not(:first-child) td:nth-child(7), 
		table tr:not(:first-child) td:nth-child(10) { text-align: right; }


		#buttons { margin-top: 20px; text-align: right; }
		#buttons input[type = "button"]
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
		#buttons input[type = "button"]:hover { opacity : 0.7; }

	</style>
<!-- 링크, 이미지 살려놓기. product.nm 상태에도 리스트 띄우기 -->
<!-- container 부분 -->	
<script type="text/javascript">

	function order_product(by)
	{
		var by_param = "by=";
		var order_param = "&order=";
		
		if(by == 'no')
		{
			var str = document.getElementById("no").innerHTML;
			by_param = by_param + "no";
			order_original();
			
			if(str == "▲ 상품번호")
			{
				document.getElementById("no").innerHTML = "▼ 상품번호";
				order_param = order_param + "true";
			}
				
			else
			{
				document.getElementById("no").innerHTML = "▲ 상품번호";
				order_param = order_param + "false";
			}
			
			alert(by_param + order_param);
		}
		else if(by == 'ct')
		{
			var str = document.getElementById("ct").innerHTML;
			by_param = by_param + "ct";
			order_original();
			
			if(str == "▲ 분류")
			{
				document.getElementById("ct").innerHTML = "▼ 분류";
				order_param = order_param + "true";
			}
				
			else
			{
				document.getElementById("ct").innerHTML = "▲ 분류";
				order_param = order_param + "false";
			}
								
		}
		else if(by == 'nm')
		{
			var str = document.getElementById("nm").innerHTML;
			by_param = by_param + "nm";
			order_original();
			
			if(str == "▲ 상품명")
			{
				document.getElementById("nm").innerHTML = "▼ 상품명";
				order_param = order_param + "true";
			}
			else
			{
				document.getElementById("nm").innerHTML = "▲ 상품명";
				order_param = order_param + "false";
			}
								
		}
		else if(by == 'pr')
		{
			var str = document.getElementById("pr").innerHTML;
			by_param = by_param + "pr";
			order_original();
			
			if(str == "▲ 가격(원가)")
			{
				document.getElementById("pr").innerHTML = "▼ 가격(원가)";
				order_param = order_param + "true";
			}
				
			else
			{
				document.getElementById("pr").innerHTML = "▲ 가격(원가)";	
				order_param = order_param + "false";
			}
							
		}
		else if(by == 'st')
		{
			var str = document.getElementById("st").innerHTML;
			by_param = by_param + "st";
			order_original();
			
			if(str == "▲ 재고")
			{
				document.getElementById("st").innerHTML = "▼ 재고";
				order_param = order_param + "true";
			}
				
			else
			{
				document.getElementById("st").innerHTML = "▲ 재고";
				order_param = order_param + "false";
			}
							
		}
		else if(by == 'dis')
		{
			var str = document.getElementById("dis").innerHTML;
			by_param = by_param + "dis";
			order_original();
			
			if(str == "▲ 진열 상태")
			{
				document.getElementById("dis").innerHTML = "▼ 진열 상태";
				order_param = order_param + "true";
			}
			else
			{
				document.getElementById("dis").innerHTML = "▲ 진열 상태";	
				order_param = order_param + "false";
			}
							
		}
		else if(by == 'sel')
		{
			var str = document.getElementById("sel").innerHTML;
			by_param = by_param + "sel";
			order_original();
			
			if(str == "▲ 판매 상태")
			{
				document.getElementById("sel").innerHTML = "▼ 판매 상태";
				order_param = order_param + "true";
			}
				
			else
			{
				document.getElementById("sel").innerHTML = "▲ 판매 상태";	
				order_param = order_param + "false";
			}					
		}
		else if(by == 'all')
		{
			var str = document.getElementById("all").innerHTML;
			by_param = by_param + "all";
			order_original();
			
			if(str == "▲ 총 누적판매량")
			{
				document.getElementById("all").innerHTML = "▼ 총 누적판매량";
				order_param = order_param + "true";
			}
				
			else
			{
				document.getElementById("all").innerHTML = "▲ 총 누적판매량";	
				order_param = order_param + "false";
			}							
		}
		
		location.href= "product.nm?page=manage&" + by_param + order_param; 
	}
	
	function order_original()
	{
		document.getElementById("no").innerHTML = "▲ 상품번호";
		document.getElementById("ct").innerHTML = "▲ 분류";
		document.getElementById("nm").innerHTML = "▲ 상품명";
		document.getElementById("pr").innerHTML = "▲ 가격(원가)";
		document.getElementById("st").innerHTML = "▲ 재고";
		document.getElementById("dis").innerHTML = "▲ 진열 상태";
		document.getElementById("sel").innerHTML = "▲ 판매 상태";
		document.getElementById("all").innerHTML = "▲ 총 누적판매량";
	}
	
</script>
	<h2 id = "reg_title">상품 관리</h2>
		<table cellspacing = "0">
			<tr>
				<td>체크</td>
				<td><a href = "#" onclick="order_product('no');" id = "no">▲ 상품번호</a></td>
				<td><a href = "#" onclick="order_product('ct');" id = "ct">▲ 분류</a></td>
				<td><a href = "#" onclick="order_product('nm');" id = "nm">▲ 상품명</a></td>
				<td>이미지</td>
				<td><a href = "#" onclick="order_product('pr');" id = "pr">▲ 가격(원가)</a></td>
				<td><a href = "#" onclick="order_product('st');" id = "st">▲ 재고</a></td>
				<td><a href = "#" onclick="order_product('dis');" id = "dis">▲ 진열 상태</a></td>
				<td><a href = "#" onclick="order_product('sel');" id = "sel">▲ 판매 상태</a></td>
				<td><a href = "#" onclick="order_product('all');" id = "all">▲ 총 누적판매량</a></td>
			</tr>
			
			<c:forEach var="product" items="${p_list}">
			<tr>
				<td><input type = "checkbox" name = "no_${product.product_no}" value = "${product.product_no}" /></td>
				<td>${product.product_no}</td>
				<td>${product.category_nm}</td>
				<td><a href = "a_product.jsp?page=modify">${product.product_name}</a></td>
				<td><img src = "${product.represent_img}" alt = "${product.product_name}" width = "50" /></td>
				<td>${product.selling_price}(${product.cost_price})</td>
				<td>${product.stock}</td>
				<td>${product.display_state eq 1 ? 'Y' : 'N'}</td>
				<td>${product.sale_state eq 1 ? 'Y' : 'N'}</td>
				<td>${product.all_sells}</td>
			</tr>
			</c:forEach>
		</table>
		<div id = "buttons">
			<input type = "button" id = "dis_y" value = "진열" />
			<input type = "button" id = "dis_n" value = "진열 안함" />
			<input type = "button" id = "sale_y" value = "판매" />
			<input type = "button" id = "sale_n" value = "판매 안함" />
			<input type = "button" id = "del" value = "삭제" />
		</div>
</html>