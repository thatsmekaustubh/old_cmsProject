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
</style>
<script type="text/javascript">
	function next(t) {
		var temp = prompt("비밀번호 확인");
		if (t.pw.value == temp) {
			return true;
		}
		return false;
	}

</script>
</head>
<body>
	<div class="test">
	<c:choose >
		<c:when test="${flag==1 }">
		<div class="header">
			<h1>LOGIN성공 !</h1>
		</div>
		<div id="login">
			사용자 정보<br> <br>
			<table>
				<tr>
					<td></td>
					<td>ID :</td>
					<td>${logined.id}</td>
					<input type="hidden" value="${logined.pw }" name="pw">
				</tr>
				<tr>
					<td></td>
					<td>Name :</td>
					<td>${logined.name }</td>
				</tr>
				<tr>
					<td></td>
					<td>Address :</td>
					<td>${logined.address }</td>
				</tr>
				<tr>
					<td></td>
					<td>Phone :</td>
					<td>${logined.phone }</td>
				</tr>
				<tr>
					<td></td>
					<td>E-mail :</td>
					<td>${logined.email }</td>
				</tr>
				<tr>
					<td></td>
					<td><a href="index.jsp">Go Main</a></td>
					<td><a href="myInfoCtrl?id=${logined.id }&pw=${logined.pw}" onclick="next(this)">정보 수정</a></td>
				</tr>
			</table>
		</div>
		</c:when>
		<c:when test="${flag==2 }">
			<div class="header">
				<h1>LOGIN 실패!</h1>
			</div>
			<div id="login">
				<a href="index.jsp">&#171; Go Main</a>
			</div>
		</c:when>
	</c:choose>

	</div>
</body>
</html>