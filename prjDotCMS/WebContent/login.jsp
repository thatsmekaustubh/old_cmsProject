<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="css/dmundra.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/Grid.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/tundraGrid.css" media="screen">
<link rel="stylesheet" href="css/forms.css" type="text/css" media="screen" />

<script type="text/javascript">
	djConfig={
               parseOnLoad: true,
               isDebug: false
       };
</script>
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
<script type="text/javascript" src="js/dojo.js"></script>
<script type="text/javascript" src="js/dot-dojo.js"></script>
<script type="text/javascript" src="js/content_form_macro.js"></script>
<script type="text/javascript" src="js/engine.js"></script>
<script type="text/javascript" src="js/util.js"></script>
<script type="text/javascript" src="js/interface/TagAjax.js"></script>
<script type="text/javascript" src="js/interface/CategoryAjax.js"></script>
<script type="text/javascript" src="js/interface/BrowserAjax.js"></script>
<script type="text/javascript" src="js/interface/HostAjax.js"></script>
<script type="text/javascript" src="js/interface/TemplateAjax.js"></script>
<script type="text/javascript" src="js/interface/StructureAjax.js"></script>
  
<<div class="top-spacer">&nbsp;</div>
<div class="page-wrapper">
<div class="container">
<div class="row">
		                    		                    		                    		
<div class="span8" style="width:90%;">
  
<h1>사용자 로그인</h1>
   
<div class="submitContent">

 <!-- enctype="multipart/form-data"  -->
<c:choose>
	<c:when test="${logined.id!=null &&logined.pw !=null}">
		<p class="lead">
			<span style="font-size: 12px">
				[ ${logined.name } ] 님  환영합니다. <br>
	  			<a href="logout">[ 로그 아웃 ]</a>
	  			<a href="myInfoCtrl?id=${logined.id }&pw=${logined.pw}" onclick="next(this)">[ 정보 수정 ]</a>
	  			<a href="deleteCtrl?id=${logined.id }&pw=${logined.pw}" onclick="return question(this)">[ 회원 탈퇴 ]</a>
  			</span>
		</p>
		<div style="height: 200px;"></div>
	</c:when>
	<c:otherwise>
	<p class="lead">
		본 사이트에 방문해주셔서 감사드립니다.<br>
		정확한 사용자 아이디와 비밀번호를 입력하여 주십시요.
	</p>
<form action="login.do" method="post" id="submitContentForm" name="join">

   <div id="Start" class="contentTab first">
	<div id="StartProperties">
	<dl class="formFieldSet">
   	
	<div class="group">
	    <dt id="firstNameFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/> 아이디</label>
		</dt>
		<dd id="firstNameFieldInput" class="formFieldInput">
			<input type="text" class="text" name="id" id="firstName" maxlength="255" value="" placeholder="ID"/>			
			<span id="alertfirstName" class="errorMessages"></span>	            			
			<script language="javascript">
				updateTabCounter("Start");
			</script>
		</dd>
	</div><!-- end .group -->
	
	<div class="group">
	    <dt id="firstPassFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/> 비밀번호 </label>
		</dt>
		<dd id="firstPassFieldInput" class="formFieldInput">
			<input type="password" class="text" name="pw" id="firstName" maxlength="255" value="" placeholder="Password"/>			
			<span id="alertfirstName" class="errorMessages"></span>	            			
			<script language="javascript">
				updateTabCounter("Start");
			</script>
		</dd>
	</div><!-- end .group -->
	
	<div class="group">
		<div class="formDivider"></div>
 	</div><!-- end .group -->
	

			</dl>
		</div>

</div>
		<div id="tabButton0" ></div>
		<div id="submitButton" class="submitButton" >
			<input type="submit" id="buttonSubmitButton" class="btn btn-inverse btn-large" value="로그인" >
	    </div>
	</form>
	</c:otherwise>
</c:choose>
	<div style="clear:both"></div>
</div>


<style>
input[type="text"]{
    background-color: transparent !important;
    /* border: 0px solid #FFFFFF !important; */
    box-shadow: 0 0 0 rgba(0, 0, 0, 0) inset;
}
.dmundra .dijitComboBox .dijitInputField INPUT {
    padding: 0 !important;
    background-color: transparent !important;
    border: 0px solid #FFFFFF !important;
    box-shadow: 0 0 0 rgba(0, 0, 0, 0) inset;
}
.dmundra .dijitInputField INPUT, .dmundra .dijitTextBox{
    padding: 0 0 3px;
}
.dmundra .dijitComboBox .dijitButtonNode, .dmundra .dijitSpinner .dijitButtonNode {
    height: 20px;
    margin-bottom: -5px;
    padding: 3px !important;
}
</style>         
   
</div><!--/span-->

</div><!--/row-->
</div><!-- /container-->
</div><!-- /page-->