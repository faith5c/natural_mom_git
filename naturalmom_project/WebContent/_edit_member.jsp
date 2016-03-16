<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style type="text/css">

#inside {
	text-align: left;
	margin : 0 150px;
}

table td{
	border: 1px solid white;
	padding: 10px;
	text-align: left;
	font-size: 13px;
	color: black;
}

#button { text-align: center; }
#submit { 
	width: 70px; 
	background-color: #635353;
	color: white;
	font-size: 13px;
	text-align: center;
	padding: 3px;
}

td:FIRST-CHILD {
	width: 85px;
	vertical-align: top;
}

#id, #name, #email1, #email2 { width: 100px; }
#phone1, #phone2, #phone3, #post_num1, #post_num2
	{ width: 70px; }
#address, #address_detail { width: 250px; }

#quit {
	margin-left: 170px;
}

</style>
<html>
<div id="inside">
	<h3>&nbsp;&nbsp;회원정보 수정</h3>
	<br><hr>
	<form action="" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="id" name="id" disabled="disabled"/>
					<button id="drop_out">회원탈퇴</button></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="pw" name="pw"/>&nbsp;
					(영문, 숫자포함 6-18자 입력)</td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" id="pw2" name="pw2"/>&nbsp;
					<span>비밀번호를 한번 더 입력하세요</span></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" id="name" name="name" disabled="disabled"/></td>
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
</html>