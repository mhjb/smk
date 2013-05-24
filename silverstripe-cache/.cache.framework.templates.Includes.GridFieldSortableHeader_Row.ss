<?php
$val .= '<tr class="sortable-header">
	';

$scope->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<th class="main col-';

$val .= $scope->XML_val('getName', null, true);
$val .= '">';

$val .= $scope->XML_val('Field', null, true);
$val .= '</th>
	';


}; $scope->popScope(); 
$val .= '
</tr>
';

