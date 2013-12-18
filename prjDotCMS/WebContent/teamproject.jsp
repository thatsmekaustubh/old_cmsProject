<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
	function alertMessage(){
		alert("등록 성공");
		location.href="projectList";
	}
	function deleteElement(t){
		if(confirm("정말 삭제하시겠습니까?")){
			var temp=prompt("비밀번호를 입력해주세요.");
			if(temp==t.pw.value){
				return true;
			}
		}
		return false;
	}
	function updateElement(t){
		if(confirm("수정 하시겠습니까?")){
			var temp=prompt("비밀번호를 입력해주세요.");
			if(temp==t.pw.value){
				return true;
			}
		}
		return false;
	}
</script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose>
	<c:when test="${param.page == null}">
		<c:set var="pageNum" value="1" />
	</c:when>
	<c:otherwise>
		<c:set var="pageNum" value="${param.page }" />
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${flag==1 }">
		<body onload="alertMessage()">
		</body>
	</c:when>
</c:choose>
<div class="top-spacer">&nbsp;</div>

<div class="page-wrapper">
<div class="container">
<div class="row">
<div class="span12">
<div class="row-fluid page-header">
  <div class="span6"><h2>작품소개 ${pageNum }</h2></div>
  <div class="span6">
    <div class="pull-right"  style="margin-top:20px;">
    	<a href="index.jsp?content=projectForm.jsp" class="btn btn-inverse btn-large"> 프로젝트 등록</a>
   	</div>
   
  </div>
</div>

<ul class="thumbnails" style="margin-bottom:50px;">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach var="list" items="${mList }" begin="0" end="7" step="1">
	<li class="span3"">
       <div class="thumbnail" >
         <a href="projectDetailCtrl?key=${list.seq }" class="movie-thumbnail" style="background: url('/contentAsset/resize-image/b6eba9e1-52c3-4668-a6b9-04cc17978ad7/thumbnail/w/270') no-repeat center center;">
           <div class="play-btn">
           <input type="hidden" value="${list.author }" name="pw">
          	<img src="upload/${list.image }" alt="222" style="z-index: 1000">
           </div> 
         </a>
         <input type="hidden" value="${list.seq }" name="seq">
         <h4>${list.title }</h4>
         <p>${list.description }</p>
         <a href="projectDeleteCtrl?key=${list.seq }" onclick="return deleteElement(this)">[ 삭제  ]</a>
         <a href="projectUpdateCtrl?key=${list.seq }" onclick="return updateElement(this)">[ 수정 ]</a>
       </div>
     </li>
</c:forEach>     
</ul>
                                                                                                                                                                                                                                      
<hr>

<!-- ========== PAGINATION TOP =========== -->
    
<div class="pagination text-center">
  <ul>
	<li class="disabled">
		<!-- <a href="#">&#x25C0;</a> --></li>
		<c:forEach var="pageNum" begin="1" end="${totalCount }">
			<c:choose>
				<c:when test="${pageNum>=10 }">
					 <a href="projectList?&sPage=${(sRecNum-8)*10 }&ePage=${perPage }"> -->&#x25B6;</a></li>
				</c:when>
			</c:choose>

			<c:set var="sRecNum" value="${(pageNum) * perPage }" />
				<c:choose>
					<c:when test="${pageNum!=curPage }">
						<a href="projectList?&sPage=${sRecNum-8 }&ePage=${perPage }"> ${pageNum }</a>
					</c:when>
						<%-- pageCtrl?dong=${dong }&sPage=${sRecNum }&ePage=${perPage } --%>
					<c:otherwise>
						[${pageNum}] 
					</c:otherwise>
				</c:choose>
		</c:forEach>
    <li>
    </ul>  
</div>
      
</div><!--/span-->
</div><!--/row-->
</div><!-- /container-->
