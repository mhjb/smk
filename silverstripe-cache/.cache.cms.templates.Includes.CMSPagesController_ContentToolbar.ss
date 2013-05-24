<?php
$val .= '<div class="cms-tree-view-modes">
	<span>';

$val .= _t('TreeTools.DisplayLabel','Display:');
$val .= '</span>
	';

if ($scope->hasValue('CanOrganiseSitetree', null, true)) { 
$val .= ' 
	<div class="checkboxAboveTree">
		<input type="radio" name="view-mode" class="view-mode" value="draggable" id="view-mode-draggable" checked="checked" />
		<label for="view-mode-draggable">';

$val .= _t('CMSPagesController_ContentToolbar.ss.ENABLEDRAGGING','Drag\'n\'drop');
$val .= '</label>
	</div>
	';


}
$val .= '
	<div>
		<input type="radio" name="view-mode" class="view-mode" value="multiselect" id="view-mode-multiselect" />
		<label for="view-mode-multiselect">';

$val .= _t('CMSPagesController_ContentToolbar.ss.MULTISELECT','Multi-selection');
$val .= '</label>
	</div>
</div>
';

$val .= SSViewer::execute_template('CMSPagesController_ContentToolActions', $scope->getItem(), array());

$val .= '
';

