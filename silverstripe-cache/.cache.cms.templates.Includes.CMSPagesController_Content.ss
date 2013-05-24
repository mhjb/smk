<?php
$val .= '<div id="pages-controller-cms-content" class="cms-content center cms-tabset ';

$val .= $scope->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content">

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

if ($scope->XML_val('ViewState', null, true)=='tree') { 
$val .= ' ui-tabs-selected';


}
$val .= '">
					<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#cms-content-treeview" class="cms-panel-link" data-href="';

$val .= $scope->XML_val('LinkTreeView', null, true);
$val .= '">';

$val .= _t('CMSPagesController.TreeView','Tree View');
$val .= '</a>
				</li>
				<li class="content-listview';

if ($scope->XML_val('ViewState', null, true)=='list') { 
$val .= ' ui-tabs-selected';


}
$val .= '">
					<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#cms-content-listview" class="cms-panel-link" data-href="';

$val .= $scope->XML_val('LinkListView', null, true);
$val .= '">';

$val .= _t('CMSPagesController.ListView','List View');
$val .= '</a>
				</li>
				<!--
				<li class="content-galleryview">
					<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#cms-content-galleryview">';

$val .= _t('CMSPagesController.GalleryView','Gallery View');
$val .= '</a>
				</li>
				-->
			</ul>
		</div>
	</div>

	';

$val .= $scope->XML_val('Tools', null, true);
$val .= '

	<div class="cms-content-fields center ui-widget-content cms-panel-padded">
		
		<div class="cms-content-view cms-panel-deferred" id="cms-content-treeview" data-url="';

$val .= $scope->XML_val('LinkTreeView', null, true);
$val .= '">
			';


$val .= '
		</div>
	
		<div class="cms-content-view cms-panel-deferred" id="cms-content-listview" data-url="';

$val .= $scope->XML_val('LinkListView', null, true);
$val .= '" data-deferred-no-cache="true">
			';


$val .= '
		</div>
		<!--
		<div id="cms-content-galleryview">
			<i>Not implemented yet</i>
		</div>
		-->
		
	</div>
	
</div>';

