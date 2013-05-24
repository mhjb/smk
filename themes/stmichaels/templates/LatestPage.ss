<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% base_tag %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$Title &ndash; $SiteConfig.Title</title>
<link rel="stylesheet" type="text/css" href="$ThemeDir/css/layout.css">
<link rel="stylesheet" type="text/css" href="$ThemeDir/css/jquery.jscrollpane.css">
<link rel="stylesheet" type="text/css" href="$ThemeDir/css/jquery.jscrollpane.lozenge.css">
<% require themedCSS(typography) %>
<% require themedCSS(latestpage) %>

<% require javascript(themes/stmichaels/js/jquery-1.8.2.min.js) %>
<% require javascript(themes/stmichaels/js/jquery.jscrollpane.min.js) %>
<% require javascript(themes/stmichaels/js/jquery.mousewheel.js) %>
<% require javascript(themes/stmichaels/js/jquery.cycle.lite.js) %>

<% require javascript(themes/stmichaels/js/stmichaels.js) %>

<% require themedCSS(prettyPhoto) %>
<% require javascript(themes/stmichaels/js/jquery.prettyPhoto.js) %>
<% require javascript(themes/stmichaels/js/PPtheme1.js) %>



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
		<div id="box-top">&nbsp;</div>
		<div id="box-bottom">&nbsp;</div>
		<div id="menu">
			<% control Menu(1) %>
			<% if LinkOrSection = section %>
			<a href="$Link"><img src="$Top.ThemeDir/images/menu/{$URLSegment}2.png" alt="$MenuTitle" name="$URLSegment" border="0" class="$URLSegment" id="$URLSegment" title="$Title"/></a>
			<% else %>
			<a href="$Link"><img src="$Top.ThemeDir/images/menu/{$URLSegment}.png" hoversrc="$ThemeDir/images/menu/{$URLSegment}2.png" alt="$MenuTitle" name="$URLSegment" border="0" class="$URLSegment" id="$URLSegment" title="$Title"/></a>
			<% end_if %>
			<% end_control %>
		</div>
		
		<div id="leftContent" class="scrolling">
			$Layout
		</div>
		
		<div id="rightContent" class="typography">
			<ul>
			<% control Menu(2) %>
			<% if LinkOrCurrent = current %>
				<li class="highlight">$MenuTitle</li>
			<% else %>
				<li><a href="$Link">$MenuTitle</a></li>
			<% end_if %>
			<% end_control %>
			</ul>
			<a href="http://www.facebook.com/StMichaelsKelburn" alt="SMK on Facebook"><img src="themes/stmichaels/images/icon_facebook.png" /></a>
		</div>
		
		
		<div id="snailSign">
			<a href="assets/pdfs/roster.pdf?n=1" title="Download the St Mic's roster (password required)" id="snailRosterLink">&nbsp;</a>
			<a href="$Top.ThemeDir/images/ssign-shadow.png" onmouseover="$.prettyPhoto.open('$Top.ThemeDir/images/ssign-shadow.png')" rel="prettyPhoto" id="snailSignLink">&nbsp;</a>
		</div>
		
	</div>	

<% include Footer %>
	
</body>
</html>
