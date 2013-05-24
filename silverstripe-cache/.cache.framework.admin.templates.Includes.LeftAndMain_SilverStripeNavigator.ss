<?php
$val .= '<div class="cms-navigator">
	<a href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#" class="ss-ui-button cms-preview-toggle-link" data-icon="preview">
		&laquo; ';

$val .= _t('SilverStripeNavigator.Edit','Edit');
$val .= '
	</a>
	<ul class="cms-preview-states">
		';

$scope->obj('Items', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<li class="';

if ($scope->hasValue('isActive', null, true)) { 
$val .= ' active';


}
$val .= '">';

$val .= $scope->XML_val('HTML', null, true);
$val .= '
				';

if ($scope->hasValue('Watermark', null, true)) { 
$val .= '<span class="cms-preview-watermark">';

$val .= $scope->XML_val('Watermark', null, true);
$val .= '</span>';


}
$val .= '
			</li>
		';


}; $scope->popScope(); 
$val .= '
	</ul>
</div>
';

