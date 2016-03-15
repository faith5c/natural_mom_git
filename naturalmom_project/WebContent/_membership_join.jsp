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
#submit { width: 50px; }

td:FIRST-CHILD {
	width: 80px;
	vertical-align: top;
}

#id, #name, #email1, #email2 { width: 100px; }
#phone1, #phone2, #phone3, #post_num1, #post_num2
	{ width: 70px; }
#address, #address_detail { width: 250px; }

</style>
<html>
<div id="inside">
	<h3>&nbsp;&nbsp;회원가입</h3>
	<br><hr>
	<form action="" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="id" name="id"/>
					<button id="check_id">중복확인</button></td>
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
				<td><input type="text" id="name" name="name"/></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" id="male" value="male" checked="checked"/><label for="male">&nbsp;남</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="gender" id="female" value="female"/><label for="female">&nbsp;여</label></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" id="birth" name="birth" /></td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
				<td>
					<input type="number" id="phone1" name="phone1" />-
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
						<option>naver.com</option>
						<option>hanmail.net</option>
						<option>nate.com</option>
						<option>hotmail.com</option>
						<option>gmail.com</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<input type="number" id="post_num1" name="post_num1" disabled="disabled"/>-
					<input type="number" id="post_num2" name="post_num2" disabled="disabled"/>
					<button id="find_post_num">우편번호 찾기</button><br>
					<input type="text" id="address" name="address" disabled="disabled"/>
				</td>
			</tr>
			<tr style="margin: -10px;">
				<td>상세주소</td>
				<td>
					<input type="text" id="address_detail" name="address_detail" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><p id="button"><input type="submit" id="submit" value="확인" /></p></td>
			</tr>
		</table>
	</form>
	

</div>
</html>