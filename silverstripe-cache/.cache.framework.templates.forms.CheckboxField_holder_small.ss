<?php
$val .= $scope->XML_val('Field', null, true);
$val .= '

';

if ($scope->hasValue('Title', null, true)) { 
$val .= '
	<label class="checkboxfield-small" ';

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
