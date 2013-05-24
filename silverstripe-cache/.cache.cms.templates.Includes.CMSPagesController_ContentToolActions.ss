<?php
$val .= '<div class="cms-actions-row">
	<a class="cms-page-add-button ss-ui-button ss-ui-action-constructive" data-icon="add" href="';

$val .= $scope->XML_val('LinkPageAdd', null, true);
$val .= '" data-url-addpage="';

$val .= $scope->XML_val('LinkPageAdd', array('?ParentID=%s'), true);
$val .= '">';

$val .= _t('CMSMain.AddNewButton','Add new');
$val .= '</a>
</div>

<div class="cms-content-batchactions">
	';

$val .= $scope->XML_val('BatchActionsForm', null, true);
$val .= '
</div>';

