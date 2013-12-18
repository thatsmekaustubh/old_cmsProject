<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style type="text/css">
	.loginSession{
		margin-left: 1000px;
		margin-top: 50px
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
<div class="top-spacer">&nbsp;</div>

<div class="page-wrapper">
      
<div class="container">
<div class="span12">

<div class="row-fluid page-header">
  <div class="span6"><h2>사이트 소개</h2></div>
  <div class="loginSession">
  <c:choose>
  	<c:when test="${logined==null }">
  		안녕하세요. 환영합니다.
  	</c:when>
    <c:when test="${logined!=null }">
  		[ ${logined.name } ] 님  환영합니다. <br>
  		<a href="logout">[ 로그 아웃 ]</a>
  		<a href="myInfoCtrl?id=${logined.id }&pw=${logined.pw}" onclick="next(this)">[ 정보 수정 ]</a>
  	</c:when>
  </c:choose>
  
  	
  </div>
</div>                     		      	
		   
			         				         		
   		       
<p class="lead">
본 사이트는 인덕대학교 컴퓨터소프트웨어과 2013년 객체지향프로그래밍2 (JSP) 과목에서 실습한 내용을 정리한 사이트이다.<br>
학생들이 실습을 통해 습득한 기능 구현 능력을 확인하고, 필요한 경우 추가하여 자신의 포트폴리오로써 활용할 수 있도록 한다.<br>
대표적인 자바 기반 CMS로 빈응형 웹 디자인를 지원하는 dotcms.com의 디자인을 활용해보았다.
</p>             	
		   
			         				         		
   		       
<div class="box-container">
  <a href="index.jsp?content=login.jsp" class="box0 home-box">
    <span class="sprite-img responsive"></span>
    <h3>로그인 처리</h3>
    <p>허용된 사용자인지를 확인하기 위한 기능을 구현한다.</p>
  </a>
  <a href="index.jsp?content=join.jsp" class="box1 home-box">
    <span class="sprite-img multi-tenant"></span>
    <h3>회원 가입</h3>
    <p>회원 기반 서비스 제공을 위한 회원 가입 기능을 구현한다.</p>
  </a>
  <a href="memberListCtrl" class="box2 home-box">
    <span class="sprite-img scalable"></span>
    <h3>회원 관리</h3>
    <p>회원 정보 조회/수정/삭제 기능과 회원 목록 보기 기능을 구현한다.</p>
  </a>
  <a href="#anchor2" class="box3 home-box">
    <span class="sprite-img push-publishing"></span>
    <h3>주소록 처리</h3>
    <p>동기반 주소 검색 기능을 구현한다.</p>
  </a>
  <a href="projectList" class="box4 home-box">
    <span class="sprite-img apis-cmis"></span>
    <h3>작품소개 게시판</h3>
    <p>8개의 작품을 보여주는 이미지 게시판을 구현한다.</p>
  </a>
  <a href="index.jsp?content=reference.jsp" class="box5 home-box">
    <span class="sprite-img workflows"></span>
    <h3>반응형 웹 디자인 참고 페이지</h3>
    <p>반응형 웹 디자인 참고 페이지를 확인할 수 있다.</p>
  </a>
</div>

</div>
</div>

