<?php
$val .= '<div id="Content" class="typography">  

$val .= $scope->XML_val('Title', null, true);
$val .= '</h2>

if ($scope->XML_val('URLSegment', null, true)=='archive') { 
$val .= '

$val .= $scope->XML_val('Content', null, true);
$val .= '


}else if ($scope->XML_val('URLSegment', null, true)=='sermons') { 
$val .= ' 

$val .= $scope->XML_val('Content', null, true);
$val .= '


}else if ($scope->hasValue('FileList', null, true)) { 
$val .= ' 

$val .= $scope->XML_val('FileList', null, true);
$val .= '		


}
$val .= '
