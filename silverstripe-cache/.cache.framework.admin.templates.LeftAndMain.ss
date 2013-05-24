<?php
$val .= '<!DOCTYPE html>
<html>
	<head>
	';

$val .= SSViewer::get_base_tag($val);
$val .= '
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=720, maximum-scale=1.0" />
	<title>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</title>
</head>
<body class="loading cms" lang="';

$val .= $scope->obj('Locale', null, true)->XML_val('RFC1766', null, true);
$val .= '" data-frameworkpath="';

$val .= $scope->XML_val('ModulePath', array('framework'), true);
$val .= '">
	';

$val .= SSViewer::execute_template('CMSLoadingScreen', $scope->getItem(), array());

$val .= '
	
	<div class="cms-container center" data-layout-type="border">
		';

$val .= $scope->XML_val('Menu', null, true);
$val .= '
		';

$val .= $scope->XML_val('Content', null, true);
$val .= '

		<div class="cms-preview east ';

if ($scope->hasValue('IsPreviewExpanded', null, true)) { 
$val .= 'is-expanded';


}else { 
$val .= 'is-collapsed';


}
$val .= '" data-layout-type="border">
			<iframe src="about:blank" class="center" name="cms-preview-iframe"></iframe>
			<div class="cms-preview-controls south"></div>
		</div>
	</div>
	
	';

$val .= $scope->XML_val('EditorToolbar', null, true);
$val .= '
</body>
</html>
';

