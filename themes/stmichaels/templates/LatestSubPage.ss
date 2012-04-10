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


</head>

<body class="highlight" id="LatestSubPage">
	
	<div id="box">
		<!-- these are to aid styling -->
		<div id="box-top">&nbsp;</div><div id=""></div>
		<div id="box-bottom">&nbsp;</div>
		

    
		$Layout
		
		

		
	</div>	
<div id="footer" class="typography">
  <div class="footertext" id="footerleft"> &copy; $Now.Year St Michael&rsquo;s Anglican Church, Kelburn, Wellington, New Zealand.<br />
  Designed by <a class="nolink" href="http://www.lily.emo.co.nz">Lily Emo</a>. Implemented by <a href="http://bartlettprojects.com">Bartlett Projects</a> </div>

  <div class="footertext" id="footersegments"><a class="nolink" href="site-map" >Site Map</a></div>
  <div id="footerright">
    <div id="searchwrapper">      
      <form id="SearchForm_SearchForm" action="/stmichaels/main/SearchForm" method="get" enctype="application/x-www-form-urlencoded">
        <input type="text" class="searchbox" id="SearchForm_SearchForm_Search" name="Search" value="">
        <input type="image" src="$ThemeDir/images/blank.png" class="searchbox_submit"  id="SearchForm_SearchForm_action_results" name="action_results" value="Go" title="Go">      
      </form>
    </div>
  </div> 
</div>

</body>
</html>
