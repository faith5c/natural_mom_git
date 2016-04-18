<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style type="text/css">
.order_title {
    color: #004523;
	margin-bottom: 5px;
	margin-top: 100px;
}

table tr td {
	padding: 10px;
}

.del_info tr td {
	padding: 0;
}

table input[type="text"], table input[type="text"], table select {
	font: 16px "나눔바른고딕", "맑은 고딕", Arial;
	height: 25px;
}

.info {
	width: 100%;
	padding: 0px;
	font: 16px "나눔바른고딕", "맑은 고딕", Arial;
}

.info tr:first-child td {
	border-top: 2px solid black;
}

.info tr:last-child td {
	border-bottom: 1px solid #AAAAB0;
	padding-top: 15px;
	padding-bottom: 15px;
}

.info tr td:first-child {
	background-color: #F9F9F9;
	border-right: 1px solid #AAAAB0;
	text-align: right;
	width: 15%;
}

.info tr td:last-child {
	text-align: left;
}

.info tr td input {
	border: 1px solid #AAAAB0;
	font: 16px "나눔바른고딕", "맑은 고딕", Arial;
}

.info tr td select {
	border: 1px solid #AAAAB0;
	font-size: 1em;
	font: 16px "나눔바른고딕", "맑은 고딕", Arial;
}

table tr td input[type="radio"] {
	margin-right: 3px;
}

table tr td label {
	margin-right: 25px;
}

table tr .explain {
	text-align: center;
}

#product_list {
	width: 100%;
	padding: 0px;
	font: 16px "나눔바른고딕", "맑은 고딕", Arial;
	text-align: center;
}

#product_list tr:first-child td {
	border-top: 2px solid black;
	border-bottom: 1px solid #AAAAB0;
	background-color: #F9F9F9;
	padding-top: 15px;
	padding-bottom: 15px;
}

#product_list tr:last-child td {
	border-top: 1px solid #AAAAB0;
	border-bottom: 1px solid #AAAAB0;
	background-color: #F9F9F9;
	padding-top: 20px;
	padding-bottom: 20px;
}

#product_list tr:last-child td {
	text-align: right;
}

#name {
	width: 300px;
}

#phone1, #phone2, #phone3, #card_num1, #card_num2, #card_num3,
	#card_num4, #phoneRe1, #phoneRe2, #phoneRe3 {
	width: 70px;
}

#post_num1, #post_num2, #email1, #email2, #post_numRe1, #post_numRe2, {
	width: 100px;
}

#del_msg, #address_detail, #address_detailRe{
	width: 550px;
}

.buttons input {
	padding-top: 7px;
	padding-bottom: 7px;
	background-color: #85858D;
	color: white;
	font-family: "나눔바른고딕", "맑은 고딕";
	font-size: 16px;
	border-radius: 10px;
	border: 0px;
}

.buttons[type="submit"] {
	padding-top: 7px;
	padding-bottom: 7px;
	padding-right: 20px;
	padding-left: 20px;
	margin: 50px auto;
	background-color: #85858D;
	color: white;
	font-family: "나눔바른고딕", "맑은 고딕";
	font-size: 20px;
	border-radius: 10px;
	border: 0px;
}

.buttons:hover {
	opacity: 0.7;
}

#submit {
	text-align: center;
}
</style>

	<h3 class="order_title">주문하기</h3>
	
		<table cellspacing="0" id="product_list">
			<tr>
				<td width="35%">제품이미지</td>
				<td width="35%">제품명</td>
				<td width="10%">수량</td>
				<td width="10%">가격</td>
				<td width="10%">주문</td>
			</tr>
			<c:if test="${not empty temp}">
			<c:forEach var="t" items="${temp}">
			<tr>
				<td><img width="20%" alt="" src="/soap/resources/product_images/${t.represent_img}" /></td>
				<td><label name="product_name" id="product_name">${t.product_name}</label></td>
				<td><input id="buy_num" name="buy_num" type="number" min="1" max="100" step="1" value="${t.buy_num}" size="3"/></td>
				<td><label name="total_price" id="total_price" >${t.total_price}</label>원</td>
				<td class="buttons">
					 <!-- order_cencle() 매개변수는 행 번호를 넣을 것 -->
					<input type="button" onclick="order_cencle(${t.product_no})" value="취소" />
				</td>
			</tr>
			</c:forEach>
			</c:if>
			<c:if test="${empty temp}">
			<tr>
				<td colspan="5">주문하실 상품이 없습니다.</td>
			</tr>
			</c:if>
			<tr>
				<td colspan=5>
				<c:if test="${ not empty temp}">
				총 주문금액 : <label class="total" >${t.total_price}</label> + 배송비 3,000원 = <b><label name="total" id="total" >${t.total_price+3000}</label>원</b>
				</c:if>
				</td>
			</tr>
		</table>
		</div>
		<!-- 주문하기 끝 -->

		<h3 class="order_title">주문자정보</h3>

		<div>
			<!-- 주문자 정보 시작 -->
			<table cellspacing="0" class="info">
				<tr>
					<td for="name">이름</td>
					<td><input type="text" id="name" name="name" maxlength="20"
						value="${orderer.name}"></td>
				</tr>
				<tr>
					<td>휴대폰번호</td>
					<td><input id="phone1" type="text" name="phone1" size="4"
						maxlength="4" value="${phone1}">
					- <input id="phone2" type="text" name="phone2" size="4"
						maxlength="4" value="${phone2}">- <input id="phone3" type="text"
						name="phone3" size="4" maxlength="4" value="${phone3}"> <!-- input 가로 사이즈 주기 -->
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" id="email1" name="email1" value="${email1}" />@<input
						type="text" id="email2" name="email2" value="${email2}" />
					</td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><input type="text" id="post_num1" name="post_num1"
						disabled="disabled" value="${post1}" />- 
						<input type="text" id="post_num2" name="post_num2" 
						disabled="disabled" value="${post2}" />
						<button id="find_post_num">우편번호 찾기</button>
						<br></td>
				</tr>
				<tr style="margin: -10px;">
					<td for="address_detail">상세주소</td>
					<td><input type="text" id="address_detail"
						name="address_detail" value="${orderer.addr_detail}" /></td>
				</tr>
			</table>
		</div>
		<!-- 주문자 정보 끝 -->
	
		<table class="del_info">
			<tr>
				<td width="150px"><h3 class="order_title">배송지정보</h3></td>
				<td style="padding-bottom: 5px;">&nbsp;
				<input type="checkbox" value="true" name="order_same" 
				id="order_same" style="vertical-align: text-bottim; margin-top: 
				100px;" >
				&nbsp; <label style="vertical-align: text-bottim; margin-top: 100px;">위와
						동일함<label></td>
			</tr>
		</table>
	<script type="text/javascript">
	$('#order_same').on("click",function() {
    	var check =	document.getElementById("order_same");
    	
		if ( check.checked ){
  			var name = $('#name').attr("value");
			var phone1 = $('#phone1').attr("value");
			var phone2 = $('#phone2').attr("value");
			var phone3 = $('#phone3').attr("value");
			var post_num1 = $('#post_num1').attr("value");
			var post_num2 = $('#post_num2').attr("value");
			var address_detail = $('#address_detail').attr("value");
			$('#nameRe').attr("value", name);
			$('#phoneRe1').attr("value", phone1);
			$('#phoneRe2').attr("value", phone2);
			$('#phoneRe3').attr("value", phone3);
			$('#post_numRe1').attr("value", post_num1);
			$('#post_numRe2').attr("value", post_num2);
			$('#address_detailRe').attr("value", address_detail);
	}
	});

	</script>
		<div>
		<form action="order.jsp?page=order_complete" method="post">
			<!-- 배송지정보 시작 -->
			<table cellspacing="0" class="info">
				<tr>
					<td for="nameRe">받는 분 성명</td>
					<td><input type="text" id="nameRe" name="nameRe" maxlength="20"
						value=""></td>
				</tr>
				<tr>
					<td>휴대폰번호</td>
					<td><input id="phoneRe1" type="text" name="phoneRe1" size="4"
						maxlength="4" value="">
					- <input id="phoneRe2" type="text" name="phoneRe2" size="4"
						maxlength="4" value="">- <input id="phoneRe3" type="text"
						name="phoneRe3" size="4" maxlength="4" value=""> <!-- input 가로 사이즈 주기 -->
					</td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><input type="text" id="post_numRe1" name="post_numRe1"
						disabled="disabled" value="" />- <input type="text"
						id="post_numRe2" name="post_numRe2" disabled="disabled" value="" />
						<button id="find_post_num">우편번호 찾기</button>
						<br></td>
				</tr>
				<tr style="margin: -10px;">
					<td for="address_detailRe">상세주소</td>
					<td><input type="text" id="address_detailRe"
						name="address_detail" value="" /></td>
				</tr>
				<tr>
					<td for="del_msg">배송메세지</td>
					<td><textarea id="del_msg" name="del_msg" cols="60" row="3"></textarea>
					</td>
				</tr>
			</table>
		</div>
		<!-- 배송지정보 끝 -->
	
		<h3 class="order_title">결제정보</h3>

		<div>
			<!-- 결제정보 시작 -->
			<table cellspacing="0" class="info">
				<tr>
					<td for="name">결제금액</td>
					<td><label name="charge">14,300</label>원</td>
				</tr>
				<tr>
					<td>결제방식</td>
					<td>신용카드</td>
				</tr>
				<tr>
					<td>신용카드 선택</td>
					<td><input type="radio" name="card" value="sinhan">&nbsp;신한&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="card" value="samsung">&nbsp;삼성&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="card" value="hana">&nbsp;하나&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="card" value="lotte">&nbsp;롯데&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="card" value="kb">&nbsp;KB국민&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="card" value="nh">&nbsp;NH채움&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="card" value="bc">&nbsp;비씨&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="card" value="woori">&nbsp;우리&nbsp;&nbsp;&nbsp;&nbsp;

					</td>
				</tr>
				<tr>
					<td>신용카드 번호</td>
					<td><input type="number" id="card_num1" name="card_num1"
						value="" size="4" maxlength="4" />&nbsp;&nbsp; <input type="number"
						id="card_num2" name="card_num2" value="" size="4" maxlength="4" />&nbsp;&nbsp;
						<input type="number" id="card_num3" name="card_num3" value=""
						size="4" maxlength="4" />&nbsp;&nbsp; <input type="number"
						id="card_num4" name="card_num4" value="" size="4" maxlength="4" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 유효기간 <select
						name="expiry_month">
							<option value="01">&nbsp;01&nbsp;</option>
							<option value="02">&nbsp;02&nbsp;</option>
							<option value="03">&nbsp;03&nbsp;</option>
							<option value="04">&nbsp;04&nbsp;</option>
							<option value="05">&nbsp;05&nbsp;</option>
							<option value="06">&nbsp;06&nbsp;</option>
							<option value="07">&nbsp;07&nbsp;</option>
							<option value="08">&nbsp;08&nbsp;</option>
							<option value="09">&nbsp;09&nbsp;</option>
							<option value="10">&nbsp;10&nbsp;</option>
							<option value="11">&nbsp;11&nbsp;</option>
							<option value="12">&nbsp;12&nbsp;</option>
					</select> <select name="expiry_year">
							<option value="16">&nbsp;16&nbsp;</option>
							<option value="17">&nbsp;17&nbsp;</option>
							<option value="18">&nbsp;18&nbsp;</option>
							<option value="19">&nbsp;19&nbsp;</option>
							<option value="20">&nbsp;20&nbsp;</option>
							<option value="21">&nbsp;21&nbsp;</option>
							<option value="22">&nbsp;22&nbsp;</option>
							<option value="23">&nbsp;23&nbsp;</option>
							<option value="24">&nbsp;24&nbsp;</option>
							<option value="25">&nbsp;25&nbsp;</option>
							<option value="26">&nbsp;26&nbsp;</option>
							<option value="27">&nbsp;27&nbsp;</option>
							<option value="28">&nbsp;28&nbsp;</option>
							<option value="29">&nbsp;29&nbsp;</option>
							<option value="39">&nbsp;30&nbsp;</option>
					</select></td>
				</tr>
			</table>

			<p id="submit">
				<input type="submit" value="결제하기" class="buttons">
			</p>
			<!--------------------------------------------------------end container------------->
		</form>
