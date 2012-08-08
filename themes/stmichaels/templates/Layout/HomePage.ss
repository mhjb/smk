<% require themedCSS(home) %>
<% require javascript(sapphire/thirdparty/jquery/jquery.js) %>
<% require javascript(themes/stmichaels/js/home.js) %>

	<div id="values">
		<% control Words %><span title="$Blurb">$Word</span><% end_control %>
	</div>

	<div id="values-blurb"></div>

	<div id="titlecontent" class="typography">
		$Content
		$Form
	</div>
	
	<div id="kelburnvillage">
		<a href="$ThemeDir/images/ChurchEastEnd.jpg" onmouseover="$.prettyPhoto.open('$ThemeDir/images/ChurchEastEnd.jpg')" rel="prettyPhoto" id="sign1"></a>
		<a href="$ThemeDir/images/flag.png" onmouseover="$.prettyPhoto.open('$ThemeDir/images/flag.png')" rel="prettyPhoto" id="flag"></a>
		<a href="$ThemeDir/images/ssign.png" onmouseover="$.prettyPhoto.open('$ThemeDir/images/ssign.png')" rel="prettyPhoto" id="sign2"></a>
		<a href="$ThemeDir/images/streetsign.png" onmouseover="$.prettyPhoto.open('$ThemeDir/images/streetsign.png')" rel="prettyPhoto" id="sign3"></a>
		<a href="http://www.facebook.com/Kelburn.Wellington" title="The Kelburn shops on Facebook" id="fblink"></a>
	</div>
