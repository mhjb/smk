<?php
if ($scope->hasValue('isReadonly', null, true)) { 
$val .= '
	<span id="';

$val .= $scope->XML_val('ID', null, true);
$val .= '"
	      ';

if ($scope->hasValue('extraClass', null, true)) { 
$val .= 'class="';

$val .= $scope->XML_val('extraClass', null, true);
$val .= '"';


}
$val .= '
	      ';

if ($scope->hasValue('Description', null, true)) { 
$val .= 'title="';

$val .= $scope->XML_val('Description', null, true);
$val .= '"';


}
$val .= '>
		';

$val .= $scope->XML_val('Value', null, true);
$val .= '
	</span>
';


}else { 
$val .= '
	<input ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= ' />
';


}
$val .= '
';

