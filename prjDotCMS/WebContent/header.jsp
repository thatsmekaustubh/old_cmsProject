<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<header>  
<div class="navbar navbar-inverse navbar-fixed-top">
<div class="navbar-inner">
<div class="container">
	<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</a>
	<a href="index.jsp" class="brand" style="margin-top:18px;margin-bottom:18px;font-size:34px;font-color:0xFFFFF;"> JIN induk Folios </a>
	<div class="nav-collapse collapse pull-right" id="main-menu">
  		<ul class="nav">
  		<li class="dropdown ">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 소개 <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li ><a href='index.jsp?content=intro.jsp'>사이트 소개</a></li>
				<li ><a href='index.jsp?content=login.jsp'>로그인</a></li>
				<li ><a href='index.jsp?content=join.jsp'>회원가입</a></li>
			</ul>
		</li>
		
		<li class="dropdown ">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 포트폴리오 <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li ><a href='projectList'>작품소개 게시판</a></li>
			</ul>
		</li>
		<li class="dropdown ">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">회원관리<b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li ><a href='memberListCtrl'>회원관리</a></li>
			</ul>
		</li>
		<li class="dropdown ">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Responsive Web Design 참고 <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li ><a href='index.jsp?content=reference.jsp'>Responsive Design</a></li>
				<li ><a href='index.jsp#anchor1'>Multi-site</a></li>
				<li ><a href='index.jsp#anchor2'>Push Publishing</a></li>
				<li ><a href='index.jsp#anchor3'>Highly Scalable</a></li>
				<li ><a href='index.jsp#anchor4'>APIs & CMIS</a></li>
				<li ><a href='index.jsp#anchor5'>Workflows</a></li>
			</ul>
		</li>
		</ul><!-- /.nav -->
		<div class="search">
			<form id="searchForm" name="searchForm" action="/home/search-results.dot">
				<input class="span2" type="text" name="q" placeholder="Site Search" onblur="if(this.value=='')this.value='Site Search';" onfocus="if(this.value=='Site Search')this.value='';">
			</form>
		</div>
	</div> <!-- /.nav-collapse -->
</div> <!-- / .container -->
</div> <!-- / .navbar-inner -->
</div> <!-- / .navbar -->
</header>
	