<?php
$val .= '<tr class="title">
	<th colspan="';

$val .= $scope->XML_val('ColumnCount', null, true);
$val .= '">
		';

if ($scope->hasValue('Title', null, true)) { 
$val .= '<h2>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</h2>';


}
$val .= '
		<div class="right">\\$DefineFragment(toolbar-header-right)</div>
		<div class="left">\\$DefineFragment(toolbar-header-left)</div>
	</th>
</tr>';

