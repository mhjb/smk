<?php
$val .= '<div ';

if ($scope->hasValue('Name', null, true)) { 
$val .= 'id="';

$val .= $scope->XML_val('Name', null, true);
$val .= '"';


}
$val .= ' class="field ';

$val .= $scope->XML_val('Type', null, true);
$val .= ' ';

$val .= $scope->XML_val('extraClass', null, true);
$val .= '">
	';

if ($scope->hasValue('Title', null, true)) { 
$val .= '<label class="left">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</label>';


}
$val .= '
	
	<div class="middleColumn fieldgroup ';

if ($scope->hasValue('Zebra', null, true)) { 
$val .= 'fieldgroup-';

$val .= $scope->XML_val('Zebra', null, true);

}
$val .= '">
		';

$scope->obj('FieldList', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<div class="fieldgroup-field ';

$val .= $scope->XML_val('FirstLast', null, true);
$val .= ' ';

$val .= $scope->XML_val('EvenOdd', null, true);
$val .= '">
				';

$val .= $scope->XML_val('SmallFieldHolder', null, true);
$val .= '
			</div>
		';


}; $scope->popScope(); 
$val .= '
	</div>
	';

if ($scope->hasValue('RightTitle', null, true)) { 
$val .= '<label class="right">';

$val .= $scope->XML_val('RightTitle', null, true);
$val .= '</label>';


}
$val .= '
	';

if ($scope->hasValue('Message', null, true)) { 
$val .= '<span class="message ';

$val .= $scope->XML_val('MessageType', null, true);
$val .= '">';

$val .= $scope->XML_val('Message', null, true);
$val .= '</span>';


}
$val .= '
</div>';

