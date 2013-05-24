<?php
$val .= '<div id="';

$val .= $scope->XML_val('id', null, true);
$val .= '">
	';


$val .= '

	';

$scope->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	<div ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= '>
	';

if ($scope->hasValue('Tabs', null, true)) { 
$val .= '
		';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
	';


}else { 
$val .= '
		';

$scope->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
		';


}; $scope->popScope(); 
$val .= '
	';


}
$val .= '
	</div>
	';


}; $scope->popScope(); 
$val .= '
</div>
';

