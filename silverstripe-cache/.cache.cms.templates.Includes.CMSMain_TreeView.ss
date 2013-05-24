<?php
$val .= '<div class="cms-content-toolbar">
	';

$val .= SSViewer::execute_template('CMSPagesController_ContentToolbar', $scope->getItem(), array());

$val .= '
</div>

<div class="ss-dialog cms-page-add-form-dialog cms-dialog-content" id="cms-page-add-form" title="';

$val .= _t('CMSMain.AddNew','Add new page');
$val .= '">
	';

$val .= $scope->XML_val('AddForm', null, true);
$val .= '
</div>

<button href="';

$val .= $scope->XML_val('LinkPagesWithSearch', null, true);
$val .= '" class="cms-tree-expand-trigger cms-panel-link ss-button" data-icon="pencil">
	';

$val .= _t('CMSMain.EditTree','Edit Tree');
$val .= '
</button>

';

$val .= $scope->XML_val('ExtraTreeTools', null, true);
$val .= '

<div class="center">
	';

if ($scope->hasValue('TreeIsFiltered', null, true)) { 
$val .= '
	<div class="cms-tree-filtered">
		<strong>';

$val .= _t('CMSMain.TreeFiltered','Filtered tree.');
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

	<div class="cms-tree" data-url-tree="';

$val .= $scope->XML_val('Link', array('getsubtree'), true);
$val .= '" data-url-savetreenode="';

$val .= $scope->XML_val('Link', array('savetreenode'), true);
$val .= '" data-url-updatetreenodes="';

$val .= $scope->XML_val('Link', array('updatetreenodes'), true);
$val .= '" data-url-addpage="';

$val .= $scope->XML_val('LinkPageAdd', array('AddForm/?action_doAdd=1'), true);
$val .= '&amp;ParentID=%s&amp;PageType=%s&amp;SecurityID=';

$val .= $scope->XML_val('SecurityID', null, true);
$val .= '" data-url-editpage="';

$val .= $scope->XML_val('LinkPageEdit', array('%s'), true);
$val .= '" data-hints="';

$val .= $scope->XML_val('SiteTreeHints', null, true);
$val .= '">
		';

$val .= $scope->XML_val('SiteTreeAsUL', null, true);
$val .= '
	</div>
</div>
';

