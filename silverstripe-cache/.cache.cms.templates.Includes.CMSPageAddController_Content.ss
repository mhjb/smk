<?php
$val .= '<div class="cms-content center ';

$val .= $scope->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content">
	';

$scope->obj('AddForm', null, true); $scope->pushScope();
$val .= '
		<form ';

$val .= $scope->XML_val('FormAttributes', null, true);
$val .= ' data-layout-type="border">
			<div class="cms-content-header north">
				<div class="cms-content-header-info">
					<h2>';

$val .= _t('CMSAddPageController.Title','Add page');
$val .= '</h2>
				</div>
			</div>
	
			<div class="cms-content-fields center cms-panel-content cms-panel-padded">
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
				</div>
				';


}
$val .= '
			</div>
		</form>
	';


; $scope->popScope(); 
$val .= '
</div>
';

