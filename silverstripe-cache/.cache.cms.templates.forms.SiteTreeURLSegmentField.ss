<?php
$val .= '<span class="prefix">';

$val .= $scope->XML_val('URLPrefix', null, true);
$val .= '</span><input ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= ' />
';

if ($scope->hasValue('HelpText', null, true)) { 
$val .= '
<p class="help">';

$val .= $scope->XML_val('HelpText', null, true);
$val .= '</p>
';


}
