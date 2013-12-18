<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cms.DTO.*, java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소확인페이지</title>
<script language="javascript">
function checkSeq(form) {
	if(CheckLength(form.dong, 2, "동이름은 2자이상 입니다")) {
		return true;		
	}
	else {
		//document.location.href = "ZipcodeCtrl?dong=" + dong.value;
		alert("동이름은 2자이상 입니다");
		return false;
	}
}
function CheckLength(arg, len, msg){
	// value = arg.value.trim();
	value = arg.value;
	if(value.length < len){		
		return false; 
	}	
	return true; 
}  
function chkStrLength(str) {    
	var str;     
	var han_count=0;       
	han_count = (escape(str)+"%u").match(/%u/g).length-1;   
	return (str.length + han_count); 
} 
function applyZipcode(str)
{
	var len = chkStrLength(str) - 8;
	opener.join.MBPost1.value = str.substring(1, 4);
	opener.join.MBPost2.value = str.substring(5, 8);
	opener.join.MBAddress.value = str.substring(9, len);
	self.close();
}
</script>
</head>
<body>
<div>주소의 동(읍/리/면) 또는 마지막 부분을 입력하신 후<br> 검색을 누르세요.</div>
<form action="addressCtrl" method="post" name="zipcodeForm" onsubmit="return checkSeq(document.zipcodeForm);">
지역명 <input type="text" name="dong" size="30">
<input type="submit" value="검색" >
</form>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${zipList != null }">
		<select name="loc" id="loc" style="width: 400px; font-size: 17;" size=10 ondblclick="applyZipcode(this.value);">
			<c:forEach var="zModel" items="${zipList}">
				<c:set var="addr"
					value="(${zModel.zipcode}) ${zModel.sido} ${zModel.gugun } ${zModel.dong}" />
				<option value="${addr}">${addr}</option>
			</c:forEach>
		</select>
	</c:if><br>
<c:forEach var="pageNum" begin="1" end="${totalCount }">
	<c:set var="sRecNum" value="${(pageNum) * perPage }" />
		<c:choose>
			<c:when test="${pageNum!=curPage }">
				<a href="addressCtrl?dong=${dong}&sPage=${sRecNum-10 }&ePage=${perPage }"> ${pageNum }</a>
			</c:when>
						<%-- pageCtrl?dong=${dong }&sPage=${sRecNum }&ePage=${perPage } --%>
			<c:otherwise>
				[${pageNum}] 
			</c:otherwise>
		</c:choose>
</c:forEach>
<%--
<c:forEach var="zModel" items="${istModel.zListModel }">
	String addr = ${zModel.zipcode }+${zModel.sido } - ${zModel.gugun } - ${zModel.dong } 
	
	<br/>
</c:forEach>
 --%>
 
 <%--
	ArrayList<ZipcodeDTO> zListModel = (ArrayList<ZipcodeDTO>) request.getAttribute("zipList");
	//ArrayList<ZipcodeDTO> zListModel = zList.getzListModel();
	String addr = null;
	for(ZipcodeDTO zModel : zListModel) {
		addr = zModel.getZipcode() + zModel.getSido() + zModel.getGugun() + zModel.getDong() + zModel.getBunji();
--%>

<%--
	}
--%>
</body>
</html>