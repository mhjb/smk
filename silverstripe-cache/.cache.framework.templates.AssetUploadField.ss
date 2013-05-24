<?php
$val .= '<div class="ss-uploadfield-item ss-uploadfield-addfile field">

	<h3>
		<span class="step-label">
			<span class="flyout">1</span><span class="arrow"></span>
			<span class="title">';

$val .= _t('AssetUploadField.ChooseFiles','Choose files');
$val .= '</span>
		</span>
	</h3>

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
			';

$val .= _t('AssetUploadField.DROPAREA','Drop Area');
$val .= '
			<span>';

$val .= _t('AssetUploadField.DRAGFILESHERE','Drag files here');
$val .= '</span>
		</div>
	</div>
	<div class="clear"><!-- --></div>
</div>

<div class="ss-uploadfield-editandorganize">
	<h3>
		<span class="step-label">
			<span class="flyout">2</span><span class="arrow"></span>
			<span class="title">';

$val .= _t('AssetUploadField.EDITANDORGANIZE','Edit & organize');
$val .= '</span>
		</span>
	</h3>
	<div class="fileOverview">
		<div class="uploadStatus">
			<div class="state">';

$val .= _t('AssetUploadField.UPLOADINPROGRESS','Please wait… upload in progress');
$val .= '</div>
			<div class="details">';

$val .= _t('AssetUploadField.TOTAL','Total');
$val .= ': 
				<span class="total"></span> ';

$val .= _t('AssetUploadField.FILES','Files');
$val .= ' 
				<span class="fileSize"></span> 
			</div>
		</div>		
		<div class="ss-uploadfield-item-actions">
		<button class="ss-uploadfield-item-edit-all ss-ui-button ui-corner-all" title="';

$val .= _t('AssetUploadField.EDITINFO','Edit files');
$val .= '" style="display:none;">
			';

$val .= _t('AssetUploadField.EDITALL','Edit all');
$val .= '
				<span class="toggle-details-icon"></span>
		</button>
		</div>
	</div>
	<ul class="ss-uploadfield-files files"></ul>
</div>';

