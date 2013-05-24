<?php
$val .= '<div id="TreeDropdownField_';

$val .= $scope->XML_val('ID', null, true);
$val .= '"
     class="TreeDropdownField single';

if ($scope->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->XML_val('extraClass', null, true);

}
if ($scope->hasValue('ShowSearch', null, true)) { 
$val .= ' searchable';


}
$val .= '"
     data-url-tree="';

$val .= $scope->XML_val('Link', array('tree'), true);
$val .= '"
     data-title="';

$val .= $scope->XML_val('TitleURLEncoded', null, true);
$val .= '"
     ';

if ($scope->hasValue('Description', null, true)) { 
$val .= 'title="';

$val .= $scope->XML_val('Description', null, true);
$val .= '"';


}
$val .= '
     ';

if ($scope->hasValue('Metadata', null, true)) { 
$val .= 'data-metadata="';

$val .= $scope->XML_val('Metadata', null, true);
$val .= '"';


}
$val .= '>
	<input id="';

$val .= $scope->XML_val('ID', null, true);
$val .= '" type="hidden" name="';

$val .= $scope->XML_val('Name', null, true);
$val .= '" value="';

$val .= $scope->XML_val('Value', null, true);
$val .= '" />
</div>';

