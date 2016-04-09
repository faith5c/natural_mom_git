<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<!--관리자 정보메뉴-->
		<nav id = "admin_info_menu">
			<ul>
				<li><a href="<c:url value = '/index.jsp' />">프론트페이지</a></li>
				<li><a href="<c:url value = '/admin/admin_edit_admin.jsp' />">정보 수정</a></li>
				<li><a href="<c:url value = '/admin/admin_logout.jsp' />">로그아웃</a></li>
			</ul>
			<h3>관리자 모드입니다.</h3>
		</nav>

		<!--관리메뉴-->
		<nav id = "admin_menu">
		<ul>
			<li>
				<a href="<c:url value = '/admin/product/admin_product.jsp' />">상품</a>
				<div id="sub">
					<ul>
						<li><a href="<c:url value = '/admin/product/admin_product.jsp?page=register' />">상품등록</a></li>
						<li><a href="<c:url value = '/admin/product/admin_product.jsp?page=manage' />">상품관리</a></li>
						<li><a href="<c:url value = '/admin/product/admin_product.jsp?page=deleted' />">삭제상품</a></li>
					</ul>
				</div>
			</li>
			<li><a href="<c:url value = '/admin/order/admin_order.jsp' />">주문</a></li>
			<li><a href="<c:url value = '/admin/member/admin_member.jsp' />">회원</a></li>
			<li>
				<a href="<c:url value = '/admin/board/admin_board.jsp' />">게시판</a>
				<div id="sub">
					<ul>
						<li><a href="<c:url value = '/admin/board/admin_board.jsp?page=notice' />">공지사항</a></li>
						<li><a href="<c:url value = '/admin/board/admin_board.jsp?page=event' />">이벤트</a></li>
						<li><a href="<c:url value = '/admin/board/admin_board.jsp?page=qna' />">Q&A</a></li>
						<li><a href="<c:url value = '/admin/board/admin_board.jsp?page=review' />">상품후기</a></li>
						<li><a href="<c:url value = '/admin/board/admin_board.jsp?page=faq' />">자주하는 질문</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="<c:url value = '/admin/sales/admin_sales.jsp' />">매출</a>
				<div id="sub">
					<ul>
						<li><a href="<c:url value = '/admin/sales/admin_sales.jsp?page=table' />">매출 조회</a></li>
						<li><a href="<c:url value = '/admin/sales/admin_sales.jsp?page=analysis' />">매출 분석</a></li>
					</ul>
				</div>
			</li>
		</ul>
		</nav>
</html>

<!------------------------------------------------------------------------Script -->
