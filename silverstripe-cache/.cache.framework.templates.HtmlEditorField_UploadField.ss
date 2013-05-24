<?php
$val .= '<div class="ss-uploadfield-item ss-uploadfield-addfile field ss-uploadfield">

	<h4>
		<span class="step-label">
			<span class="flyout">1</span><span class="arrow"></span>
			<span class="title">';

$val .= _t('AssetUploadField.ChooseFiles','Choose files');
$val .= '</span>
		</span>
	</h4>

	<div class="ss-uploadfield-item-info">
		<label class="ss-uploadfield-fromcomputer ss-ui-button ss-ui-action-constructive" title="';

$val .= _t('AssetUploadField.FROMCOMPUTERINFO','Upload from your computer');
$val .= '" data-icon="drive-upload">
			';

$val .= _t('AssetUploadField.TOUPLOAD','Choose files to upload...');
$val .= '
			<input id="';

$val .= $scope->XML_val('id', null, true);
$val .= '" name="';

$val .= $scope->XML_val('getName', null, true);
$val .= '" class="';

$val .= $scope->XML_val('extraClass', null, true);
$val .= ' ss-uploadfield-fromcomputer-fileinput" data-config="';

$val .= $scope->XML_val('configString', null, true);
$val .= '" type="file"';

if ($scope->hasValue('multiple', null, true)) { 
$val .= ' multiple="multiple"';


}
$val .= ' title="';

$val .= _t('AssetUploadField.FROMCOMPUTER','Choose files from your computer');
$val .= '" />
		</label>

		<div class="clear"><!-- --></div>
	</div>
	<div class="ss-uploadfield-item-uploador">
		';

$val .= _t('AssetUploadField.UPLOADOR','OR');
$val .= '
	</div>
	<div class="ss-uploadfield-item-preview ss-uploadfield-dropzone">
		<div>
			<span>';

$val .= _t('AssetUploadField.DRAGFILESHERE','Drag files here');
$val .= '</span>
		</div>
	</div>
	<div class="clear"><!-- --></div>
</div>

<div class="ss-uploadfield-editandorganize">
	<ul class="ss-uploadfield-files files"></ul>
</div>';

