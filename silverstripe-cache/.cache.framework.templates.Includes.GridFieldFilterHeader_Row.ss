<?php
$val .= '<tr class="filter-header" style="display:none;">
	';

$scope->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	<th class="extra">';

$val .= $scope->XML_val('Field', null, true);
$val .= '</th>
	';


}; $scope->popScope(); 
$val .= '
</tr>
';

