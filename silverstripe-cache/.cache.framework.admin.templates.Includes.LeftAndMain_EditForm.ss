<?php
if ($scope->hasValue('IncludeFormTag', null, true)) { 
$val .= '
<form ';

$val .= $scope->XML_val('FormAttributes', null, true);
$val .= ' data-layout-type="border">
';


}
$val .= '
	<div class="cms-content-header north">
		<div class="cms-content-header-info">
			';

$val .= SSViewer::execute_template('BackLink_Button', $scope->getItem(), array());

$val .= '
			<h2 id="page-title-heading">
			';

$scope->obj('Controller', null, true); $scope->pushScope();
$val .= '
				';

$val .= SSViewer::execute_template('CMSBreadcrumbs', $scope->getItem(), array());

$val .= '
			';


; $scope->popScope(); 
$val .= '
			</h2>
		</div>
		';

if ($scope->obj('Fields', null, true)->hasValue('hasTabset', null, true)) { 
$val .= '
			';

$scope->obj('Fields', null, true)->obj('fieldByName', array('Root'), true); $scope->pushScope();
$val .= '
			<div class="cms-content-header-tabs">
				<ul>
				';

$scope->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					<li';

if ($scope->hasValue('extraClass', null, true)) { 
$val .= ' class="';

$val .= $scope->XML_val('extraClass', null, true);
$val .= '"';


}
$val .= '><a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#';

$val .= $scope->XML_val('id', null, true);
$val .= '">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</a></li>
				';


}; $scope->popScope(); 
$val .= '
				</ul>
			</div>
			';


; $scope->popScope(); 
$val .= '
		';


}
$val .= '

		<!-- <div class="cms-content-search">...</div> -->
	</div>

	';

$scope->obj('Controller', null, true); $scope->pushScope();
$val .= '
		';

$val .= $scope->XML_val('EditFormTools', null, true);
$val .= '
	';


; $scope->popScope(); 
$val .= '
	
	<div class="cms-content-fields center cms-panel-padded">
		';

if ($scope->hasValue('Message', null, true)) { 
$val .= '
		<p id="';

$val .= $scope->XML_val('FormName', null, true);
$val .= '_error" class="message ';

$val .= $scope->XML_val('MessageType', null, true);
$val .= '">';

$val .= $scope->XML_val('Message', null, true);
$val .= '</p>
		';


}else { 
$val .= '
		<p id="';

$val .= $scope->XML_val('FormName', null, true);
$val .= '_error" class="message ';

$val .= $scope->XML_val('MessageType', null, true);
$val .= '" style="display: none"></p>
		';


}
$val .= '

		<fieldset>
			';

if ($scope->hasValue('Legend', null, true)) { 
$val .= '<legend>';

$val .= $scope->XML_val('Legend', null, true);
$val .= '</legend>';


}
$val .= ' 
			';

$scope->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
			';


}; $scope->popScope(); 
$val .= '
			<div class="clear"><!-- --></div>
		</fieldset>
	</div>

	<div class="cms-content-actions south">
		';

if ($scope->hasValue('Actions', null, true)) { 
$val .= '
		<div class="Actions">
			';

$scope->obj('Actions', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				';

$val .= $scope->XML_val('Field', null, true);
$val .= '
			';


}; $scope->popScope(); 
$val .= '
			';

if ($scope->obj('Controller', null, true)->hasValue('LinkPreview', null, true)) { 
$val .= '
			<a href="';

$val .= $scope->obj('Controller', null, true)->XML_val('LinkPreview', null, true);
$val .= '" class="cms-preview-toggle-link ss-ui-button" data-icon="preview">
				';

$val .= _t('LeftAndMain.PreviewButton','Preview');
$val .= ' &raquo;
			</a>
			';


}
$val .= '
		</div>
		';


}
$val .= '
	</div>
';

if ($scope->hasValue('IncludeFormTag', null, true)) { 
$val .= '
</form>
';


}
$val .= '
';

