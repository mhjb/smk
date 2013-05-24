<?php
$val .= '  <div id="content" class="typography">
  ';

$val .= $scope->obj('SectionPage', null, true)->XML_val('Content', null, true);
$val .= '

	<a href="javascript:history.go(-1)" id="backArrow"></a><h2>';

$val .= $scope->XML_val('Title', null, true);
$val .= '&nbsp;</h2>
  
  ';

if ($scope->XML_val('URLSegment', null, true)=='search-results') { 
$val .= '
   <div id="cse" style="height: 600px; overflow-y: scroll;"><gcse:searchresults-only></gcse:searchresults-only></div>
    
  ';


}
$val .= '
	<div id="more-page-scrollbox">
		';

$val .= $scope->XML_val('Content', null, true);
$val .= '
		';

$val .= $scope->XML_val('Form', null, true);
$val .= '
     
   
 
	</div>
	';

