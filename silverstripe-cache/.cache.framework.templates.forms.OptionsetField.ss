<?php
$val .= '<ul id="';

$val .= $scope->XML_val('ID', null, true);
$val .= '" class="';

$val .= $scope->XML_val('extraClass', null, true);
$val .= '"';

if ($scope->hasValue('Description', null, true)) { 
$val .= ' title="';

$val .= $scope->XML_val('Description', null, true);
$val .= '"';


}
$val .= '>
	';

$scope->obj('Options', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<li class="';

$val .= $scope->XML_val('Class', null, true);
$val .= '">
			<input id="';

$val .= $scope->XML_val('ID', null, true);
$val .= '" class="radio" name="';

$val .= $scope->XML_val('Name', null, true);
$val .= '" type="radio" value="';

$val .= $scope->XML_val('Value', null, true);
$val .= '"';

if ($scope->hasValue('isChecked', null, true)) { 
$val .= ' checked';


}
if ($scope->hasValue('isDisabled', null, true)) { 
$val .= ' disabled';


}
$val .= ' />
			<label for="';

$val .= $scope->XML_val('ID', null, true);
$val .= '">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</label>
		</li>
	';


}; $scope->popScope(); 
$val .= '
</ul>
';

