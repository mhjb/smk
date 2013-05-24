<?php
$val .= '<div class="fieldholder-small">
	';

if ($scope->hasValue('RightTitle', null, true)) { 
$val .= '
		<label class="right fieldholder-small-label" ';

if ($scope->hasValue('ID', null, true)) { 
$val .= 'for="';

$val .= $scope->XML_val('ID', null, true);
$val .= '"';


}
$val .= '>';

$val .= $scope->XML_val('RightTitle', null, true);
$val .= '</label>
	';


}else if ($scope->hasValue('LeftTitle', null, true)) { 
$val .= '
		<label class="left fieldholder-small-label" ';

if ($scope->hasValue('ID', null, true)) { 
$val .= 'for="';

$val .= $scope->XML_val('ID', null, true);
$val .= '"';


}
$val .= '>';

$val .= $scope->XML_val('LeftTitle', null, true);
$val .= '</label>
	';


}else if ($scope->hasValue('Title', null, true)) { 
$val .= '
		<label class="fieldholder-small-label" ';

if ($scope->hasValue('ID', null, true)) { 
$val .= 'for="';

$val .= $scope->XML_val('ID', null, true);
$val .= '"';


}
$val .= '>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</label>
	';


}
$val .= '
	
	';

$val .= $scope->XML_val('Field', null, true);
$val .= '
</div>';

