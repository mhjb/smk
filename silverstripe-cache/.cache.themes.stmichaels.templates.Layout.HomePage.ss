<?php
Requirements::themedCSS('home');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/jquery-1.8.2.min.js');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/home.js');
$val .= '

	<div id="values">
		';

$scope->obj('Words', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '<span title="';

$val .= $scope->XML_val('Blurb', null, true);
$val .= '">';

$val .= $scope->XML_val('Word', null, true);
$val .= '</span>';


}; $scope->popScope(); 
$val .= '
	</div>

	<div id="values-blurb"></div>

	<div id="titlecontent" class="typography">
		';

$val .= $scope->XML_val('Content', null, true);
$val .= '
		';

$val .= $scope->XML_val('Form', null, true);
$val .= '
	</div>
	
	<div id="kelburnvillage">
		<a href="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/ChurchEastEnd.jpg" onmouseover="$.prettyPhoto.open(\'';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/ChurchEastEnd-shadow.png\')" rel="prettyPhoto" id="sign1"></a>
		<a href="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/flag.png" onmouseover="$.prettyPhoto.open(\'';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/flag-shadow.png\')" rel="prettyPhoto" id="flag"></a>
		<a href="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/ssign.png?n=2" onmouseover="$.prettyPhoto.open(\'';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/ssign-shadow.png?n=2\')" rel="prettyPhoto" id="sign2"></a>
		<a href="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/streetsign.png" onmouseover="$.prettyPhoto.open(\'';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/streetsign-shadow.png\')" rel="prettyPhoto" id="sign3"></a>
		<a href="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/sign.png" onmouseover="$.prettyPhoto.open(\'';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/sign-shadow.png\')" rel="prettyPhoto" id="sign4"></a>
		<a href="http://www.facebook.com/Kelburn.Wellington" title="The Kelburn shops on Facebook" id="fblink"></a>
	</div>
';

