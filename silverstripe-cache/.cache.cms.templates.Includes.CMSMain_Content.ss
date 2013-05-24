<?php
$val .= '<div id="pages-controller-cms-content" class="cms-content center cms-tabset ';

$val .= $scope->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content" data-ignore-tab-state="true">

	<div class="cms-content-header north">
		<div class="cms-content-header-info">
			<h2>
				';

$val .= SSViewer::execute_template('CMSBreadcrumbs', $scope->getItem(), array());

$val .= '
			</h2>
		</div>
	
		<div class="cms-content-header-tabs">
			<ul>
				<li class="content-treeview';

if ($scope->XML_val('class', null, true)=='CMSPageEditController') { 
$val .= ' ui-tabs-selected';


}
$val .= '">
					<a href="';

$val .= $scope->XML_val('LinkPageEdit', null, true);
$val .= '" class="cms-panel-link" title="Form_EditForm" data-href="';

$val .= $scope->XML_val('LinkPageEdit', null, true);
$val .= '">
						';

$val .= _t('CMSMain.TabContent','Content');
$val .= '
					</a>
				</li>
				<li class="content-listview';

if ($scope->XML_val('class', null, true)=='CMSPageSettingsController') { 
$val .= ' ui-tabs-selected';


}
$val .= '">
					<a href="';

$val .= $scope->XML_val('LinkPageSettings', null, true);
$val .= '" class="cms-panel-link" title="Form_EditForm" data-href="';

$val .= $scope->XML_val('LinkPageSettings', null, true);
$val .= '">
						';

$val .= _t('CMSMain.TabSettings','Settings');
$val .= '
					</a>
				</li>
				<li class="content-listview';

if ($scope->XML_val('class', null, true)=='CMSPageHistoryController') { 
$val .= ' ui-tabs-selected';


}
$val .= '">
					<a href="';

$val .= $scope->XML_val('LinkPageHistory', null, true);
$val .= '" class="cms-panel-link" title="Form_EditForm" data-href="';

$val .= $scope->XML_val('LinkPageHistory', null, true);
$val .= '">
						';

$val .= _t('CMSMain.TabHistory','History');
$val .= '
					</a>
				</li>
			</ul>
		</div>
	</div>

	';

$val .= $scope->XML_val('Tools', null, true);
$val .= '

	';

$val .= $scope->XML_val('EditForm', null, true);
$val .= '
	
</div>';

