<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="resources/js/jquery-1.11.3.min.js"></script>
   <!-- [if lt IE 9]><script src="js/html5shiv.js"></script><![endif] -->
   
   <link rel="apple-touch-icon" href="resources/images/logo.ico" /> <!--애플아이콘등록-->
   <link rel="shortcut icon" href="resources/images/logo.ico" /> <!--단축키아이콘등록-->
   <link rel="stylesheet" href="resources/css/index.css"/>
      
   <title>자연맘</title>
   
   </head>
   <body>

   <header>
      <%@include file="_default_header.jsp" %>
   </header>



   <div id="container">
      <%@include file="_default_menu.jsp" %>
      <!-------------Start content--------------------------------------------------->
      <div id="content">
      
      <!--본문 페이지-->
      <!--JSP로 구현해야 하는 부분-->
      <section>
         <p>상품종류 : ${category_name}</p>

         <c:forEach var="pl" items="${product_list}">
            <div>
            <a href="/soap/product/detail.nm?pdno=${pl.product_no}"><img src="/soap/resources/product_images/${pl.represent_img}" alt="${pl.product_name}"></a>
            <p><span>${pl.summary_ex}</span>&nbsp;${pl.product_name}</p>
            <p>${pl.selling_price}원</p>
            </div>
         </c:forEach>
         
      </section>
      </div>
      <!--------------------------------------------------end content--------->
      
      <!--회사이념-->
      <img id="info_naturalmom" src="resources/images/info_naturalmom.jpg">

      <!--기타배너 : 주문/회원/배송/계좌번호)-->
      <aside>
         <img src="resources/images/banner_order.jpg">
         <a href="<c:url value='join.nm'/>"><img src="resources/images/banner_membership.jpg"></a>
         <a href="<c:url value='delivery.nm'/>"><img src="resources/images/banner_delivery.jpg"></a>
         <img src="resources/images/banner_account.jpg">
      </aside>
   </div>
<!--------------------------------------------------------end container------------->
<!--Start footer---------------------------------------------------------------------->
   <footer>
      
      <%@include file="_default_footer.jsp" %>
      
   </footer>
<!-------------------------------------------------------------end footer----------->
  </body>
</html>