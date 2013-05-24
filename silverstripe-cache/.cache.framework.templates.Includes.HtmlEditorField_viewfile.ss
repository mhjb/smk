<?php
$val .= '<div class="ss-uploadfield-item ';

$val .= $scope->XML_val('appCategory', null, true);
$val .= ' ss-htmleditorfield-file template-upload" data-id="';

$val .= $scope->obj('File', null, true)->XML_val('ID', null, true);
$val .= '" data-url="';

$val .= $scope->XML_val('URL', null, true);
$val .= '">
	
	
	<div class="ss-uploadfield-item-preview">
		';

if ($scope->hasValue('Width', null, true)) { 
$val .= '
			<span>';

$val .= $scope->obj('Preview', null, true)->XML_val('SetRatioSize', array('30', '40'), true);
$val .= '</span>
		';


}else { 
$val .= '
		<span class="no-preview"></span>
		';


}
$val .= '
	</div>
	
	<div class="ss-uploadfield-item-info">
		<label class="ss-uploadfield-item-name">
			<span class="name" title="';

$val .= $scope->XML_val('Name', null, true);
$val .= '">
				';

$val .= $scope->XML_val('Name', null, true);
$val .= '
			</span>
			';

if ($scope->hasValue('Width', null, true)) { 
$val .= '
			<div class="ss-uploadfield-item-status ui-state-success-text" title="';

$val .= _t('UploadField.Dimensions','Dimensions');
$val .= '">
				';

$val .= $scope->XML_val('Width', null, true);
$val .= ' x ';

$val .= $scope->XML_val('Height', null, true);
$val .= ' (px)
			</div>
			';


}
$val .= '

			<div class="clear"><!-- --></div> 
		</label>
		<div class="ss-uploadfield-item-actions">	
			<div class="ss-uploadfield-item-cancel cancel">
				<button data-icon="deleteLight" class="ss-uploadfield-item-cancel ss-uploadfield-item-remove" title="';

$val .= _t('UploadField.REMOVE','Remove');
$val .= '">
					';

$val .= _t('UploadField.REMOVE','Remove');
$val .= '
				</button></div>
				
				<div class="ss-uploadfield-item-edit edit">
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
				</div>
			</div>
		</div>
		';

if ($scope->hasValue('Info', null, true)) { 
$val .= '<div class="info">';

$val .= $scope->XML_val('Info', null, true);
$val .= '</div>';


}
$val .= '
		<div class="details ss-uploadfield-item-editform loading">
			<fieldset>
				';

$scope->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					';

$val .= $scope->XML_val('FieldHolder', null, true);
$val .= '
				';


}; $scope->popScope(); 
$val .= '
			</fieldset>
		</div>
	</div>
</div>
';

