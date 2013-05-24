<?php
$val .= '<div class="cms-content-toolbar">
	';


$val .= '
</div>

<div class="ss-dialog cms-page-add-form-dialog cms-dialog-content" id="cms-page-add-form" title="';

$val .= _t('CMSMain.AddNew','Add new page');
$val .= '">
	';

$val .= $scope->XML_val('AddForm', null, true);
$val .= '
</div>

<div class="cms-panel-content center">
	';

if ($scope->hasValue('TreeIsFiltered', null, true)) { 
$val .= '
	<div class="cms-tree-filtered">
		<strong>';

$val .= _t('CMSMain.ListFiltered','Filtered list.');
$val .= '</strong>
		<a href="';

$val .= $scope->XML_val('LinkPages', null, true);
$val .= '" class="cms-panel-link">
			';

$val .= _t('CMSMain.TreeFilteredClear','Clear filter');
$val .= '
		</a>
	</div>
	';


}
$val .= '

	<div class="cms-list" data-url-list="';

$val .= $scope->XML_val('Link', array('getListViewHTML'), true);
$val .= '">
		';

$val .= $scope->XML_val('ListViewForm', null, true);
$val .= '
	</div>
</div>';

