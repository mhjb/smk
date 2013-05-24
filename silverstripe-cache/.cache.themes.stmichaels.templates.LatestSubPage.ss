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

<body class="highlight" id="LatestSubPage">
	
	<div id="box">
		<!-- these are to aid styling -->
		<div id="box-top">&nbsp;</div><div id=""></div>
		<div id="box-bottom">&nbsp;</div>
		

    
		';

$val .= $scope->XML_val('Layout', null, true);
$val .= '
		
		

		
	</div>	
<div id="footer" class="typography">
  <div class="footertext" id="footerleft"> <a class="nolink" href="site-map" >Site Map</a> &nbsp; &copy; ';

$val .= $scope->obj('Now', null, true)->XML_val('Year', null, true);
$val .= ' St Michael&rsquo;s Anglican Church, Kelburn, Wellington, New Zealand. <br />
  Designed by <a class="nolink" href="http://www.lilyemo.co.nz">Lily Emo</a>. Implemented by <a class="nolink" href="http://bartlettprojects.com">Bartlett Projects</a>. 
  </div>
  
  

  <div class="footertext" id="footersegments"></div>
  <div class="footertext" id="footerright" style="text-align:right">    
  <div id="cse-search-form" style="width: 100%;">Loading</div>
  <script src="http://www.google.com/jsapi" type="text/javascript"></script>
  <script type="text/javascript"> 
    google.load(\'search\', \'1\', {language : \'en\', style : google.loader.themes.V2_DEFAULT});
    google.setOnLoadCallback(function() {
      var customSearchOptions = {};  var customSearchControl = new google.search.CustomSearchControl(
        \'008170750961698131942:knntxsefvjw\', customSearchOptions);
      customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
      var options = new google.search.DrawOptions();
      options.enableSearchboxOnly("http://stmichaels.org.nz/search-results");
      customSearchControl.draw(\'cse-search-form\', options);
    }, true);
  </script>


  </div> 
  <div id="cse" style="width:100%;"></div> 
</div>

</body>
</html>
';
