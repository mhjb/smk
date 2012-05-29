<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% base_tag %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$Title &ndash; $SiteConfig.Title</title>
<% require themedCSS(layout) %>
<% require themedCSS(jquery.jscrollpane) %>
<% require themedCSS(jquery.jscrollpane.lozenge) %>
<% require themedCSS(typography) %>
<% require themedCSS(followinglayout) %>
<% require themedCSS(sitemap-default) %>

<% require javascript(sapphire/thirdparty/jquery/jquery.js) %>

<% require javascript(themes/stmichaels/js/jquery.mousewheel.js) %>
<% require javascript(themes/stmichaels/js/jquery.jscrollpane.min.js) %>

<% require javascript(themes/stmichaels/js/jquery.cycle.lite.js) %>

<% require javascript(themes/stmichaels/js/stmichaels.js) %>
<% require javascript(themes/stmichaels/js/sitemap-default.js) %>


<% require themedCSS(prettyPhoto) %>
<% require javascript(themes/stmichaels/js/jquery.prettyPhoto.js) %>
<% require javascript(themes/stmichaels/js/PPtheme2.js) %>


<style type="text/css">
<!--
#bibleapDiv {
	position:absolute;
	left:760px;
	top:533px;
	width:256px;
	height:163px;
	z-index:1;
	margin-left: 150px;
}
#apDiv1 {
	position:absolute;
	left:261px;
	top:576px;
	width:146px;
	height:133px;
	z-index:2;
}
-->
</style>


<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-3724883-19']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>

<body class="highlight">
	
	<div id="box">
		<!-- these are to aid styling -->
		<div id="box-top">&nbsp;</div><div id=""></div>
		<div id="box-bottom">&nbsp;</div>
		<div id="menu">
			
		</div>


		$Layout
		
		</div>
  </div>

</div>

<% include Footer %>

</body>
</html>
