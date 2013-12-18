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
dojo.ready(function(){
var theme = 'dmundra';
	if(dojo.body()){
		if(!dojo.hasClass(dojo.body(),theme)){
	    	    dojo.addClass(dojo.body(),theme);
		}
	}
});

	dojo.require("dojo.parser");
	dojo.require("dijit.form.TextBox");
	dojo.require("dijit.form.Textarea");
	dojo.require("dijit.form.Button");
	dojo.require("dijit.form.FilteringSelect");
	dojo.require("dijit.form.CheckBox");
	dojo.require("dijit.form.DateTextBox");
	dojo.require("dijit.form.MultiSelect");
	dojo.require("dijit.form.Slider");
	dojo.require("dijit.Tooltip");
	dojo.require("dijit.Dialog");
	dojo.registerModulePath("dotcms","/html/js/dotcms");
	dojo.require("dotcms.dijit.form.HostFolderFilteringSelect");
	dojo.require("dotcms.dijit.form.FileSelector");
	dojo.require("dotcms.dijit.FileBrowserDialog");
	dojo.require("dojo.dnd.Source");
	var DWRUtil = dwr.util;
</script>

<div class="top-spacer">&nbsp;</div>
<div class="page-wrapper">
<div class="container">
<div class="row">
		                    		                    		                    		
<div class="span8">
  
<h1>회원가입</h1>
   
<div class="submitContent">
	<form action="join.do" enctype="multipart/form-data" method="post" id="submitContentForm" name="submitContentForm">
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
	    	
			<script src="js/tiny_mce.js" type="text/javascript"></script>
		    <script type="text/javascript">
				tinyMCE.init({
		       			mode : "none",
		       			theme : "advanced",
		       			 theme_advanced_blockformats : "p,h1,h2,h3,code",
		       			theme_advanced_toolbar_align : "left",
				        theme_advanced_buttons1 : "bold,italic,underline,undo,redo,bullist,numlist,link,separator,formatselect",
				        theme_advanced_buttons2 : "",
				        theme_advanced_buttons3 : ""
		       		});

		       	function enableWYSIWYG(textAreaId){
		    		try {
		    			tinyMCE.execCommand('mceAddControl', false, textAreaId);
		    		}catch(e){
		    			alert(e.message);
		    		}
		    		enabledWYSIWYG[textAreaId] = true;
		      	}
		    </script>
        	
	<div class="group">
	    <dt id="firstNameFieldLabel" class="formFieldLabel">
			<label for="firstNameFieldLabel">
			<img src="img/required.gif"/> 이름</label>
		</dt>
		<dd id="firstNameFieldInput" class="formFieldInput">
			<input dojoType="dijit.form.TextBox" class="text" name="firstName" id="firstName" maxlength="255" class="textField" value="" />
			<span id="alertfirstName" class="errorMessages"></span>	            			
			<script language="javascript">
				updateTabCounter("Start");
			</script>
		</dd>
	</div><!-- end .group -->

								        
	        	
<div class="group">
				    <dt id="lastNameFieldLabel" class="formFieldLabel">
	    				    				<label for="lastNameFieldLabel">
	    					    				<img src="img/required.gif"/> Last Name</label>
	    				    			</dt>
	    			
					<dd id="lastNameFieldInput" class="formFieldInput">
	            		            	    	            	    	            	    	            	    	            	    	            			

<input dojoType="dijit.form.TextBox" class="text" name="lastName" id="lastName" maxlength="255" class="textField" value="" /><span id="alertlastName" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            		
	            		    			</dd>
	    			</div><!-- end .group -->

								        
	        	
	<div class="group">
		<dt id="phoneFieldLabel" class="formFieldLabel">
			<label for="phoneFieldLabel">Phone</label>
	    </dt>
	    			
		<dd id="phoneFieldInput" class="formFieldInput">
	            		            	    	            	    	            	    	            	    	            	    	            			

<input dojoType="dijit.form.TextBox" class="text" name="phone" id="phone" maxlength="255" class="textField" value="" /><span id="alertphone" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            		
	            		    			</dd>
	    			</div><!-- end .group -->

								        
	        	
								    <div class="group">
				    <dt id="emailFieldLabel" class="formFieldLabel">
	    				    				<label for="emailFieldLabel">
	    					    					<a href="#" id="tip-email"><span class="hintIcon"></span></a>
							<span dojoType="dijit.Tooltip" connectId="tip-email" position="above" style="width:100px;">
								<!-- <span class="contentHint">Please note that we will not share pricing with public (e.g. gmail, yahoo) email accounts.</span> -->
							</span>
							    				<img src="img/required.gif"/> Company Email</label>
	    				    			</dt>
	    			
					<dd id="emailFieldInput" class="formFieldInput">
	            		            	    	            	    	            	    	            	    	            	    	            			

<input dojoType="dijit.form.TextBox" class="text" name="email" id="email" maxlength="255" class="textField" value="" /><span id="alertemail" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            		
	            		    			</dd>
	    			</div><!-- end .group -->

								        
	        	
								    <div class="group">
				    <dt id="jobTitleFieldLabel" class="formFieldLabel">
	    				    				<label for="jobTitleFieldLabel">
	    					    				 Job Title</label>
	    				    			</dt>
	    			
					<dd id="jobTitleFieldInput" class="formFieldInput">
	            		            			            	    	            	                            	            			            			<select dojoType="dijit.form.FilteringSelect" id="jobTitle" name="jobTitle" autoComplete="false" class="selectField">
		<option value="" class="optionSelectField">Select an option</option>
							<option id="jobTitleAnalyst" value="Analyst" class="optionSelectField"  >Analyst </option>
							<option id="jobTitleArchitect" value="Architect" class="optionSelectField"  >Architect </option>
							<option id="jobTitleConsultant" value="Consultant" class="optionSelectField"  >Consultant </option>
							<option id="jobTitleDeveloper" value="Developer" class="optionSelectField"  >Developer </option>
							<option id="jobTitleDirector" value="Director" class="optionSelectField"  >Director </option>
							<option id="jobTitleEducator" value="Educator" class="optionSelectField"  >Educator </option>
							<option id="jobTitleElected Official" value="Elected Official" class="optionSelectField"  >Elected Official </option>
							<option id="jobTitleManager" value="Manager" class="optionSelectField"  >Manager </option>
							<option id="jobTitleProfessional Staff" value="Professional Staff" class="optionSelectField"  >Professional Staff </option>
							<option id="jobTitleExecutive" value="Executive" class="optionSelectField"  >Executive </option>
							<option id="jobTitleSupport Staff" value="Support Staff" class="optionSelectField"  >Support Staff </option>
							<option id="jobTitleOther" value="Other" class="optionSelectField"  >Other </option>
	</select><span id="alertjobTitle" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            		
	            		    			</dd>
	    			</div><!-- end .group -->

								        
	        	
									</dl>
					<dl class="formFieldSet" id="yourOrganizationFieldSet">
						<div class="group">
		    				<div class="formDivider">Your Organization</div>
	    				</div><!-- end .group -->

								        
	        	
								    <div class="group">
				    <dt id="companyFieldLabel" class="formFieldLabel">
	    				    				<label for="companyFieldLabel">
	    					    				<img src="img/required.gif"/> Organization Name</label>
	    				    			</dt>
	    			
					<dd id="companyFieldInput" class="formFieldInput">
	            		            	    	            	    	            	    	            	    	            	    	            			

<input dojoType="dijit.form.TextBox" class="text" name="company" id="company" maxlength="255" class="textField" value="" /><span id="alertcompany" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            		
	            		    			</dd>
	    			</div><!-- end .group -->

								        
	        	
								    <div class="group">
				    <dt id="countryFieldLabel" class="formFieldLabel">
	    				    				<label for="countryFieldLabel">
	    					    				<img src="img/required.gif"/> Country</label>
	    				    			</dt>
	    			
					<dd id="countryFieldInput" class="formFieldInput">
<select dojoType="dijit.form.FilteringSelect" id="country" name="country" autoComplete="false" class="selectField">
		<option value="" class="optionSelectField">Select an option</option>
							<option id="countryAF" value="AF" class="optionSelectField"  >Afghanistan </option>
							<option id="countryAL" value="AL" class="optionSelectField"  >Albania </option>
							<option id="countryDZ" value="DZ" class="optionSelectField"  >Algeria </option>
							<option id="countryAS" value="AS" class="optionSelectField"  >American Samoa </option>
							<option id="countryAD" value="AD" class="optionSelectField"  >Andorra </option>
							<option id="countryAO" value="AO" class="optionSelectField"  >Angola </option>
							<option id="countryAI" value="AI" class="optionSelectField"  >Anguilla </option>
							<option id="countryAQ" value="AQ" class="optionSelectField"  >Antarctica </option>
							<option id="countryAG" value="AG" class="optionSelectField"  >Antigua And Barbuda </option>
							<option id="countryAR" value="AR" class="optionSelectField"  >Argentina </option>
							<option id="countryAM" value="AM" class="optionSelectField"  >Armenia </option>
							<option id="countryAW" value="AW" class="optionSelectField"  >Aruba </option>
							<option id="countryAU" value="AU" class="optionSelectField"  >Australia </option>
							<option id="countryAT" value="AT" class="optionSelectField"  >Austria </option>
							<option id="countryAZ" value="AZ" class="optionSelectField"  >Azerbaijan </option>
							<option id="countryBS" value="BS" class="optionSelectField"  >Bahamas </option>
							<option id="countryBH" value="BH" class="optionSelectField"  >Bahrain </option>
							<option id="countryBD" value="BD" class="optionSelectField"  >Bangladesh </option>
							<option id="countryBB" value="BB" class="optionSelectField"  >Barbados </option>
							<option id="countryBY" value="BY" class="optionSelectField"  >Belarus </option>
							<option id="countryBE" value="BE" class="optionSelectField"  >Belgium </option>
							<option id="countryBZ" value="BZ" class="optionSelectField"  >Belize </option>
							<option id="countryBJ" value="BJ" class="optionSelectField"  >Benin </option>
							<option id="countryBM" value="BM" class="optionSelectField"  >Bermuda </option>
							<option id="countryBT" value="BT" class="optionSelectField"  >Bhutan </option>
							<option id="countryBO" value="BO" class="optionSelectField"  >Bolivia </option>
							<option id="countryBA" value="BA" class="optionSelectField"  >Bosnia And Herzegovina </option>
							<option id="countryBW" value="BW" class="optionSelectField"  >Botswana </option>
							<option id="countryBV" value="BV" class="optionSelectField"  >Bouvet Island </option>
							<option id="countryBR" value="BR" class="optionSelectField"  >Brazil </option>
							<option id="countryIO" value="IO" class="optionSelectField"  >British Indian Ocean Territory </option>
							<option id="countryBN" value="BN" class="optionSelectField"  >Brunei Darussalam </option>
							<option id="countryBG" value="BG" class="optionSelectField"  >Bulgaria </option>
							<option id="countryBF" value="BF" class="optionSelectField"  >Burkina Faso </option>
							<option id="countryBI" value="BI" class="optionSelectField"  >Burundi </option>
							<option id="countryKH" value="KH" class="optionSelectField"  >Cambodia </option>
							<option id="countryCM" value="CM" class="optionSelectField"  >Cameroon </option>
							<option id="countryCA" value="CA" class="optionSelectField"  >Canada </option>
							<option id="countryCV" value="CV" class="optionSelectField"  >Cape Verde </option>
							<option id="countryKY" value="KY" class="optionSelectField"  >Cayman Islands </option>
							<option id="countryCF" value="CF" class="optionSelectField"  >Central African Republic </option>
							<option id="countryTD" value="TD" class="optionSelectField"  >Chad </option>
							<option id="countryCL" value="CL" class="optionSelectField"  >Chile </option>
							<option id="countryCN" value="CN" class="optionSelectField"  >China </option>
							<option id="countryCX" value="CX" class="optionSelectField"  >Christmas Island </option>
							<option id="countryCC" value="CC" class="optionSelectField"  >Cocos (keeling) Islands </option>
							<option id="countryCO" value="CO" class="optionSelectField"  >Colombia </option>
							<option id="countryKM" value="KM" class="optionSelectField"  >Comoros </option>
							<option id="countryCG" value="CG" class="optionSelectField"  >Congo </option>
							<option id="countryCD" value="CD" class="optionSelectField"  >Congo, The Democratic Republic Of The </option>
							<option id="countryCK" value="CK" class="optionSelectField"  >Cook Islands </option>
							<option id="countryCR" value="CR" class="optionSelectField"  >Costa Rica </option>
							<option id="countryCI" value="CI" class="optionSelectField"  >Cote D'ivoire </option>
							<option id="countryHR" value="HR" class="optionSelectField"  >Croatia </option>
							<option id="countryCU" value="CU" class="optionSelectField"  >Cuba </option>
							<option id="countryCY" value="CY" class="optionSelectField"  >Cyprus </option>
							<option id="countryCZ" value="CZ" class="optionSelectField"  >Czech Republic </option>
							<option id="countryDK" value="DK" class="optionSelectField"  >Denmark </option>
							<option id="countryDJ" value="DJ" class="optionSelectField"  >Djibouti </option>
							<option id="countryDM" value="DM" class="optionSelectField"  >Dominica </option>
							<option id="countryDO" value="DO" class="optionSelectField"  >Dominican Republic </option>
							<option id="countryTP" value="TP" class="optionSelectField"  >East Timor </option>
							<option id="countryEC" value="EC" class="optionSelectField"  >Ecuador </option>
							<option id="countryEG" value="EG" class="optionSelectField"  >Egypt </option>
							<option id="countrySV" value="SV" class="optionSelectField"  >El Salvador </option>
							<option id="countryGQ" value="GQ" class="optionSelectField"  >Equatorial Guinea </option>
							<option id="countryER" value="ER" class="optionSelectField"  >Eritrea </option>
							<option id="countryEE" value="EE" class="optionSelectField"  >Estonia </option>
							<option id="countryET" value="ET" class="optionSelectField"  >Ethiopia </option>
							<option id="countryFK" value="FK" class="optionSelectField"  >Falkland Islands (malvinas) </option>
							<option id="countryFO" value="FO" class="optionSelectField"  >Faroe Islands </option>
							<option id="countryFJ" value="FJ" class="optionSelectField"  >Fiji </option>
							<option id="countryFI" value="FI" class="optionSelectField"  >Finland </option>
							<option id="countryFR" value="FR" class="optionSelectField"  >France </option>
							<option id="countryGF" value="GF" class="optionSelectField"  >French Guiana </option>
							<option id="countryPF" value="PF" class="optionSelectField"  >French Polynesia </option>
							<option id="countryTF" value="TF" class="optionSelectField"  >French Southern Territories </option>
							<option id="countryGA" value="GA" class="optionSelectField"  >Gabon </option>
							<option id="countryGM" value="GM" class="optionSelectField"  >Gambia </option>
							<option id="countryGE" value="GE" class="optionSelectField"  >Georgia </option>
							<option id="countryDE" value="DE" class="optionSelectField"  >Germany </option>
							<option id="countryGH" value="GH" class="optionSelectField"  >Ghana </option>
							<option id="countryGI" value="GI" class="optionSelectField"  >Gibraltar </option>
							<option id="countryGR" value="GR" class="optionSelectField"  >Greece </option>
							<option id="countryGL" value="GL" class="optionSelectField"  >Greenland </option>
							<option id="countryGD" value="GD" class="optionSelectField"  >Grenada </option>
							<option id="countryGP" value="GP" class="optionSelectField"  >Guadeloupe </option>
							<option id="countryGU" value="GU" class="optionSelectField"  >Guam </option>
							<option id="countryGT" value="GT" class="optionSelectField"  >Guatemala </option>
							<option id="countryGN" value="GN" class="optionSelectField"  >Guinea </option>
							<option id="countryGW" value="GW" class="optionSelectField"  >Guinea-bissau </option>
							<option id="countryGY" value="GY" class="optionSelectField"  >Guyana </option>
							<option id="countryHT" value="HT" class="optionSelectField"  >Haiti </option>
							<option id="countryHM" value="HM" class="optionSelectField"  >Heard Island And Mcdonald Islands </option>
							<option id="countryVA" value="VA" class="optionSelectField"  >Holy See (vatican City State) </option>
							<option id="countryHN" value="HN" class="optionSelectField"  >Honduras </option>
							<option id="countryHK" value="HK" class="optionSelectField"  >Hong Kong </option>
							<option id="countryHU" value="HU" class="optionSelectField"  >Hungary </option>
							<option id="countryIS" value="IS" class="optionSelectField"  >Iceland </option>
							<option id="countryIN" value="IN" class="optionSelectField"  >India </option>
							<option id="countryID" value="ID" class="optionSelectField"  >Indonesia </option>
							<option id="countryIR" value="IR" class="optionSelectField"  >Iran, Islamic Republic Of </option>
							<option id="countryIQ" value="IQ" class="optionSelectField"  >Iraq </option>
							<option id="countryIE" value="IE" class="optionSelectField"  >Ireland </option>
							<option id="countryIL" value="IL" class="optionSelectField"  >Israel </option>
							<option id="countryIT" value="IT" class="optionSelectField"  >Italy </option>
							<option id="countryJM" value="JM" class="optionSelectField"  >Jamaica </option>
							<option id="countryJP" value="JP" class="optionSelectField"  >Japan </option>
							<option id="countryJO" value="JO" class="optionSelectField"  >Jordan </option>
							<option id="countryKZ" value="KZ" class="optionSelectField"  >Kazakstan </option>
							<option id="countryKE" value="KE" class="optionSelectField"  >Kenya </option>
							<option id="countryKI" value="KI" class="optionSelectField"  >Kiribati </option>
							<option id="countryKP" value="KP" class="optionSelectField"  >Korea, Democratic People's Republic Of </option>
							<option id="countryKR" value="KR" class="optionSelectField"  >Korea, Republic Of </option>
							<option id="countryKV" value="KV" class="optionSelectField"  >Kosovo </option>
							<option id="countryKW" value="KW" class="optionSelectField"  >Kuwait </option>
							<option id="countryKG" value="KG" class="optionSelectField"  >Kyrgyzstan </option>
							<option id="countryLA" value="LA" class="optionSelectField"  >Lao People's Democratic Republic </option>
							<option id="countryLV" value="LV" class="optionSelectField"  >Latvia </option>
							<option id="countryLB" value="LB" class="optionSelectField"  >Lebanon </option>
							<option id="countryLS" value="LS" class="optionSelectField"  >Lesotho </option>
							<option id="countryLR" value="LR" class="optionSelectField"  >Liberia </option>
							<option id="countryLY" value="LY" class="optionSelectField"  >Libyan Arab Jamahiriya </option>
							<option id="countryLI" value="LI" class="optionSelectField"  >Liechtenstein </option>
							<option id="countryLT" value="LT" class="optionSelectField"  >Lithuania </option>
							<option id="countryLU" value="LU" class="optionSelectField"  >Luxembourg </option>
							<option id="countryMO" value="MO" class="optionSelectField"  >Macau </option>
							<option id="countryMK" value="MK" class="optionSelectField"  >Macedonia, The Former Yugoslav Republic Of </option>
							<option id="countryMG" value="MG" class="optionSelectField"  >Madagascar </option>
							<option id="countryMW" value="MW" class="optionSelectField"  >Malawi </option>
							<option id="countryMY" value="MY" class="optionSelectField"  >Malaysia </option>
							<option id="countryMV" value="MV" class="optionSelectField"  >Maldives </option>
							<option id="countryML" value="ML" class="optionSelectField"  >Mali </option>
							<option id="countryMT" value="MT" class="optionSelectField"  >Malta </option>
							<option id="countryMH" value="MH" class="optionSelectField"  >Marshall Islands </option>
							<option id="countryMQ" value="MQ" class="optionSelectField"  >Martinique </option>
							<option id="countryMR" value="MR" class="optionSelectField"  >Mauritania </option>
							<option id="countryMU" value="MU" class="optionSelectField"  >Mauritius </option>
							<option id="countryYT" value="YT" class="optionSelectField"  >Mayotte </option>
							<option id="countryMX" value="MX" class="optionSelectField"  >Mexico </option>
							<option id="countryFM" value="FM" class="optionSelectField"  >Micronesia, Federated States Of </option>
							<option id="countryMD" value="MD" class="optionSelectField"  >Moldova, Republic Of </option>
							<option id="countryMC" value="MC" class="optionSelectField"  >Monaco </option>
							<option id="countryMN" value="MN" class="optionSelectField"  >Mongolia </option>
							<option id="countryMS" value="MS" class="optionSelectField"  >Montserrat </option>
							<option id="countryME" value="ME" class="optionSelectField"  >Montenegro </option>
							<option id="countryMA" value="MA" class="optionSelectField"  >Morocco </option>
							<option id="countryMZ" value="MZ" class="optionSelectField"  >Mozambique </option>
							<option id="countryMM" value="MM" class="optionSelectField"  >Myanmar </option>
							<option id="countryNA" value="NA" class="optionSelectField"  >Namibia </option>
							<option id="countryNR" value="NR" class="optionSelectField"  >Nauru </option>
							<option id="countryNP" value="NP" class="optionSelectField"  >Nepal </option>
							<option id="countryNL" value="NL" class="optionSelectField"  >Netherlands </option>
							<option id="countryAN" value="AN" class="optionSelectField"  >Netherlands Antilles </option>
							<option id="countryNC" value="NC" class="optionSelectField"  >New Caledonia </option>
							<option id="countryNZ" value="NZ" class="optionSelectField"  >New Zealand </option>
							<option id="countryNI" value="NI" class="optionSelectField"  >Nicaragua </option>
							<option id="countryNE" value="NE" class="optionSelectField"  >Niger </option>
							<option id="countryNG" value="NG" class="optionSelectField"  >Nigeria </option>
							<option id="countryNU" value="NU" class="optionSelectField"  >Niue </option>
							<option id="countryNF" value="NF" class="optionSelectField"  >Norfolk Island </option>
							<option id="countryMP" value="MP" class="optionSelectField"  >Northern Mariana Islands </option>
							<option id="countryNO" value="NO" class="optionSelectField"  >Norway </option>
							<option id="countryOM" value="OM" class="optionSelectField"  >Oman </option>
							<option id="countryPK" value="PK" class="optionSelectField"  >Pakistan </option>
							<option id="countryPW" value="PW" class="optionSelectField"  >Palau </option>
							<option id="countryPS" value="PS" class="optionSelectField"  >Palestinian Territory, Occupied </option>
							<option id="countryPA" value="PA" class="optionSelectField"  >Panama </option>
							<option id="countryPG" value="PG" class="optionSelectField"  >Papua New Guinea </option>
							<option id="countryPY" value="PY" class="optionSelectField"  >Paraguay </option>
							<option id="countryPE" value="PE" class="optionSelectField"  >Peru </option>
							<option id="countryPH" value="PH" class="optionSelectField"  >Philippines </option>
							<option id="countryPN" value="PN" class="optionSelectField"  >Pitcairn </option>
							<option id="countryPL" value="PL" class="optionSelectField"  >Poland </option>
							<option id="countryPT" value="PT" class="optionSelectField"  >Portugal </option>
							<option id="countryPR" value="PR" class="optionSelectField"  >Puerto Rico </option>
							<option id="countryQA" value="QA" class="optionSelectField"  >Qatar </option>
							<option id="countryRE" value="RE" class="optionSelectField"  >Reunion </option>
							<option id="countryRO" value="RO" class="optionSelectField"  >Romania </option>
							<option id="countryRU" value="RU" class="optionSelectField"  >Russian Federation </option>
							<option id="countryRW" value="RW" class="optionSelectField"  >Rwanda </option>
							<option id="countrySH" value="SH" class="optionSelectField"  >Saint Helena </option>
							<option id="countryKN" value="KN" class="optionSelectField"  >Saint Kitts And Nevis </option>
							<option id="countryLC" value="LC" class="optionSelectField"  >Saint Lucia </option>
							<option id="countryPM" value="PM" class="optionSelectField"  >Saint Pierre And Miquelon </option>
							<option id="countryVC" value="VC" class="optionSelectField"  >Saint Vincent And The Grenadines </option>
							<option id="countryWS" value="WS" class="optionSelectField"  >Samoa </option>
							<option id="countrySM" value="SM" class="optionSelectField"  >San Marino </option>
							<option id="countryST" value="ST" class="optionSelectField"  >Sao Tome And Principe </option>
							<option id="countrySA" value="SA" class="optionSelectField"  >Saudi Arabia </option>
							<option id="countrySN" value="SN" class="optionSelectField"  >Senegal </option>
							<option id="countryRS" value="RS" class="optionSelectField"  >Serbia </option>
							<option id="countrySC" value="SC" class="optionSelectField"  >Seychelles </option>
							<option id="countrySL" value="SL" class="optionSelectField"  >Sierra Leone </option>
							<option id="countrySG" value="SG" class="optionSelectField"  >Singapore </option>
							<option id="countrySK" value="SK" class="optionSelectField"  >Slovakia </option>
							<option id="countrySI" value="SI" class="optionSelectField"  >Slovenia </option>
							<option id="countrySB" value="SB" class="optionSelectField"  >Solomon Islands </option>
							<option id="countrySO" value="SO" class="optionSelectField"  >Somalia </option>
							<option id="countryZA" value="ZA" class="optionSelectField"  >South Africa </option>
							<option id="countryGS" value="GS" class="optionSelectField"  >South Georgia And The South Sandwich Islands </option>
							<option id="countryES" value="ES" class="optionSelectField"  >Spain </option>
							<option id="countryLK" value="LK" class="optionSelectField"  >Sri Lanka </option>
							<option id="countrySD" value="SD" class="optionSelectField"  >Sudan </option>
							<option id="countrySR" value="SR" class="optionSelectField"  >Suriname </option>
							<option id="countrySJ" value="SJ" class="optionSelectField"  >Svalbard And Jan Mayen </option>
							<option id="countrySZ" value="SZ" class="optionSelectField"  >Swaziland </option>
							<option id="countrySE" value="SE" class="optionSelectField"  >Sweden </option>
							<option id="countryCH" value="CH" class="optionSelectField"  >Switzerland </option>
							<option id="countrySY" value="SY" class="optionSelectField"  >Syrian Arab Republic </option>
							<option id="countryTW" value="TW" class="optionSelectField"  >Taiwan, Province Of China </option>
							<option id="countryTJ" value="TJ" class="optionSelectField"  >Tajikistan </option>
							<option id="countryTZ" value="TZ" class="optionSelectField"  >Tanzania, United Republic Of </option>
							<option id="countryTH" value="TH" class="optionSelectField"  >Thailand </option>
							<option id="countryTG" value="TG" class="optionSelectField"  >Togo </option>
							<option id="countryTK" value="TK" class="optionSelectField"  >Tokelau </option>
							<option id="countryTO" value="TO" class="optionSelectField"  >Tonga </option>
							<option id="countryTT" value="TT" class="optionSelectField"  >Trinidad And Tobago </option>
							<option id="countryTN" value="TN" class="optionSelectField"  >Tunisia </option>
							<option id="countryTR" value="TR" class="optionSelectField"  >Turkey </option>
							<option id="countryTM" value="TM" class="optionSelectField"  >Turkmenistan </option>
							<option id="countryTC" value="TC" class="optionSelectField"  >Turks And Caicos Islands </option>
							<option id="countryTV" value="TV" class="optionSelectField"  >Tuvalu </option>
							<option id="countryUG" value="UG" class="optionSelectField"  >Uganda </option>
							<option id="countryUA" value="UA" class="optionSelectField"  >Ukraine </option>
							<option id="countryAE" value="AE" class="optionSelectField"  >United Arab Emirates </option>
							<option id="countryGB" value="GB" class="optionSelectField"  >United Kingdom </option>
							<option id="countryUS" value="US" class="optionSelectField"  >United States </option>
							<option id="countryUM" value="UM" class="optionSelectField"  >United States Minor Outlying Islands </option>
							<option id="countryUY" value="UY" class="optionSelectField"  >Uruguay </option>
							<option id="countryUZ" value="UZ" class="optionSelectField"  >Uzbekistan </option>
							<option id="countryVU" value="VU" class="optionSelectField"  >Vanuatu </option>
							<option id="countryVE" value="VE" class="optionSelectField"  >Venezuela </option>
							<option id="countryVN" value="VN" class="optionSelectField"  >Viet Nam </option>
							<option id="countryVG" value="VG" class="optionSelectField"  >Virgin Islands, British </option>
							<option id="countryVI" value="VI" class="optionSelectField"  >Virgin Islands, U.s. </option>
							<option id="countryWF" value="WF" class="optionSelectField"  >Wallis And Futuna </option>
							<option id="countryEH" value="EH" class="optionSelectField"  >Western Sahara </option>
							<option id="countryYE" value="YE" class="optionSelectField"  >Yemen </option>
							<option id="countryZM" value="ZM" class="optionSelectField"  >Zambia </option>
							<option id="countryZW" value="ZW" class="optionSelectField"  >Zimbabwe </option>
	</select><span id="alertcountry" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            		
	            		    			</dd>
	    			</div><!-- end .group -->

								        
	        	
								    <div class="group">
				    <dt id="companySizeFieldLabel" class="formFieldLabel">
	    				    				<label for="companySizeFieldLabel">
	    					    				 Number of employees</label>
	    				    			</dt>
	    			
					<dd id="companySizeFieldInput" class="formFieldInput">
	            		            			            	    	            	                            	            			            			<select dojoType="dijit.form.FilteringSelect" id="companySize" name="companySize" autoComplete="false" class="selectField">
		<option value="" class="optionSelectField">Select an option</option>
							<option id="companySize1-9" value="1-9" class="optionSelectField"  >1-9 </option>
							<option id="companySize10-99" value="10-99" class="optionSelectField"  >10-99 </option>
							<option id="companySize100-499" value="100-499" class="optionSelectField"  >100-499 </option>
							<option id="companySize500-999" value="500-999" class="optionSelectField"  >500-999 </option>
							<option id="companySize1000-4999" value="1000-4999" class="optionSelectField"  >1000-4999 </option>
							<option id="companySize5000+" value="5000+" class="optionSelectField"  >5000+ </option>
	</select><span id="alertcompanySize" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            		
	            		    			</dd>
	    			</div><!-- end .group -->

								        
	        	
								    <div class="group">
				    <dt id="industryFieldLabel" class="formFieldLabel">
	    				    				<label for="industryFieldLabel">
	    					    				 Industry</label>
	    				    			</dt>
	    			
					<dd id="industryFieldInput" class="formFieldInput">
<select ojoType="dijit.form.FilteringSelect" id="industry" name="industry" autoComplete="false" class="selectField">
		<option value="" class="optionSelectField">Select an option</option>
							<option id="industryAdvertising" value="Advertising" class="optionSelectField"  >Advertising </option>
							<option id="industryConstruction" value="Construction" class="optionSelectField"  >Construction </option>
							<option id="industryDistribution/Wholesale" value="Distribution/Wholesale" class="optionSelectField"  >Distribution/Wholesale </option>
							<option id="industryEducation: Higher ed" value="Education: Higher ed" class="optionSelectField"  >Education: Higher ed </option>
							<option id="industryEducation: K–12" value="Education: K–12" class="optionSelectField"  >Education: K–12 </option>
							<option id="industryEngineering/Management services" value="Engineering/Management services" class="optionSelectField"  >Engineering/Management services </option>
							<option id="industryFinancial Services" value="Financial Services" class="optionSelectField"  >Financial Services </option>
							<option id="industryGovernment: Federal" value="Government: Federal" class="optionSelectField"  >Government: Federal </option>
							<option id="industryGovernment: State/Local" value="Government: State/Local" class="optionSelectField"  >Government: State/Local </option>
							<option id="industryHealthcare" value="Healthcare" class="optionSelectField"  >Healthcare </option>
							<option id="industryHospitality/Food services" value="Hospitality/Food services" class="optionSelectField"  >Hospitality/Food services </option>
							<option id="industryInsurance" value="Insurance" class="optionSelectField"  >Insurance </option>
							<option id="industryLegal" value="Legal" class="optionSelectField"  >Legal </option>
							<option id="industryManufacturing" value="Manufacturing" class="optionSelectField"  >Manufacturing </option>
							<option id="industryMedia/Entertainment" value="Media/Entertainment" class="optionSelectField"  >Media/Entertainment </option>
							<option id="industryNon-Profit/Charity" value="Non-Profit/Charity" class="optionSelectField"  >Non-Profit/Charity </option>
							<option id="industryOnline Commerce" value="Online Commerce" class="optionSelectField"  >Online Commerce </option>
							<option id="industryProfessional Services (Agency/Business)" value="Professional Services (Agency/Business)" class="optionSelectField"  >Professional Services (Agency/Business) </option>
							<option id="industryProfessional Services (Technical, Web, IT)" value="Professional Services (Technical, Web, IT)" class="optionSelectField"  >Professional Services (Technical, Web, IT) </option>
							<option id="industryReal Estate" value="Real Estate" class="optionSelectField"  >Real Estate </option>
							<option id="industryRetail" value="Retail" class="optionSelectField"  >Retail </option>
							<option id="industryTechnology/High Tech" value="Technology/High Tech" class="optionSelectField"  >Technology/High Tech </option>
							<option id="industryTelecommunications" value="Telecommunications" class="optionSelectField"  >Telecommunications </option>
							<option id="industryTransportation" value="Transportation" class="optionSelectField"  >Transportation </option>
							<option id="industryOther" value="Other" class="optionSelectField"  >Other </option>
	</select><span id="alertindustry" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            		
	            		    			</dd>
	    			</div><!-- end .group -->

								        
	        	
									</dl>
					<dl class="formFieldSet" id="questionsAndCommentsFieldSet">
						<div class="group">
		    				<div class="formDivider">Questions and comments</div>
	    				</div><!-- end .group -->

								        
	        	
								    <div class="group">
				    <dt id="regardingFieldLabel" class="formFieldLabel">
	    				    				<label for="regardingFieldLabel">
	    					    				<img src="img/required.gif"/> Please have someone</label>
	    				    			</dt>
	    			
					<dd id="regardingFieldInput" class="formFieldInput">
	            		            			            	    	            	                            	            			            			<select dojoType="dijit.form.FilteringSelect" id="regarding" name="regarding" autoComplete="false" class="selectField">
		<option value="" class="optionSelectField">Select an option</option>
							<option id="regardingcontact me" value="contact me" class="optionSelectField" selected="selected" >Contact Me </option>
							<option id="regardingpricing request" value="pricing request" class="optionSelectField"  >Send me pricing </option>
							<option id="regardingdemo request" value="demo request" class="optionSelectField"  >Schedule a live demo </option>
	</select><span id="alertregarding" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            		
	            		    			</dd>
	    			</div><!-- end .group -->

								        
	        	
								    <div class="group">
				    <dt id="commentsFieldLabel" class="formFieldLabel">
	    				    				<label for="commentsFieldLabel">
	    					    				 Comments</label>
	    				    			</dt>
	    			
					<dd id="commentsFieldInput" class="formFieldInput">
	            		            			            	    	            	    	            	    	            			            			

<textarea dojoType="dijit.form.Textarea" name="comments"  style="min-height: 50px;" id="comments" class="textAreaField"></textarea><span id="alertcomments" class="errorMessages"></span>	            			<script language="javascript">
					        	updateTabCounter("Start");
					        </script>
	            			            		
	            		    			</dd>
	    			</div><!-- end .group -->

					</dl>
				</div>

		</div>


		<div id="tabButton0" ></div>
		<div id="submitButton" class="submitButton" >
<button dojoType="dijit.form.Button" id="buttonSubmitButton" type="button" onclick="alert('this');submitContent('dotCMS Pricing Request');">회원가입</button>
	    </div>
	</form>
	<div style="clear:both"></div>
</div>

<script language="javascript">

	function checkTabFields(tab){


	if("dotCMS Pricing Request"==tab) {

											customErrorMessages["firstName"]="";
				    					    		requiredLength = (document.getElementById("firstName").getAttribute("requiredLength")!= undefined) ? document.getElementById("firstName").getAttribute("requiredLength") : 1;
			            	if(!lengthValid(document.getElementById("firstName"), requiredLength, "First Name")){
			                	return false;
			            	}
			         						
					
											customErrorMessages["lastName"]="";
				    					    		requiredLength = (document.getElementById("lastName").getAttribute("requiredLength")!= undefined) ? document.getElementById("lastName").getAttribute("requiredLength") : 1;
			            	if(!lengthValid(document.getElementById("lastName"), requiredLength, "Last Name")){
			                	return false;
			            	}
			         				
														
											customErrorMessages["email"]="";
				    					    		requiredLength = (document.getElementById("email").getAttribute("requiredLength")!= undefined) ? document.getElementById("email").getAttribute("requiredLength") : 1;
			            	if(!lengthValid(document.getElementById("email"), requiredLength, "Company Email")){
			                	return false;
			            	}
																customErrorMessages["email"]="";
					

										if("^([a-zA-Z0-9]+[a-zA-Z0-9._%+-]*@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4})$" != ""){
									       		if(!validateRegularExpresion(document.getElementById("email"), "^([a-zA-Z0-9]+[a-zA-Z0-9._%+-]*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,4})$", "Company Email")){
							return false;
						}

											}
														
											customErrorMessages["company"]="";
				    					    		requiredLength = (document.getElementById("company").getAttribute("requiredLength")!= undefined) ? document.getElementById("company").getAttribute("requiredLength") : 1;
			            	if(!lengthValid(document.getElementById("company"), requiredLength, "Organization Name")){
			                	return false;
			            	}
																					customErrorMessages["country"]="";
						if(!selectValid(dijit.byId("country"), "Country")){
			        		return false;
			        	}
					
																					customErrorMessages["regarding"]="";
						if(!selectValid(dijit.byId("regarding"), "Please have someone")){
			        		return false;
			        	}
				    	
    	    }


    return true;
}

var captcha_audio_play;

	function playAudioCaptcha(){
		captcha_audio_play = document.getElementById('captcha-audio-play');
		captcha_audio_play.setAttribute("class","captcha-audio-playing");
		var rand=Math.floor(Math.random()*999999999);
		if(dojo.isIE){
			document.getElementById('captcha-audio').innerHTML = '<embed hidden="false" src="/audioCaptcha.wav?r=' + rand +'" id="captcha-sound" controller="false" width="0" height="0" autoplay="true" autostart="true" type="audio/wav" />';
		}else{
			document.getElementById('captcha-audio').innerHTML = '<audio hidden="false" src="/audioCaptcha.wav?r=' + rand +'" id="captcha-sound" controller="false" width="0" height="0" autoplay="true" autostart="true" type="audio/wav" />';
		}

		setTimeout(function(){
			captcha_audio_play.setAttribute("class","audio-play");
		},8000);

	}


	function resetCaptcha(){
		var rand=Math.floor(Math.random()*999999999)
		document.getElementById('captcha-image').innerHTML = "<img width='200' height='50'  src='/Captcha.jpg?r=" + rand + "'>";
	}

    function userLang() {
        return "doesn't comply with the specified format";
	}

updateTabList();


</script>


<script>
      dojo.addOnLoad(function() {  
            dijit.byId("buttonSubmitButton").setLabel("Submit");
            dijit.byId("regarding").setValue("pricing request");
            dojo.setStyle(dojo.byId("hostfolderFieldLabel"), "display", "none");
            dojo.setStyle(dojo.byId("hostfolderFieldInput"), "display", "none");
      })
</script>

<style>
input[type="text"]{
    background-color: transparent !important;
    border: 0px solid #FFFFFF !important;
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
<div class="span4">
                    		                           		      	
<div class="well address-wrapper">
  <address>
    <strong>Sales:</strong>
    <div class="tel">+1-305-900-2001 ext: 7003</div>
    <div class="email">sales@dotcms.com</div>
  </address>
  
  <address>
    <strong>Support:</strong>
    <div class="email">support@dotcms.com</div>
    <a class="url" href="http://www.dotcms.org/enterprise/login.dot" target="_blank">Support Portal (Login)</a>
  </address>
  
  <address>
    <strong>Billing:</strong>
    <div class="tel">+1-305-900-2001 ext: 7008</div>
    <div class="email">accounting@dotcms.com</div>
  </address>
  
  <hr>
  
  <h3>Locations</h3>
  <address class="adr">
    <a href="https://mapsengine.google.com/map/viewer?mid=zZV7CxEwKC7U.khr8JU21t39g" target="_blank">Miami, Florida <i class="icon-map-marker"></i></a><br>
    <div class="street-address">3250 Mary Street, Suite 405</div>
    <span class="locality">Miami</span>,
    <abbr class="region" title="Florida">FL</abbr>,
    <span class="postal-code">33133</span>
    <div class="country-name">U.S.A</div>
  </address>

  <address class="adr">
    <a href="https://maps.google.com/maps/ms?msid=202790303089467408895.0004a6ba6eeaf43d2a1d0&msa=0&ll=9.982534,-84.153589&spn=0.009795,0.01561" target="_blank">Heredia, Costa Rica <i class="icon-map-marker"></i></a><br>
    <div class="street-address">
      Eurocenter Diursa<br>
      Primera Etapa, Piso 2, Oficina DotCMS
    </div>
    <span class="locality">Barreal de Heredia</span>,
    <abbr class="region">frente a CENADA</abbr>,
    <div class="country-name">Costa Rica</div>
  </address>


  <address class="adr">
    <a href="https://maps.google.com/maps?q=Marconilaan+16+5621+AA,+Eindhoven,+The+Netherlands&ll=51.45164,5.467061&spn=0.006245,0.017649&oe=utf-8&client=firefox-a&hnear=Marconilaan+16,+5621+AA+Woensel-Zuid,+Eindhoven,+Noord-Brabant,+The+Netherlands&gl=us&t=m&z=17" target="_blank">Eindhoven, Netherlands <i class="icon-map-marker"></i></a><br>
    <div class="street-address">Marconilaan 14 (Obelisk office building)</div>
    <span class="locality">5621 AA</span>,
    <abbr class="region">Eindhoven</abbr>,
    <div class="country-name">The Netherlands</div>
  </address>

    
</div> 
</div><!--/span-->
</div><!--/row-->
</div><!-- /container-->
		</div><!-- /page-->