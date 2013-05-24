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
';

Requirements::themedCSS('layout');
$val .= '
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

Requirements::javascript('themes/stmichaels/js/preload.js');
$val .= '

';

if ($scope->XML_val('URLSegment', null, true)!='Security') { 
$val .= '
  ';

Requirements::javascript('themes/stmichaels/js/stmichaels.js');
$val .= '
';


}
$val .= '


';

Requirements::themedCSS('prettyPhoto');
$val .= '
';

Requirements::javascript('themes/stmichaels/js/jquery.prettyPhoto.js');
$val .= '
';

if ($scope->XML_val('URLSegment', null, true)=='taonga') { 
$val .= '
  ';

Requirements::javascript('themes/stmichaels/js/PPtheme2.js');
$val .= '
';


}else { 
$val .= '
  ';

Requirements::javascript('themes/stmichaels/js/PPtheme1.js');
$val .= '
';


}
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
		
    
          
    ';

if ($scope->XML_val('URLSegment', null, true)=='inside-st-mic-s') { 
$val .= '
      ';

Requirements::javascript('themes/stmichaels/js/swfkrpano.js');
$val .= '
      <div id="photobox">       
<object width="900px" height="300px"><embed src="themes/stmichaels/panorama/index.swf" width="900px" height="300px" allowFullScreen="true"></embed></object>
      </div>
      
    ';


}else if ($scope->hasValue('Slideshow', null, true)) { 
$val .= '      
      ';

$val .= $scope->XML_val('Slideshow', null, true);
$val .= '
      <div id="fb-link">
        <a href="http://www.facebook.com/StMichaelsKelburn" title="Visit St Michael\'s on Facebook"><img src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/icon_facebook.png" /></a>
      </div>    
    ';


}
$val .= '
    
		';

$val .= $scope->XML_val('Layout', null, true);
$val .= '
    	
    	';

if ($scope->XML_val('SectionTitle', null, true)=='Following') { 
$val .= '
			<div id="snail">
				<img src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/snailtalkfollowing-shadow.png" style="display:none;" />
				<img class="bubbleBottom" src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/bubblebottom.png" style="display:none;" />
				<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" data-bubble="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/snailtalkfollowing-shadow.png"></a>
			</div>
		';


}
$val .= '

		';

if ($scope->XML_val('SectionTitle', null, true)=='Connecting') { 
$val .= '
			<div id="snail">
				<img src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/snailtalkconnecting-shadow.png" style="display:none;" />
				<img class="bubbleBottom" src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/bubblebottom.png" style="display:none;" />
				<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" data-bubble="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/snailtalkconnecting-shadow.png"></a>
			</div>
		';


}
$val .= '

		';

if ($scope->XML_val('SectionTitle', null, true)=='Honouring') { 
$val .= '
			<div id="snail">
				<img src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/snail_praisebreath-shadow.png" style="display:none;" />
				<img class="bubbleBottom" src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/bubblebottom.png" style="display:none;" />
				<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" data-bubble="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/snail_praisebreath-shadow.png"></a>
			</div>
		';


}
$val .= '
		
		';

if ($scope->XML_val('SectionTitle', null, true)=='Engaging') { 
$val .= '
			<div id="snail">
				<img src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/snail_theearth-shadow.png" style="display:none;" />
				<img class="bubbleBottom" src="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/bubblebottom.png" style="display:none;" />
				<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" data-bubble="';

$val .= $scope->obj('Top', null, true)->XML_val('ThemeDir', null, true);
$val .= '/images/snail_theearth-shadow.png"></a>
			</div>
		';


}
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

