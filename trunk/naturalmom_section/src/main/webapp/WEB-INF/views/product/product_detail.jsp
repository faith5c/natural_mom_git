<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="resources/js/jquery-1.11.3.min.js"></script>
   <!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
   
   <link rel="apple-touch-icon" href="/soap/resources/images/logo.ico" /> <!--애플아이콘등록-->
   <link rel="shortcut icon" href="/soap/resources/images/logo.ico" /> <!--단축키아이콘등록-->
   <link rel="stylesheet" href="/soap/resources/css/product_soap.css"/>
      
   <title>자연맘</title>
   
  </head>
  <body>



   <header>
      <%@include file="../_default_header.jsp" %>
   </header>

   
   <div id="container">
      <%@include file="../_default_menu.jsp" %>
      <!-------------Start content--------------------------------------------------->
   
      
      
      <div id="content">
      
      
      
      
      
         <div id="soap_img">
            <img src="/soap/resources/product_images/${pvo.represent_img}" alt="${pvo.product_name}사진"/>
         </div>
         
         <div id="soap_table">
            <table>
            <form action="/soap/order/temporder.nm" method="post">
               <tr>
                  <td colspan="2">${pvo.product_name}&nbsp;${pvo.weight}g</td>
               </tr>
               <tr>
                  <td colspan="2">${pvo.summary_ex}</td>
               </tr>
               <tr>
                  <td>판매 가격</td>
                  <td><label id="selling_price" >${pvo.selling_price}</label>원</td>
               </tr>
               <tr>
                  <td>유통 기한</td>
                  <td>상품 수령 후 1년</td>
               </tr>
               <tr>
                  <td>중량</td>
                  <td>${pvo.weight}g</td>
               </tr>
               <tr>
                  <td>구매 수량</td>
                  <td><input id="purchase_count" name="buy_num" type="number" min="1" max="100" step="1" value="1" size="3"/></td>
               </tr>
               <tr>
                  <td colspan="2">
                     총계
                     <label id="total_price" >${pvo.selling_price}</label>원
                  </td>
               </tr>
               <tr>
                  <td colspan="2">
                  <button style="width:85px; padding : 13px 10px; margin : 0 5px;" >장바구니</button>
                  <button style="width:85px; padding : 13px 10px; margin : 0 5px;">관심상품</button>
                  <button style="width:85px; padding : 13px 10px; margin : 0 5px; 
                  background-color : #000000" type="submit">바로구매</button>
                  </td>
               </tr>
                  <!-- 서브밋 시 가져갈 것들 -->
                  <input type="hidden" name="product_no" value="${pvo.product_no}">
                  <input type="hidden" name="product_name" value="${pvo.product_name}">
                  <input type="hidden" name="represent_img" value="${pvo.represent_img}">
                  <input type="hidden" name="charge" value="${pvo.selling_price}">
               </form>
            </table>
         </div>
         
         <p>상품설명</p>
         <div>
            <img id="soap_desc" src="/soap/resources/product_images/${pvo.detail_img}" alt="${pvo.product_name}설명"/>
         </div>
<!--
          <div id="soap_img">
            <img src="/soap/resources/product_images/soap1.jpg" alt="아마씨사진"/>
         </div>
         
         <div id="soap_table">
            <table>
               <tr>
                  <td colspan="2">아마씨 비누 100g</td>
               </tr>
               <tr>
                  <td colspan="2">영양 가득한 생명의 씨앗</td>
               </tr>
               <tr>
                  <td>판매 가격</td>
                  <td><label id="selling_price">3500</label>원</td>
               </tr>
               <tr>
                  <td>유통 기한</td>
                  <td>상품 수령 후 1년</td>
               </tr>
               <tr>
                  <td>중량</td>
                  <td>100g</td>
               </tr>
               <tr>
                  <td>구매 수량</td>
                  <td><input id="purchase_count" type="number" min="1" max="100" step="1" value="1" size="3"/></td>
               </tr>
               <tr>
                  <td colspan="2">
                     총계
                     <label id="total_price">3500</label>원
                  </td>
               </tr>
               <tr>
                  <td colspan="2">
                  <button style="width:85px; padding : 13px 10px; margin : 0 5px;" >장바구니</button>
                  <button style="width:85px; padding : 13px 10px; margin : 0 5px;">관심상품</button>
                  <button style="width:85px; padding : 13px 10px; margin : 0 5px; background-color : #000000" onclick="location.href='order.jsp';">바로구매</button>
                  </td>
               </tr>
            </table>
         </div>
         
         <p>상품설명</p>
         <div>
            <img id="soap_desc" src="/soap/resources/product_images/soap1_desc.jpg" alt="아마씨설명"/>
         </div>
          -->
         <p>배송정보</p>
         <div>
            <img src="/soap/resources/images/info_delivery.jpg" alt="배송정보"/>
         </div>
         <%@ include file="../board/review/_review.jsp" %>
      </div>
      <!--------------------------------------------------end content--------->
   </div><!--end container-->


   <footer>
      <%@include file="../_default_footer.jsp" %>
   </footer>

   <script type="text/javascript">
      $(function(){
         var selling_price = $("#selling_price").html();
         console.log("판매가 : "+selling_price);
         
         var purchase_count = $("#purchase_count").val();
         console.log("개수 : "+purchase_count);
         
         var total_price = selling_price * purchase_count;
         console.log("총계 : "+ total_price);
         
         $("#purchase_count").change(function(){
            total_price = selling_price * $(this).val();
            $("#total_price").html(total_price);
            console.log("총계 : "+ total_price);
         });
      })
   </script>

  </body>
</html>