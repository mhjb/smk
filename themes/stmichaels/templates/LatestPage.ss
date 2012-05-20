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
<% require themedCSS(latestpage) %>
<% require javascript(sapphire/thirdparty/jquery/jquery.js) %>
<% require javascript(themes/stmichaels/js/jquery.mousewheel.js) %>
<% require javascript(themes/stmichaels/js/jquery.jscrollpane.min.js) %>
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
			<!-- <a href="#" title="Roster" id="snailRosterLink">&nbsp;</a> -->
			<a href="$Top.ThemeDir/images/ssign.png" onmouseover="$.prettyPhoto.open('$Top.ThemeDir/images/ssign.png')" rel="prettyPhoto" id="snailSignLink">&nbsp;</a>
		</div>
		
	</div>	
<div id="footer" class="typography">
  <div class="footertext" id="footerleft"> &copy; $Now.Year St Michael&rsquo;s Anglican Church, Kelburn, Wellington, New Zealand. <br />
  Designed by <a class="nolink" href="http://www.lilyemo.co.nz">Lily Emo</a>. Implemented by <a class="nolink" href="http://bartlettprojects.com">Bartlett Projects</a> <Br />
  <a class="nolink" href="site-map" >Site Map</a>
  </div>
  
  

  <div class="footertext" id="footersegments"></div>
  <div class="footertext" id="footerright" style="text-align:right">    
  <div id="cse-search-form" style="width: 100%;">Loading</div>
  <script src="http://www.google.com/jsapi" type="text/javascript"></script>
  <script type="text/javascript"> 
    google.load('search', '1', {language : 'en', style : google.loader.themes.V2_DEFAULT});
    google.setOnLoadCallback(function() {
      var customSearchOptions = {};  var customSearchControl = new google.search.CustomSearchControl(
        '008170750961698131942:knntxsefvjw', customSearchOptions);
      customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
      var options = new google.search.DrawOptions();
      options.enableSearchboxOnly("http://localhost/stmichaels/search-results");
      customSearchControl.draw('cse-search-form', options);
    }, true);
  </script>


  </div> 
  <div id="cse" style="width:100%;"></div> 
</div>
	
</body>
</html>
