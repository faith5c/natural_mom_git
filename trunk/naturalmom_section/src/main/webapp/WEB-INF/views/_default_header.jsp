<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>

<%
	
%>
<html>
<!--유저메뉴-->
		<nav id = "user_menu_pc">
			<ul>
				<c:if test="${not empty admin and admin eq true }">
				<li><a href="<c:url value = '/admin/product.nm' />">관리자모드</a></li>
				</c:if>
				
				<li><a href="<c:url value = '/board/notice.nm' />">고객센터</a></li>
				<li><a href="<c:url value = '/mypage.nm' />">마이페이지</a></li>
				<li><a href="<c:url value = '/orderlist.nm' />">주문조회</a></li>
				<li><a href="<c:url value = '/cart.nm' />">장바구니</a></li>
				<li><a href="<c:url value = '/join.nm' />">회원가입</a></li>
				
				<c:if test="${empty loggedin}">
				<li><a href="<c:url value = '/login.nm' />">로그인</a></li>
				</c:if>
				<c:if test="${not empty loggedin}">
				<li><a href="<c:url value = '/logout_proc.nm' />">로그아웃</a></li>
				</c:if>
			</ul>
		</nav>

		<!--로고-->
		<a href="<c:url value = '/index.nm' />"><img id="logo" src="<c:url value = '/resources/images/logo_gray.gif' />" alt="로고"></a>
</html>