<?php
if ($scope->hasValue('IsReadonly', null, true)) { 
$val .= '
	<ul class="SelectionGroup';

if ($scope->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->XML_val('extraClass', null, true);

}
$val .= '">
	';

$scope->obj('FieldSet', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	';

if ($scope->hasValue('Selected', null, true)) { 
$val .= '
	<li';

$val .= $scope->XML_val('Selected', null, true);
$val .= '>
		';

$val .= $scope->XML_val('RadioLabel', null, true);
$val .= '
		';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
	</li>
	</ul>
	';


}
$val .= '
	';


}; $scope->popScope(); 
$val .= '
';


}else { 
$val .= '
	<ul class="SelectionGroup';

if ($scope->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->XML_val('extraClass', null, true);

}
$val .= '">';

$scope->obj('FieldSet', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '<li';

$val .= $scope->XML_val('Selected', null, true);
$val .= '>';

$val .= $scope->XML_val('RadioButton', null, true);
$val .= $scope->XML_val('RadioLabel', null, true);
$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '</li>';


}; $scope->popScope(); 
$val .= '</ul>
';


}
$val .= '
';

