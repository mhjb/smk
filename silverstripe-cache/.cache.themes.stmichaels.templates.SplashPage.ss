<?php
$val .= '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>';

$val .= $scope->XML_val('MetaTitle', null, true);
$val .= '</title>
<style type="text/css">
<!--
body {
	background: #d1d1d1;
	margin: 0px;
}
#content {
	height: 780px;
	width: 1035px;
	margin-right: auto;
	margin-left: auto;
	background: url(';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/backgroundwithshadow.png) no-repeat center 1px;
}
.welcomeimage {
	margin-left: 17px;
	margin-top: 15px;
}
.click {
	margin-top: 770px;
	margin-left: 800px;
}
#apDiv1 {
	position:absolute;
	left:975px;
	top:777px;
	width:187px;
	height:25px;
	z-index:1;
}
#KOHEnglish {
	position:absolute;
	left:370px;
	top:533px;
	width:495px;
	height:175px;
	z-index:2;
	visibility: hidden;
}
#KOHMaori {
	position:absolute;
	left:586px;
	top:342px;
	width:480px;
	height:168px;
	z-index:3;
	visibility: hidden;
}
-->
</style>
';

Requirements::javascript('themes/stmichaels/js/jquery-1.8.2.min.js');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/preload.js');
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

<body>
<div id="content">
<img src="';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/titleimage.jpg" alt="St Michael\'s  Welcome Page" width="1000" height="751" border="0" usemap="#Map2" class="welcomeimage" />
<map name="Map2" id="Map2">
  <area shape="rect" coords="294,134,709,457" href="main/" alt="Enter to St Mic\'s Website" />
  <area shape="circle" coords="883,506,32" onmouseover="$.prettyPhoto.open(\'';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/kingdom-of-heaven-maori-shadow.png\')"/>
  <area shape="poly" coords="616,634,647,632,649,652,641,665,667,713,646,722,608,706,575,672,547,683,524,656,563,650,580,617,590,614,615,634" onmouseover="$.prettyPhoto.open(\'';

$val .= $scope->XML_val('ThemeDir', null, true);
$val .= '/images/kingdom-of-heaven-english-shadow.png\')" />
</map>
</div>
</body>
</html>
';

