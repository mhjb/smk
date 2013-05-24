<?php
$val .= '<div class="cms-menu cms-panel cms-panel-layout west" id="cms-menu" data-layout-type="border">
	<div class="cms-logo-header north">
		<div class="cms-logo">
			<a href="http://www.silverstripe.org/" target="_blank" title="SilverStripe (Version - ';

$val .= $scope->XML_val('CMSVersion', null, true);
$val .= ')">
				SilverStripe ';

if ($scope->hasValue('CMSVersion', null, true)) { 
$val .= '<abbr class="version">';

$val .= $scope->XML_val('CMSVersion', null, true);
$val .= '</abbr>';


}
$val .= '
			</a>
			<span>';

if ($scope->hasValue('SiteConfig', null, true)) { 
$val .= $scope->obj('SiteConfig', null, true)->XML_val('Title', null, true);

}else { 
$val .= $scope->XML_val('ApplicationName', null, true);

}
$val .= '</span>
		</div>
	
		<div class="cms-login-status">
			<a href="Security/logout" class="logout-link" title="';

$val .= _t('LeftAndMain_Menu.ss.LOGOUT','Log out');
$val .= '">';

$val .= _t('LeftAndMain_Menu.ss.LOGOUT','Log out');
$val .= '</a>
			';

$scope->obj('CurrentMember', null, true); $scope->pushScope();
$val .= '
				<span>
					';

$val .= _t('LeftAndMain_Menu.ss.Hello','Hi');
$val .= '
					<a href="';

$val .= $scope->XML_val('AbsoluteBaseURL', null, true);
$val .= 'admin/myprofile" class="profile-link ss-ui-dialog-link" data-popupclass="edit-profile-popup">
						';

if ($scope->hasValue('FirstName', null, true)&&$scope->hasValue('Surname', null, true)) { 
$val .= $scope->XML_val('FirstName', null, true);
$val .= ' ';

$val .= $scope->XML_val('Surname', null, true);

}else if ($scope->hasValue('FirstName', null, true)) { 
$val .= $scope->XML_val('FirstName', null, true);

}else { 
$val .= $scope->XML_val('Email', null, true);

}
$val .= '
					</a>
				</span>
			';


; $scope->popScope(); 
$val .= '
		</div>
	</div>
		
	<div class="cms-panel-content center">
		<ul class="cms-menu-list">
		';

$scope->obj('MainMenu', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<li class="';

$val .= $scope->XML_val('LinkingMode', null, true);
$val .= ' ';

$val .= $scope->XML_val('FirstLast', null, true);
$val .= ' ';

if ($scope->XML_val('LinkingMode', null, true)=='link') { 

}else { 
$val .= 'opened';


}
$val .= '" id="Menu-';

$val .= $scope->XML_val('Code', null, true);
$val .= '" title="';

$val .= $scope->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '">
				<a href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '" ';

if ($scope->XML_val('Code', null, true)=='Help') { 
$val .= 'target="_blank"';


}
$val .= '>
					<span class="icon icon-16 icon-';

$val .= $scope->obj('Code', null, true)->XML_val('LowerCase', null, true);
$val .= '">&nbsp;</span>
					<span class="text">';

$val .= $scope->XML_val('Title', null, true);
$val .= '</span>
				</a>
			
				';

if ($scope->XML_val('Code', null, true)=='AssetAdmin') { 
$val .= '
					<ul>
						<li class="first ';

if ($scope->obj('Top', null, true)->XML_val('class', null, true)=='AssetAdmin') { 
$val .= 'current';


}
$val .= '" id="Menu-AssetAdmin">
							<a href="admin/assets/">
								<span class="text">';

$val .= _t('AssetAdmin.EditOrgMenu','Edit &amp; organize');
$val .= '</span>
							</a>
						</li>
						<li class="last ';

if ($scope->obj('Top', null, true)->XML_val('class', null, true)=='CMSFileAddController') { 
$val .= 'current';


}
$val .= '" id="Menu-CMSFileAddController">
							<a href="admin/assets/add">
								<span class="text">';

$val .= _t('AssetAdmin.ADDFILES','Add files');
$val .= '</span>
							</a>
						</li>
					</ul>
				';


}
$val .= '
			</li>
		';


}; $scope->popScope(); 
$val .= '
		</ul>
	</div>
		
	<div class="cms-panel-toggle south">
		<a class="toggle-expand" href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#"><span>&raquo;</span></a>
		<a class="toggle-collapse" href="' . (SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . '#"><span>&laquo;</span></a>
	</div>
</div>
';

