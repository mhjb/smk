<?php
$val .= '<select ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= '>
';

$scope->obj('Options', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	<option value="';

$val .= $scope->XML_val('Value', null, true);
$val .= '"';

if ($scope->hasValue('Selected', null, true)) { 
$val .= ' selected="selected"';


}
if ($scope->hasValue('Disabled', null, true)) { 
$val .= ' disabled="disabled"';


}
$val .= '>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</option>
';


}; $scope->popScope(); 
$val .= '
</select>
';

