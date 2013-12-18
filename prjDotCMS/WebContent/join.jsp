<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	function check_id(t){
		window.open("idOverlapCheck.jsp","","width=450 height=270 menubar=no status=no");
	}
	function check_F(t) {
		if(t.id.value==""){
			alert("ID를 입력 하세요.");
			t.id.focus();
			return false;
		}
		if(t.pw1.value!=t.pw2.value){
			alert("비밀번호가 일치하지 않습니다.");
			t.pw1.focus();
			return false;
		}
		if(t.pw1.value==""){
			alert("비밀번호를 입력 하세요.");
			t.pw1.focus();
			return false;
		}
		if(t.name.value==""){
			alert("이름을 입력 하세요");
			t.name.focus();
			return false;
		}
		return true;
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

<div class="top-spacer">&nbsp;</div>
<div class="page-wrapper">
<div class="container">
<div class="row">
		                    		                    		                    		
<div class="span8" style="width:90%;">
  
<h1>회원가입</h1>
   
<div class="submitContent">
<form action="join.do" method="post" id="submitContentForm" name="join" onsubmit="return check_F(this)">

	<input type="hidden" name="dispatch" value="submitContent" />
	<input type="hidden" name="options" value="GLAFmW92BoejwPOzhT2GIxiwBZlvdgaHoBEOZUIBwALU/s1rhymw96IOkXBOXCWZYS5/aKUkctFouMZXHj4Iuk7G7QTjRIkuqZ9k6OXwyrw=" />
	<input type="hidden" name="structure" value="7ae307dd-d464-4e32-914e-618ce3373d19" />
	<input type="hidden" id="referrer" name="referrer" value="/company/contact-us/index.dot" />
	<input type="hidden" id="contentInode" name="contentInode" value="" />
	<input type="hidden" id="contentIdentifier" name="contentIdentifier" value="" />
	<input type="hidden" name="userId" value="" />
								
	
   <div id="Start" class="contentTab first">
	<div id="StartProperties">
   	<dl class="formFieldSet">
  <!--  	window.open('idOverlapCheck.jsp','','width=450 height=270 menubar=no status=no'); -->
	<div class="group">
		<div class="formDivider">필수사항</div>
 	</div><!-- end .group -->
	<div class="group">
	    <dt id="firstNameFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/> 아이디</label>
		</dt>
		<dd id="firstNameFieldInput" class="formFieldInput">
			<input type="text" class="text" name="id" id="firstName" maxlength="255" />
			<input type="button" class="text" id="buttonSubmitButton" value="중복확인" onclick="check_id(this)" >		

		</dd>
	</div><!-- end .group -->
	
	<div class="group">
	    <dt id="firstPassFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/> 비밀번호 </label>
		</dt>
		<dd id="firstPassFieldInput" class="formFieldInput">
			<input type="password" class="text" name="pw1" id="firstName" maxlength="255" value="" />			
			<span id="alertfirstName" class="errorMessages"></span>	            			
			<script language="javascript">
				updateTabCounter("Start");
			</script>
		</dd>
	</div><!-- end .group -->
	<div class="group">
	    <dt id="firstPassFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/> 비밀번호  확인</label>
		</dt>
		<dd id="firstPassFieldInput" class="formFieldInput">
			<input type="password" class="text" name="pw2" id="firstName" maxlength="255" value="" />			
			<span id="alertfirstName" class="errorMessages"></span>	            			
			<script language="javascript">
				updateTabCounter("Start");
			</script>
		</dd>
	</div><!-- end .group -->
	
	<div class="group">
	    <dt id="firstNameFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/> 이름 </label>
		</dt>
		<dd id="firstNameFieldInput" class="formFieldInput">
			<input type="text" class="text" name="name" id="firstName" maxlength="255" value="" />			
		</dd>
	</div><!-- end .group -->
</dl>
									
<dl class="formFieldSet" id="OptionalFieldSet">
	<div class="group">
 		<div class="formDivider">선택사항</div>
 	</div><!-- end .group -->
 	<div class="group">
	    <dt id="phoneFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel"> 휴대폰 </label>
		</dt>
		<dd id="phoneFieldInput" class="formFieldInput">
			<input type="text" class="text" name="phone1" id="p1" value="" style="width:50px;" />-
			<input type="text" class="text" name="phone2" id="p2" value="" style="width:70px;" />-
			<input type="text" class="text" name="phone3" id="p3" value="" style="width:70px;" />
		</dd>
	</div><!-- end .group -->

 	<div class="group">
	    <dt id="emailFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel"> 이메일 </label>
		</dt>
		<dd id="emailFieldInput" class="formFieldInput">
			<input type="text" class="text" name="e1" id="p1" value="" style="width:200px;" />
			 <select name="e2" style="width:200px;">
				<option value="naver.com">@naver.com</option>
				<option value="nate.com">@nate.com</option>
				<option value="daum.net">@daum.net</option>
				<option value="gmail.com">@gmail.com</option>
				<option value="">직접입력</option>
			 </select>
		</dd>
	</div><!-- end .group -->
	
	<div class="group">
	    <dt id="addressFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel"> 주소 </label>
		</dt>
		<dd id="addressFieldInput" class="formFieldInput">
			<input type="text" class="text" name="MBPost1" id="MBPost1" value="" style="width:50px;" /> - <input type="text" class="text" name="MBPost2" id="MBPost2" value="" style="width:50px;" /> 
			<input type="button" id="buttonSubmitButton" value="우편번호검색" onclick="window.open('zipcodeListView.jsp','','width=450 height=270 menubar=no status=no');" ><br>
			<input type="text" class="text" name="MBAddress" id="MBAddress" value="" style="width:250px;" /> <input type="text" class="text" name="addJuso" id="p1" value="" style="width:100px;" />	
		</dd>
	</div><!-- end .group -->
 	
<!--  	
	<div class="group">
	    <dt id="jobTitleFieldLabel" class="formFieldLabel">
	    	<label for="jobTitleFieldLabel">
			 직업</label>
		</dt>
		<dd id="jobTitleFieldInput" class="formFieldInput">
			<select id="jobTitle" name="jobTitle" autoComplete="false" class="selectField">
		<option value="" class="optionSelectField">직업 선택하시오</option>
		<option id="jobTitleAnalyst" value="m" class="optionSelectField"  >남자 </option>
		<option id="jobTitleArchitect" value="f" class="optionSelectField"  >여자 </option>	
		</select>	
		</dd>
	</div><!-- end .group -->
<!-- 	
	<div class="group">
    <dt id="commentsFieldLabel" class="formFieldLabel">
		<label for="commentsFieldLabel"> 참고사항</label>
	</dt>
 			
	<dd id="commentsFieldInput" class="formFieldInput">	
<textarea name="comments"  style="min-height: 50px;" id="comments" class="textAreaField"></textarea>
<span id="alertcomments" class="errorMessages"></span>	            			<script language="javascript">updateTabCounter("Start");</script>
	</dd>
</div><!-- end .group -->
			</dl>
		</div>

</div>
		<div id="tabButton0" ></div>
		<div id="submitButton" class="submitButton" >
			<input type="submit" id="buttonSubmitButton" class="btn btn-inverse btn-large" value="회원가입" >
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