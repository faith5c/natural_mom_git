<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<!--유저메뉴-->
		<nav id = "user_menu_pc">
			<ul>
				<li><a href="<c:url value = '/admin/admin_default.jsp' />">관리자모드</a></li>
				<li><a href="<c:url value = '/board/customer_center.jsp' />">고객센터</a></li>
				<li><a href="<c:url value = '/mypage/mypage.jsp' />">마이페이지</a></li>
				<li><a href="<c:url value = '/order/orderlist.jsp' />">주문조회</a></li>
				<li><a href="<c:url value = '/order/basket.jsp' />">장바구니</a></li>
				<li><a href="<c:url value = '/join.nm' />">회원가입</a></li>
				<li><a href="<c:url value = '/login.nm' />">로그인</a></li>
			</ul>
		</nav>

		<!--로고-->
		<a href="<c:url value = '/index.jsp' />"><img id="logo" src="<c:url value = 'resources/images/logo_gray.gif' />" alt="로고"></a>
</html>