<?php
$val .= '<!DOCTYPE html>
<html>
	<head>
		';

$val .= SSViewer::get_base_tag($val);
$val .= '
		<title></title>
	</head>

	<body class="cms ss-uploadfield-edit-iframe">
		';

$val .= $scope->XML_val('Form', null, true);
$val .= '
	</body>
</html>';

