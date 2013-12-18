<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>      
          <meta charset="utf-8">
<title>
      Dotcms Open Source CMS
   - Open Source Java CMS
</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Touch Icons -->
<link rel="shortcut icon" href="http://dotcms.com/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="http://dotcms.com/images/apple-touch-icon-iphone.png" />
<link rel="apple-touch-icon" sizes="72x72" href="http://dotcms.com/images/apple-touch-icon-ipad.png" />
<link rel="apple-touch-icon" sizes="114x114" href="http://dotcms.com/images/apple-touch-icon-iphone4.png" />

<!-- CSS Files -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/theme.css">

<!-- Web Fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600,700' rel='stylesheet' type='text/css'>

<!-- Feeds -->
<link rel="alternate" type="application/atom+xml" title="dotCMS News - Atom" href="http://feeds.feedburner.com/dotcms/rss-pr?format=atom" />
<link rel="alternate" type="application/rss+xml" title="dotCMS News -  - RSS" href="http://feeds.feedburner.com/dotcms/rss-pr" />

<!--[if lt IE 7]>
  <div style=' clear: both; text-align:center; position: relative;'> <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0" alt="" /></a></div>  
  <script src="js/respond.min.js"></script>
<![endif]-->

<!--[if lt IE 8]>
  <script src="js/respond.min.js"></script>
<![endif]-->

<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
  
  </head>
<body class="preview homepage" id="top" data-spy="scroll" data-target=".subnav" data-offset="80">
<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>

	<c:when test="${param.content == null}">
		<jsp:include page="intro.jsp" />
	</c:when>
	<c:otherwise>
		<jsp:include page="${param.content }" />
	</c:otherwise>
</c:choose>
<a class="backtop" href="#top">Back to the top</a>

<%@ include file="footer.jsp" %>	
	
<span itemscope itemtype="http://schema.org/SoftwareApplication">	
	<meta itemprop="name" content="dotCMS">
	<meta itemprop="description" content="Dotcms is an enterprise open source Java Web Content Management System (CMS) and User Experience Platform (UXP). dotCMS allows you to deliver custom managed content to internet, intranet, mobile and other digital channels.">
	<meta itemprop="image" content="http://dotcms.com/images/dotcms-demo-site2.jpg">
	<meta itemprop="url" content="http://dotcms.com">
	<meta itemprop="publisher" content="dotcms">
	<meta itemprop="author" content="dotcms">
	<meta itemprop="applicationCategory" content="Content Management System">
	<meta itemprop="audience" content="Marketers and Developers">
	<meta itemprop="downloadUrl" content="http://dotcms.com/download/">
	<meta itemprop="operatingSystem" content="Java">
	<meta itemprop="softwareVersion" content="2.5">
	<meta itemprop="datePublished" content="2013-12-08">
	<meta itemprop="image" content="img/dotcms-demo-site2.jpg">
</span>


	<script type="text/javascript">
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-9877660-1']);
	  _gaq.push(['_setDomainName', 'none']);
	  _gaq.push(['_setAllowLinker', true]);
	  _gaq.push(['_trackPageview']);
  
	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	</script>

	<!-- Google Code for Remarketing tag -->
	<!-- Remarketing tags may not be associated with personally identifiable information or placed on pages related to sensitive categories. For instructions on adding this tag and more information on the above requirements, read the setup guide: google.com/ads/remarketingsetup -->
	<script type="text/javascript">
	  /* <![CDATA[ */
		var google_conversion_id = 1036030784;
		var google_conversion_label = "MjoFCPqjrgUQwKaC7gM";
		var google_custom_params = window.google_tag_params;
		var google_remarketing_only = true;
	  /* ]]> */
	</script>
	<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>
	<noscript>
	  <div style="display:inline;">
		<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1036030784/?value=0&amp;label=MjoFCPqjrgUQwKaC7gM&amp;guid=ON&amp;script=0"/>
	  </div>
	</noscript>

	<script type="text/javascript">
	  function trackAdwordsConversion(id, label) {
		var image = new Image(1, 1);
		var base = "http://www.googleadservices.com/pagead/conversion";
		image.src = base + "/" + id + "/?label=" + label + "&script=0";
	  }

	  olark("api.chat.onBeginConversation", function(){
		trackAdwordsConversion("1036030784", "kkPKCJqtzwcQwKaC7gM");
		_gaq.push(['_trackEvent', 'Chat', 'Chat Started', 'Open Source CMS']);
	  });
	</script>


	<!-- Javascript -->
	<script src="js/jquery-1.8.2.min.js"></script>
	<script src="js/jquery.smooth-scroll.min.js"></script>
	<script src="js/jquery.toc.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-tooltip.js"></script>
	<script type="text/javascript" src="js/excanvas.js"></script>
	<script type="text/javascript" src="js/jquery.easy-pie-chart.js"></script>
	<script src="js/script.js"></script>
	<script src="js/long-scroll.js"></script>
  </div>
  
</body>
</html>