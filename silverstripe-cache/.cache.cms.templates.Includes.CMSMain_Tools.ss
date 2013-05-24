<?php
$val .= '<div class="cms-content-tools west cms-panel cms-panel-layout" data-expandOnClick="true" data-layout-type="border" id="cms-content-tools-CMSMain">
	<div class="cms-panel-content center">
		<div class="cms-content-view cms-tree-view-sidebar cms-panel-deferred" id="cms-content-treeview" data-url="';

$val .= $scope->XML_val('LinkTreeView', null, true);
$val .= '">
			';


$val .= '
		</div>
	</div>
	<div class="cms-panel-content-collapsed">
		<h3 class="cms-panel-header">';

$val .= $scope->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</h3>
	</div>
</div>';

