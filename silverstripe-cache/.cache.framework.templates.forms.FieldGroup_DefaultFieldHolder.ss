<?php
$val .= '<div class="';

if ($scope->hasValue('extraClass', null, true)) { 
$val .= $scope->XML_val('extraClass', null, true);

}else { 
$val .= 'fieldgroup';


}
if ($scope->hasValue('Zebra', null, true)) { 
$val .= ' fieldgroup-zebra';


}
$val .= '" ';

if ($scope->hasValue('ID', null, true)) { 
$val .= 'id="';

$val .= $scope->XML_val('ID', null, true);
$val .= '"';


}
$val .= '>
	';

$scope->obj('FieldList', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<div class="fieldgroup-field ';

$val .= $scope->XML_val('FirstLast', null, true);
$val .= ' ';

$val .= $scope->XML_val('EvenOdd', null, true);
$val .= '">
			';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
		</div>
	';


}; $scope->popScope(); 
$val .= '
</div>';

