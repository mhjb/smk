<?php
$val .= '<div id="Content" class="typography">  		<a href="javascript:history.go(-1)" id="backArrow"></a>	<h2>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</h2>	<div class="clear"></div>		<div id="more-page-scrollbox">		<div class="scrollbox-content">		';

if ($scope->XML_val('URLSegment', null, true)=='archive') { 
$val .= '			';

$val .= $scope->XML_val('Content', null, true);
$val .= '		';


}else if ($scope->XML_val('URLSegment', null, true)=='sermons') { 
$val .= ' 				';

$val .= $scope->XML_val('Content', null, true);
$val .= '					';


}else if ($scope->hasValue('FileList', null, true)) { 
$val .= ' 			';

$val .= $scope->XML_val('FileList', null, true);
$val .= '				';


}
$val .= '		</div>			</div></div>';

