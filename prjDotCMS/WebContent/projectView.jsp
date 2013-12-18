<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function back() {
		location.href="projectList";
	}
</script>
<style type="text/css">
.test {
	padding-left: 20px;
	padding-right: 20px;
	margin-top: -30px;
	margin-top: 70px;
	height: 600px;
}

#body {
	margin-top: 10px;
	margin-left: 430px;
	width: 900px;
	height: 560px;
}

#layout1 {
	width: 70px;
}

.header {
	margin-left: 210px;
	margin-top: 140px;
	width: 1170px;
	height: 84;
	width: 1170px;
}
#photo{
	width: 645px;
	height: 420px;
	margin-left: 10px;
}

</style>
</head>
<body>
	<div class="test">
		<div class="header">
			<h1>Photo Gallery</h1>
		</div>
		<div id="body">
			<form action="">
			<c:forEach var="model" items="${pDto }">
				<table>
					<tr><input type="hidden" value="${model.seq }" name="seq">
						<td id="layout1">제목 : </td>
						<td>
							<input type="hidden" value="${model.title }" name="title">
							${model.title }
						</td>
					</tr>
					<tr><input type="hidden" value="${model.author }" name="author">
						<td colspan="3"><input type="hidden" value="${model.image }" name="image">
							<img src="upload/${model.image }" id="photo">
						</td>
					</tr>
					<tr>
						<td>파일 이름 : </td><input type="hidden" value="${model.filename }" name="filename">
						<td colspan="3">${model.filename }</td>
					</tr>
					<tr>
						<td>내용 : </td><input type="hidden" value="${model.description }" name="description">
						<td colspan="3">${model.description }</td>
					</tr>
				</table>
			</c:forEach>
			<a href="#" onclick="back()">&#171; Back</a>
			</form>
		</div>
	
	</div>
</body>
</html>