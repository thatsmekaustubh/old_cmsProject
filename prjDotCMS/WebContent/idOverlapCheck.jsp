<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#button{
		width:50px;
	}
	.aaa{
		margin-left: 50px;
	}
</style>
</head>
<script type="text/javascript">
	function applyId(t){
		alert(t.value);
		opener.join.id.value = t.value;
		self.close();
	}
	function check(t){
		if(t.id.value==""){
			alert("ID 를 입력해주세요");
			return false;
		}
		return true;
	}
	function windowClose(t){
		window.close();
	}
</script>
<body>
중복 체크
<form action="idCheckCtrl" method="post" onsubmit="return check(this)">
	<table>
	<c:choose>
		<c:when test="${flag==null }">
				<tr>
					<td><input type ="text" placeholder="ID Check" name="id" value=""></td>
				<td>
					<input type="submit" value="OK" id="button">
					<input type="button" value="Cancel" onclick="windowClose(this)" id="button">
				</td>
			</tr>
		</c:when>
		<c:when test="${flag==0}">
		<tr><td>
			<input type="hidden" value="${param.id }" name="idP">&nbsp; [ ${param.id } ] &nbsp;
			<input type="button" class="aaa" onclick="applyId(this.idP)" value="사용">
		</td></tr>
		</c:when>
		<c:when test="${flag!=null&&flag!=0  }">
			<tr>
				<td><input type ="text" placeholder="ID Check" name="id" value=""></td>
			<td>
				<input type="submit" value="OK" id="button">
				<input type="button" value="Cancel" ondclick="windowClose(this)" id="button">
			</td>
			</tr>
				ID 사용 불가
		</c:when>
	</c:choose>
	</table>
</form>
</body>
</html>