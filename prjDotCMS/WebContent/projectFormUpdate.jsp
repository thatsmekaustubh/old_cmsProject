<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script type="text/javascript">
	function alertMessage(){
		alert("등록 실패");
	}
	function check(t){
		if(t.id.value==""){
			alert("제목을 입력하세요.");
			t.id.focus();
			return false;
		}
		if(t.pw.value==""){
			alert("Password를 입력하세요.");
			t.pw.focus();
			return false;
		}
		if(t.image.value==""){
			alert("Image 입력하세요.");
			t.image.focus();
			return false;
		}
		return true;
	}
</script>
<div class="top-spacer">&nbsp;</div>
<div class="page-wrapper">
<div class="container">
<div class="row">
		                    		                    		                    		
<div class="span8" style="width:90%;">
  
<h1>프로젝트 등록</h1>

<div class="submitContent">
<form action="projectUpdateCtrl" enctype="multipart/form-data" method="post" onsubmit="return check(this)" id="submitContentForm" name="join">
	
   <div id="Start" class="contentTab first">
	<div id="StartProperties">
   	<dl class="formFieldSet">
   	
	<div class="group">
	    <dt id="firstNameFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/>프로젝트 제목</label>
		</dt>
		<dd id="firstNameFieldInput" class="formFieldInput">
			<input type="text" class="text" name="id" id="firstName" maxlength="255" value="${dto.title }" />
			<input type="hidden" value="${dto.seq }" name="seq">			
		</dd>
	</div><!-- end .group -->
	
	<div class="group">
	    <dt id="firstPassFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/> Password : </label>
		</dt>
		<dd id="firstPassFieldInput" class="formFieldInput">
			<input type="password" class="text" name="pw" id="firstName" maxlength="255" value="" />			
			<span id="alertfirstName" class="errorMessages"></span>	            			
			<script language="javascript">
				updateTabCounter("Start");
			</script>
		</dd>
	</div><!-- end .group -->
	
	<div class="group">
	    <dt id="firstNameFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/> 대표이미지 </label>
		</dt>
		<dd id="firstNameFieldInput" class="formFieldInput">
			<input type="file" class="text" name="image" id="firstName" maxlength="255" value="" />			
		</dd>
	</div><!-- end .group -->
	<div class="group">
	    <dt id="firstNameFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel"> 첨부파일 </label>
		</dt>
		<dd id="firstNameFieldInput" class="formFieldInput">
			<input type="file" class="text" name="filename" id="filename" maxlength="255" value="" />			
		</dd>
	</div><!-- end .group -->
	
	<div class="group">
    <dt id="commentsFieldLabel" class="formFieldLabel">
		<label for="commentsFieldLabel"> 프로젝트 설명 </label>
	</dt> 			
	<dd id="commentsFieldInput" class="formFieldInput">	
		<textarea name="comments"  style="min-height: 50px;" id="comments" class="textAreaField">${dto.description }</textarea>
	</dd>
</div><!-- end .group -->

</dl>
</div>

</div>
		<div id="tabButton0" ></div>
		<div id="submitButton" class="submitButton" >
			<input type="submit" id="buttonSubmitButton" class="btn btn-inverse btn-large" value="등록" >
	    </div>
	</form>
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
