<?php
$val .= '<div class="cms-content-tools west cms-panel cms-panel-layout collapsed" id="cms-content-tools-AssetAdmin" data-expandOnClick="true" data-layout-type="border">
	<div class="cms-panel-content center">
		<h3 class="cms-panel-header">';

$val .= _t('AssetAdmin_Tools.FILTER','Filter');
$val .= '</h3>
		';

$val .= $scope->XML_val('SearchForm', null, true);
$val .= '
	</div>
	<div class="cms-panel-content-collapsed">
		<h3 class="cms-panel-header">';

$val .= _t('AssetAdmin_Tools.FILTER','Filter');
$val .= '</h3>
	</div>
</div>';

