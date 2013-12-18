
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function question(t){
		if(confirm("정말 삭제하시겠습니까?")){
			var temp=prompt("비밀번호를 입력해주세요.");
			if(temp==t.pw.value){
				return true;
			}
		}
		return false;
	}
</script>
<style type="text/css">
	.frame {
		padding-left: 20px;
		padding-right: 20px;
		margin-top: -30px;
		margin-top: 70px;
		height: 600px;
	}
	.subFrame {
		margin-left: 210px;
		margin-top: 140px;
		width: 1170px;
		height: 84;
		width: 1170px;
	}
	.test{
		margin-top: 20px;
		margin-left: 370px;
	}
	#cell{
		text-align: center;
		border-top: 1px solid gray;
		border-bottom: 1px solid gray;
	}
	.searchText{
		position: absolute;
		top:150px;
		left:900px;
		float: left;
	}
	.select1{
		width: 100px;
	}
	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<div class="frame">
		
		<div class="subFrame">
			<h1>Member-LIST</h1>
		</div>
		<div class="searchText">
			<form action="memberListCtrl" method="post">
				<select class="select1" name="flag">
					<option value="1">이름</option>
					<option value="2">ID</option>
				</select>
				<input type="text" placeholder="검색" name="key">
				<input type="submit" value="OK">
			</form>
		</div>
		<div class="test">
		<form action="">
			<table>
				<tr>
					<td id="cell" width="80px">ID</td>
					<td id="cell" width="80px">Name</td>
					<td id="cell" width="300px">Address</td>
					<td id="cell" width="100px">Phone</td>
					<td id="cell" width="100px">E-Mail</td>
					<td id="cell" width="50px"></td>
					<td id="cell" width="50px"></td>
				</tr>
				<c:forEach var="list" items="${mList }">
					<tr>
						<td>${list.id }</td><td>${list.name }</td><td>${list.address }</td><td>${list.phone }</td>
						<td>${list.email }</td><td><a href="myInfoCtrl?id=${list.id }&pw=${list.pw}">수정</a></td>
						<td><a href="deleteCtrl?id=${list.id }&pw=${list.pw}" onclick="return question(this)">탈퇴</a></td>
						<input type="hidden" value="${list.pw }" name="pw">
					</tr>
				</c:forEach>
			</table>
		</form>
		<div class="paging">		
			<c:forEach var="pageNum" begin="1" end="${totalCount }">
				<c:set var="sRecNum" value="${(pageNum) * perPage }" />
					<c:choose>
						<c:when test="${pageNum!=curPage }">
							<a href="memberListCtrl?sPage=${sRecNum-10 }&ePage=${perPage }"> ${pageNum }</a>
						</c:when>
									<%-- pageCtrl?dong=${dong }&sPage=${sRecNum }&ePage=${perPage } --%>
						<c:otherwise>
							[${pageNum}] 
						</c:otherwise>
				</c:choose>
			</c:forEach>
		</div>
		</div>
	</div>
</head>
<body>
</body>
</html>