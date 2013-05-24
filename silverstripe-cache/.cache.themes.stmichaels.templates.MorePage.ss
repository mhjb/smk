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

Requirements::themedCSS('followinglayout');
$val .= '
';

Requirements::themedCSS('sitemap-default');
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

Requirements::javascript('themes/stmichaels/js/sitemap-default.js');
$val .= '


';

Requirements::themedCSS('prettyPhoto');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/jquery.prettyPhoto.js');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/PPtheme2.js');
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
		<div id="box-top">&nbsp;</div><div id=""></div>
		<div id="box-bottom">&nbsp;</div>
		<div id="menu">
			
		</div>


		';

$val .= $scope->XML_val('Layout', null, true);
$val .= '
		
		</div>
  </div>

</div>

';

$val .= SSViewer::execute_template('Footer', $scope->getItem(), array());

$val .= '

</body>
</html>
';

