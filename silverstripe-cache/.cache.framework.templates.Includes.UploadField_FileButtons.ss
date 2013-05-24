<?php
if ($scope->hasValue('canEdit', null, true)) { 
$val .= '
	<button class="ss-uploadfield-item-edit ss-ui-button ui-corner-all" title="';

$val .= _t('UploadField.EDITINFO','Edit this file');
$val .= '" data-icon="pencil">
	';

$val .= _t('UploadField.EDIT','Edit');
$val .= '
	<span class="toggle-details">
		<span class="toggle-details-icon"></span>
	</span>

	</button>
	';

if ($scope->hasValue('UploadFieldHasRelation', null, true)) { 
$val .= '
	<button data-href="';

$val .= $scope->XML_val('UploadFieldRemoveLink', null, true);
$val .= '" class="ss-uploadfield-item-remove ss-ui-button ui-corner-all" title="';

$val .= _t('UploadField.REMOVEINFO','Remove this file from here, but do not delete it from the file store');
$val .= '" data-icon="plug-disconnect-prohibition">
	';

$val .= _t('UploadField.REMOVE','Remove');
$val .= '</button>
';


}
$val .= '
';


}
$val .= '
';

if ($scope->hasValue('canDelete', null, true)) { 
$val .= '
	<button data-href="';

$val .= $scope->XML_val('UploadFieldDeleteLink', null, true);
$val .= '" class="ss-uploadfield-item-delete ss-ui-button ui-corner-all" title="';

$val .= _t('UploadField.DELETEINFO','Permanently delete this file from the file store');
$val .= '" data-icon="minus-circle">';

$val .= _t('UploadField.DELETE','Delete from files');
$val .= '</button>
';


}
$val .= '

';

