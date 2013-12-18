<%@page import="cms.DTO.LoginModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.test {
	padding-left: 20px;
	padding-right: 20px;
	margin-top: -30px;
	margin-top: 70px;
	height: 600px;
}

#login {
	margin-top: 100px;
	margin-left: 650px;
}

#login #button {
	width: 70px;
}

.header {
	margin-left: 210px;
	margin-top: 140px;
	width: 1170px;
	height: 84;
	width: 1170px;
}
#aTag{
	cursor: pointer;
}
</style>
<script type="text/javascript">
	function passCheck(t){
		if(t.pw1.value==t.pw2.value&&t.pw1.value!=""){
			return true;
		}
		alert("비밀번호를 확인해 주세요");
		t.pw1.focus();
		return false;
	}
</script>
</head>
<body>
	<div class="test">
		<div class="header">
			<h1>MY INFO</h1>
		</div>
		<div id="login">
			회원 정보 수정<br> <br>
			<form action="myInfoCtrl" method="post" onsubmit="return passCheck(this)" name="form1">
			<table>
				<tr>
					<td></td>
					<td>ID :</td>
					<td>${logined.id}</td><input type="hidden" value="${logined.id}" name="id">
				</tr>
				<tr>
					<td></td>
					<td>Password 1 :</td>
					<td><input type="password" value="" name="pw1"></td>
				</tr>
				<tr>
					<td></td>
					<td>Password 2 :</td>
					<td><input type="password" value="" name="pw2"></td>
				</tr>
				<tr>
					<td></td>
					<td>Name :</td>
					<td><input type="text" value="${logined.name }" name="name"></td>
				</tr>
				 <tr>
					<td></td>
					<td>Address :</td>
					<td>
						<input type="text" value="${logined.address }" name="address">
					</td>
				</tr>
				<tr>
					<td></td>
					<td>Phone :</td>
					<td>
						<input type="text" value="${phone[0] }" name="phone1" style="width: 40px;">-
						<input type="text" value="${phone[1] }" name="phone2" style="width: 60px;">-
						<input type="text" value="${phone[2] }" name="phone3" style="width: 60px;">
					</td>
				</tr>
				<tr>
					<td></td>
					<td>E-mail :</td>
					<td>
						<input type="text" value="${email[0] }" name="e1" style="width: 80px">@
						<input type="text" value="${email[1] }" name="e2" style="width: 100px">
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><input type="submit" value="정보 수정"></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
</body>
</html>