<?php
$val .= '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
';

$val .= SSViewer::get_base_tag($val);
$val .= '
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>';

$val .= $scope->XML_val('Title', null, true);
$val .= ' &ndash; ';

$val .= $scope->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</title>
<link rel="stylesheet" type="text/css" href="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/css/layout.css">
<link rel="stylesheet" type="text/css" href="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/css/jquery.jscrollpane.css">
<link rel="stylesheet" type="text/css" href="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/css/jquery.jscrollpane.lozenge.css">
';

Requirements::themedCSS('typography');
$val .= '
';

Requirements::themedCSS('latestpage');
$val .= '

';

Requirements::javascript('themes/stmichaels/js/jquery-1.8.2.min.js');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/jquery.jscrollpane.min.js');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/jquery.mousewheel.js');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/jquery.cycle.lite.js');
$val .= '

';

Requirements::javascript('themes/stmichaels/js/stmichaels.js');
$val .= '

';

Requirements::themedCSS('prettyPhoto');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/jquery.prettyPhoto.js');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/PPtheme1.js');
$val .= '



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
  _gaq.push([\'_setAccount\', \'UA-3724883-19\']);
  _gaq.push([\'_trackPageview\']);

  (function() {
    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;
    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';
    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>

<body class="highlight">
	
	<div id="box">
		<!-- these are to aid styling -->
		<div id="box-top">&nbsp;</div>
		<div id="box-bottom">&nbsp;</div>
		<div id="menu">
			';

$scope->obj('Menu', array('1'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

if ($scope->XML_val('LinkOrSection', null, true)=='section') { 
$val .= '
			<a href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '"><img src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/menu/';

$val .= $scope->XML_val('URLSegment', null, true);
$val .= '2.png" alt="';

$val .= $scope->XML_val('MenuTitle', null, true);
$val .= '" name="';

$val .= $scope->XML_val('URLSegment', null, true);
$val .= '" border="0" class="';

$val .= $scope->XML_val('URLSegment', null, true);
$val .= '" id="';

$val .= $scope->XML_val('URLSegment', null, true);
$val .= '" title="';

$val .= $scope->XML_val('Title', null, true);
$val .= '"/></a>
			';


}else { 
$val .= '
			<a href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '"><img src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/menu/';

$val .= $scope->XML_val('URLSegment', null, true);
$val .= '.png" hoversrc="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/menu/';

$val .= $scope->XML_val('URLSegment', null, true);
$val .= '2.png" alt="';

$val .= $scope->XML_val('MenuTitle', null, true);
$val .= '" name="';

$val .= $scope->XML_val('URLSegment', null, true);
$val .= '" border="0" class="';

$val .= $scope->XML_val('URLSegment', null, true);
$val .= '" id="';

$val .= $scope->XML_val('URLSegment', null, true);
$val .= '" title="';

$val .= $scope->XML_val('Title', null, true);
$val .= '"/></a>
			';


}
$val .= '
			';


}; $scope->popScope(); 
$val .= '
		</div>
		
		<div id="leftContent" class="scrolling">
			';

$val .= $scope->XML_val('Layout', null, true);
$val .= '
		</div>
		
		<div id="rightContent" class="typography">
			<ul>
			';

$scope->obj('Menu', array('2'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

if ($scope->XML_val('LinkOrCurrent', null, true)=='current') { 
$val .= '
				<li class="highlight">';

$val .= $scope->XML_val('MenuTitle', null, true);
$val .= '</li>
			';


}else { 
$val .= '
				<li><a href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '">';

$val .= $scope->XML_val('MenuTitle', null, true);
$val .= '</a></li>
			';


}
$val .= '
			';


}; $scope->popScope(); 
$val .= '
			</ul>
			<a href="http://www.facebook.com/StMichaelsKelburn" alt="SMK on Facebook"><img src="themes/stmichaels/images/icon_facebook.png" /></a>
		</div>
		
		
		<div id="snailSign">
			<a href="assets/pdfs/roster.pdf?n=1" title="Download the St Mic\'s roster (password required)" id="snailRosterLink">&nbsp;</a>
			<a href="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/ssign-shadow.png" onmouseover="$.prettyPhoto.open(\'';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/ssign-shadow.png\')" rel="prettyPhoto" id="snailSignLink">&nbsp;</a>
		</div>
		
	</div>	

';

$val .= SSViewer::execute_template('Footer', $scope->getItem(), array());

$val .= '
	
</body>
</html>
';

