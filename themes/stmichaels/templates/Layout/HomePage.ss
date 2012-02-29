<% require themedCSS(home) %>
<% require themedCSS(slimbox2) %>
<% require javascript(sapphire/thirdparty/jquery/jquery.js) %>
<% require javascript(themes/stmichaels/js/home.js) %>
<% require javascript(themes/stmichaels/js/slimbox2.js) %>
<script> lbos = {
	overlayOpacity: 0.3,
	overlayFadeDuration: 200,
	resizeDuration: 1,
	imageFadeDuration: 300,
	captionAnimationDuration: 1
}; </script>
  
	<div id="values">
		<% control Words %><span title="$Blurb">$Word</span><% end_control %>
	</div>
	<div id="values-blurb"></div>

	<div id="titlecontent" class="typography">
		$Content
		$Form
	</div>

	<div class="kelburnvillage" id="kelburnvillage"><img src="$ThemeDir/images/kelburnvillage.jpg" alt="kelburn Village" width="999" height="124" border="0" usemap="#Signs" />
		<map name="Signs" id="Signs">
			<area shape="rect" coords="96,82,107,91" alt="Sign1" id="clickable_region_1" onmouseover="jQuery.slimbox('$ThemeDir/images/ChurchEastEnd.jpg','',lbos)" />
			<area shape="rect" coords="383,6,394,14" alt="flag" onmouseover="jQuery.slimbox('$ThemeDir/images/flag.png','',lbos)" />
			<area shape="rect" coords="205,74,220,89" alt="Sign2" onmouseover="jQuery.slimbox('$ThemeDir/images/ssign.png','',lbos)" />
			<area shape="rect" coords="384,87,390,94" alt="Sign3" id="clickable_region_3" onmouseover="jQuery.slimbox('$ThemeDir/images/streetsign.png','',lbos)" />
			<area shape="rect" coords="399,35,1000,90" alt="Sign3" href="http://www.facebook.com/Kelburn.Wellington" title="The Kelburn shops on Facebook" />
		</map>
	</div>
