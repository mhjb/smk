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

<body class="highlight">
	<div id="box">
	
		
		<!-- these are to aid styling -->
		<div id="box-top">&nbsp;</div><div id=""></div>
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
		
    
          
    <% if URLSegment = inside-st-mic-s %>
      <% require javascript(themes/stmichaels/js/swfkrpano.js) %>
      <div id="photobox">       
        <script>embedpano({target:"photobox",xml:"themes/stmichaels/panorama/index.xml", swf:"themes/stmichaels/panorama/index.swf", width:"900px",height:"300px",allowFullScreen:"true"});</script>
        <noscript><object width="900px" height="300px"><embed src="themes/stmichaels/panorama/index.swf" width="900px" height="300px" allowFullScreen="true"></embed></object></noscript>
      </div>
      
    <% else_if Slideshow %>      
      $Slideshow
      <div id="fb-link">
        <a href="http://www.facebook.com/StMichaelsKelburn" title="Visit St Michael's on Facebook"><img src="$Top.ThemeDir/images/icon_facebook.png" /></a>
      </div>    
    <% end_if %>
    
		$Layout
		
		<% if SectionTitle = Following %>
			<div id="snail"><a href="$Top.ThemeDir/images/snailtalkfollowing.png" onmouseover="$.prettyPhoto.open('$Top.ThemeDir/images/snailtalkfollowing.png')" rel="prettyPhoto"></a></div>
		<% end_if %>
		
		<% if SectionTitle = Connecting %>
			<div id="snail"><a href="$Top.ThemeDir/images/snailtalkconnecting.png" onmouseover="$.prettyPhoto.open('$Top.ThemeDir/images/snailtalkconnecting.png')" rel="prettyPhoto"></a></div>
		<% end_if %>
		
		</div>
  </div>

</div>
<div id="footer" class="typography">
  <div class="footertext" id="footerleft"> &copy; $Now.Year St Michael&rsquo;s Anglican Church, Kelburn, Wellington, New Zealand.<br />
Designed by <a class="nolink" href="http://www.lily.emo.co.nz">Lily Emo</a>.</div>
<!--  <div class="footertext" id="footersegments"><a class="nolink" href="sitemap.html" >Site Map</a></div>
  <div id="footerright">
    <div id="searchwrapper">
      <form action="">
        <input type="text" class="searchbox" name="s" value="" />
        <input type="image" src="$ThemeDir/images/blank.png" class="searchbox_submit" value="" />
      </form>
    </div>
  </div> -->
</div></body>
</html>
