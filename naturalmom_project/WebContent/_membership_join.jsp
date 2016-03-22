<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style type="text/css">

#inside {
	text-align: left;
	margin : 0px 150px;
	font : 16px "나눔바른고딕", "맑은 고딕", Arial;
}

table td{
	border: 1px solid white;
	padding: 10px;
	text-align: left;
	font-size: 13px;
	color: black;
}

h2{color: #004523;
	padding-top: 100px;}

#button { text-align: center; }
#submit { 
			padding : 7px 30px;
			margin-left : 5px;
			margin-right : 5px; 
			background-color : #85858D;
			color : white;
			font-family : "나눔바른고딕", "맑은 고딕";
			font-size : 16px;
			border-radius : 10px; 
			border : 0px;
}

td:FIRST-CHILD {
	width: 85px;
	vertical-align: top;
}

#id, #name, #email1, #email2 { width: 100px; }
#phone1, #phone2, #phone3, #post_num1, #post_num2, #year
	{ width: 70px; }
#address, #address_detail { width: 250px; }

</style>
<html>
<div id="inside">
	<h2>&nbsp;&nbsp;회원가입</h2>
	<br><hr>
	<form action="" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td id="check_id"><input type="text" id="id" name="id" onblur="check_id()"/>
					<button>중복확인</button>&nbsp;&nbsp;<span>(6-18자 입력)</span></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td id="check_pw"><input type="password" id="pw" name="pw" onblur="check_pw()"/>
					&nbsp;&nbsp;<span>(영문, 숫자포함 6-18자 입력)</span></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" id="pw2" name="pw2"/>&nbsp;
					<span>비밀번호를 한번 더 입력하세요</span></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" id="name" name="name"/></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" id="male" value="male" checked="checked"/><label for="male">&nbsp;남</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="gender" id="female" value="female"/><label for="female">&nbsp;여</label></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
					<input id="year" name="year" type="number" placeholder="1999"/>년 
					<select id="month" name="month">
                        <%for(int i=1; i<13; i++){ %>
                     		<option value="<%= i %>">&nbsp;<%= i %>&nbsp;</option>
                     	<%} %>
                     </select>월
                     <select id="day" name="day">
                     	<%for(int i=1; i<32; i++){ %>
                     		<option value="<%= i %>">&nbsp;<%= i %>&nbsp;</option>
                     	<%} %>
                     </select>일
				</td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
				<td>
					<select id="phone1" name="phone1">
                        <option value="010">&nbsp;010&nbsp;</option>
                        <option value="016">&nbsp;016&nbsp;</option>
                        <option value="017">&nbsp;017&nbsp;</option>
                        <option value="018">&nbsp;018&nbsp;</option>
                        <option value="019">&nbsp;019&nbsp;</option>
                     </select>-
					<input type="number" id="phone2" name="phone2" />-
					<input type="number" id="phone3" name="phone3" />
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>
					<input type="text" id="email1" name="email1" />@<input type="text" id="email2" name="email2" />
					<select id="email_select" name="email_select">
						<option>직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="nate.com">nate.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="gmail.com">gmail.com</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<input type="number" id="post_num1" name="post_num1" disabled="disabled"/>-
					<input type="number" id="post_num2" name="post_num2" disabled="disabled"/>
					<!-- post_num1 + post_num2 = addr_post -->
					<button id="find_post_num">우편번호 찾기</button><br>
					<input type="text" id="address" name="address" disabled="disabled"/>
				</td>
			</tr>
			<tr style="margin: -10px;">
				<td>상세주소</td>
				<td>
					<input type="text" id="address_detail" name="address_detail" />
					<!-- address+address_detail = addr_detail -->
				</td>
			</tr>
			<tr>
				<td colspan="2"><p id="button"><input type="submit" id="submit" value="확인" /></p></td>
			</tr>
		</table>
	</form>

</div>
<script type="text/javascript">
	
	function check_id() {
		var length_id = $('#id').val().length;
		
		console.log(length_id);
		if( length_id < 6){
			$("#check_id span").css("color", "red").text("아이디가 너무 짧습니다");
		} else if( length_id > 18){
			$("#check_id span").css("color", "red").text("아이디가 너무 깁니다");
		} else {
			$("#check_id span").text("");
		}
	}

	function check_pw() {
		var length_pw = $('#pw').val().length;
		
		console.log(length_pw);
		if( length_pw < 6){
			$("#check_pw span").css("color", "red").text("비밀번호가 너무 짧습니다");
		} else {
			$("#check_pw span").text("");
		}
	}

</script>

</html>

