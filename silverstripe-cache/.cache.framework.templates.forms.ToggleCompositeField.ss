<?php
$val .= '<div ';

$val .= $scope->XML_val('AttributesHTML', null, true);
$val .= '>
	<h';

$val .= $scope->XML_val('HeadingLevel', null, true);
$val .= '><a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</a></h';

$val .= $scope->XML_val('HeadingLevel', null, true);
$val .= '>
	<div>
		';

$scope->obj('FieldList', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
		';


}; $scope->popScope(); 
$val .= '
	</div>
</div>
';

