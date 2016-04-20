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


      #buttons { margin-top: 20px; margin-bottom: 20px; text-align: right; }
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
      #buttons span { color: black; }

   </style>
<!-- 링크, 이미지 살려놓기. product.nm 상태에도 리스트 띄우기 -->
<!-- container 부분 -->   
<script type = "text/javascript">

   <% if(request.getParameter("rslt") != null 
         && request.getParameter("rslt").equals("true")){ %>      
         alert('상품 등록에 성공했습니다.');            
   <% } else if (request.getParameter("rslt") != null
         && request.getParameter("rslt").equals("m_true")){ %>
         alert('상품 수정에 성공했습니다.');   
   <% } else if (request.getParameter("rslt") != null
         && request.getParameter("rslt").equals("m_false")){ %>   
         alert('상품 수정에 실패했습니다.');
   <% } else if (request.getParameter("rslt") != null
         && request.getParameter("rslt").equals("error")){ %>   
         alert('상태 변경에 실패했습니다.');   
   <% } %>
   
   function order_product(by)
   {
      var by_param = "by=";
      var order_param = "&order=";
      
      if(by == 'no')
      {
         var str = document.getElementById("no").innerHTML;
         by_param = by_param + "no";
         order_original();
         
         if(str == "▼ 상품번호")
         {
            document.getElementById("no").innerHTML = "▲ 상품번호";
            order_param = order_param + "true";
         }
            
         else
         {
            document.getElementById("no").innerHTML = "▼ 상품번호";
            order_param = order_param + "false";
         }
      }
      else if(by == 'ct')
      {
         var str = document.getElementById("ct").innerHTML;
         by_param = by_param + "ct";
         order_original();
         
         if(str == "▼ 분류")
         {
            document.getElementById("ct").innerHTML = "▲ 분류";
            order_param = order_param + "true";
         }
            
         else
         {
            document.getElementById("ct").innerHTML = "▼ 분류";
            order_param = order_param + "false";
         }
                        
      }
      else if(by == 'nm')
      {
         var str = document.getElementById("nm").innerHTML;
         by_param = by_param + "nm";
         order_original();
         
         if(str == "▼ 상품명")
         {
            document.getElementById("nm").innerHTML = "▲ 상품명";
            order_param = order_param + "true";
         }
         else
         {
            document.getElementById("nm").innerHTML = "▼ 상품명";
            order_param = order_param + "false";
         }
                        
      }
      else if(by == 'pr')
      {
         var str = document.getElementById("pr").innerHTML;
         by_param = by_param + "pr";
         order_original();
         
         if(str == "▼ 가격(원가)")
         {
            document.getElementById("pr").innerHTML = "▲ 가격(원가)";
            order_param = order_param + "true";
         }
            
         else
         {
            document.getElementById("pr").innerHTML = "▼ 가격(원가)";   
            order_param = order_param + "false";
         }
                     
      }
      else if(by == 'st')
      {
         var str = document.getElementById("st").innerHTML;
         by_param = by_param + "st";
         order_original();
         
         if(str == "▼ 재고")
         {
            document.getElementById("st").innerHTML = "▲ 재고";
            order_param = order_param + "true";
         }
            
         else
         {
            document.getElementById("st").innerHTML = "▼ 재고";
            order_param = order_param + "false";
         }
                     
      }
      else if(by == 'dis')
      {
         var str = document.getElementById("dis").innerHTML;
         by_param = by_param + "dis";
         order_original();
         
         if(str == "▼ 진열 상태")
         {
            document.getElementById("dis").innerHTML = "▲ 진열 상태";
            order_param = order_param + "true";
         }
         else
         {
            document.getElementById("dis").innerHTML = "▼ 진열 상태";   
            order_param = order_param + "false";
         }
                     
      }
      else if(by == 'sal')
      {
         var str = document.getElementById("sal").innerHTML;
         by_param = by_param + "sal";
         order_original();
         
         if(str == "▼ 판매 상태")
         {
            document.getElementById("sal").innerHTML = "▲ 판매 상태";
            order_param = order_param + "true";
         }
            
         else
         {
            document.getElementById("sal").innerHTML = "▼ 판매 상태";   
            order_param = order_param + "false";
         }
      }
      
      else if(by == 'all')
      {
         var str = document.getElementById("all").innerHTML;
         by_param = by_param + "all";
         order_original();
         
         if(str == "▼ 총 누적판매량")
         {
            document.getElementById("all").innerHTML = "▲ 총 누적판매량";
            order_param = order_param + "true";
         }
         
         else
         {
            document.getElementById("all").innerHTML = "▼ 총 누적판매량";   
            order_param = order_param + "false";
         }                     
      }
      
//      var url = "product.nm?page=manage&" + by_param + order_param; 
      location.href = "product.nm?page=manage&" + by_param + order_param;
      
      // ajax
/*       var url = "product.nm";
      var param = "?page=manage&" + by_param + order_param;
      $.get(url + param, function(data){
         $( ".data_part" ).html( data );
         alert( "Load was performed." );
      }); */
   }

   function order_original()
   {
      document.getElementById("no").innerHTML = "▼ 상품번호";
      document.getElementById("ct").innerHTML = "▼ 분류";
      document.getElementById("nm").innerHTML = "▼ 상품명";
      document.getElementById("pr").innerHTML = "▼ 가격(원가)";
      document.getElementById("st").innerHTML = "▼ 재고";
      document.getElementById("dis").innerHTML = "▼ 진열 상태";
      document.getElementById("sal").innerHTML = "▼ 판매 상태";
      document.getElementById("all").innerHTML = "▼ 총 누적판매량";
   }
   
   function state_change(id, state)
   {
      var url = "product.nm?page=process&item=" + id + "&order=" + state;
      var checked = '';
      $('input:checkbox[id="chk"]:checked').each(function(){
         checked += '&no=' + $(this).val();
      });
//       alert(url + checked);
      if(checked.indexOf('&no') == -1)
      {
         alert('상품을 선택해주세요.');
      }         
      else
      {
         location.href = url + checked;
      }
   }
   
   function all_check(all)
   {
      if( $(all).is(":checked") == true ){
          $("input[name=chk]").prop("checked", true );
         }else{
          $("input[name=chk]").prop("checked", false ); 
      }
   }
   
</script>
   <h2 id = "reg_title">상품 관리</h2>
      <div id = "buttons">
         <span>선택한 상품을 </span>
         <input type = "button" id = "dis_y" value = "진열" onclick = "state_change('dis', 1);" />
         <input type = "button" id = "dis_n" value = "진열 안함" onclick = "state_change('dis', 0);" />
         <input type = "button" id = "sale_y" value = "판매" onclick = "state_change('sal', 1);" />
         <input type = "button" id = "sale_n" value = "판매 안함" onclick = "state_change('sal', 0);" />
         <input type = "button" id = "del" value = "삭제" onclick = "state_change('del', 1);" />
      </div>
      <table cellspacing = "0" class = "data_part">
         <tr>
            <td><input type = "checkbox" id = "all_chk" onclick = "all_check(this);"/></td>
            <td><a href = "#" onclick="order_product('no');" id = "no">${param.by eq 'no' && param.order eq 'true' ? '▲' : '▼'} 상품번호</a></td>
            <td><a href = "#" onclick="order_product('ct');" id = "ct">${param.by eq 'ct' && param.order eq 'true' ? '▲' : '▼'} 분류</a></td>
            <td><a href = "#" onclick="order_product('nm');" id = "nm">${param.by eq 'nm' && param.order eq 'true' ? '▲' : '▼'} 상품명</a></td>
            <td>이미지</td>
            <td><a href = "#" onclick="order_product('pr');" id = "pr">${param.by eq 'pr' && param.order eq 'true' ? '▲' : '▼'} 가격(원가)</a></td>
            <td><a href = "#" onclick="order_product('st');" id = "st">${param.by eq 'st' && param.order eq 'true' ? '▲' : '▼'} 재고</a></td>
            <td><a href = "#" onclick="order_product('dis');" id = "dis">${param.by eq 'dis' && param.order eq 'true' ? '▲' : '▼'} 진열 상태</a></td>
            <td><a href = "#" onclick="order_product('sal');" id = "sal">${param.by eq 'sal' && param.order eq 'true' ? '▲' : '▼'} 판매 상태</a></td>
            <td><a href = "#" onclick="order_product('all');" id = "all">${param.by eq 'all' && param.order eq 'true' ? '▲' : '▼'} 총 누적판매량</a></td>
         </tr>
         <c:forEach var="product" items="${p_list}">
         <tr>
            <td><input type = "checkbox" name = "chk" id = "chk" value = "${product.product_no}" /></td>
            <td>${product.product_no}</td>
            <td>${product.category_nm}</td>
            <td><a href = "product.nm?page=modify&no=${product.product_no}">${product.product_name}</a></td>
            <td><img src = "/soap/resources/product_images/${product.represent_img}" alt = "${product.product_name}" width = "50" /></td>
            <td>${product.selling_price}(${product.cost_price})</td>
            <td>${product.stock}</td>
            <td>${product.display_state eq 1 ? 'Y' : 'N'}</td>
            <td>${product.sale_state eq 1 ? 'Y' : 'N'}</td>
            <td>${product.all_sells}</td>
         </tr>
         </c:forEach>
      </table>
      <div id = "buttons">
         <span>선택한 상품을 </span>
         <input type = "button" id = "dis_y" value = "진열" onclick = "state_change('dis', 1);" />
         <input type = "button" id = "dis_n" value = "진열 안함" onclick = "state_change('dis', 0);" />
         <input type = "button" id = "sale_y" value = "판매" onclick = "state_change('sal', 1);" />
         <input type = "button" id = "sale_n" value = "판매 안함" onclick = "state_change('sal', 0);" />
         <input type = "button" id = "del" value = "삭제" onclick = "state_change('del', 1);" />
      </div>
</html>