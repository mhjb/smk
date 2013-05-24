<?php
$val .= '<';

$val .= $scope->XML_val('Tag', null, true);
$val .= ' class="CompositeField ';

$val .= $scope->XML_val('extraClass', null, true);
$val .= ' ';

if ($scope->hasValue('ColumnCount', null, true)) { 
$val .= 'multicolumn';


}
$val .= '">
	';

if ($scope->XML_val('Tag', null, true)=='fieldset'&&$scope->hasValue('Legend', null, true)) { 
$val .= '
		<legend>';

$val .= $scope->XML_val('Legend', null, true);
$val .= '</legend>
	';


}
$val .= '
	
	';

$scope->obj('FieldList', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		';

if ($scope->hasValue('ColumnCount', null, true)) { 
$val .= '
			<div class="column-';

$val .= $scope->XML_val('ColumnCount', null, true);
$val .= ' ';

$val .= $scope->XML_val('FirstLast', null, true);
$val .= '">
				';

$val .= $scope->XML_val('Field', null, true);
$val .= '
			</div>
		';


}else { 
$val .= '
			';

$val .= $scope->XML_val('Field', null, true);
$val .= '
		';


}
$val .= '
	';


}; $scope->popScope(); 
$val .= '
</';

$val .= $scope->XML_val('Tag', null, true);
$val .= '>';

