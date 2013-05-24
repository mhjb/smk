<?php
$val .= '<div id="content" class="typography">
	<div class="moreText">
		';

$val .= $scope->obj('SectionPage', null, true)->XML_val('MoreText', null, true);
$val .= '
	</div>
   ';

$val .= $scope->obj('SectionPage', null, true)->XML_val('Content', null, true);
$val .= '

  
	
	';

if ($scope->hasValue('Menu', array('2'), true)) { 
$val .= '
	<div id="leftcontent">
		<ul>
		';

$scope->obj('Menu', array('2'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		';

if ($scope->XML_val('LinkOrCurrent', null, true)=='current') { 
$val .= '
			<li class="highlight">';

$val .= $scope->XML_val('MenuTitle', null, true);
$val .= '</li>
		';


}else { 
$val .= '
			<li><a href="';

$val .= $scope->XML_val('Link', null, true);
$val .= '">';

$val .= $scope->XML_val('MenuTitle', null, true);
$val .= '</a></li>
		';


}
$val .= '
		';


}; $scope->popScope(); 
$val .= '
		</ul>
	</div>
	<div id="rightcontent">
		
				
		<h2>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</h2>

		<div id="followscrollbox">
			';

$val .= $scope->XML_val('Content', null, true);
$val .= '
		</div>
    </div>
	';


}else { 
$val .= '
	<h2>';

$val .= $scope->XML_val('Title', null, true);
$val .= '</h2>
	';

$val .= $scope->XML_val('Content', null, true);
$val .= '
	';

if (($partial = $cache->load('1ec4b3c923d4d12f700b80f5c3576b0f92b2529d_'.sha1('sitemap_page'.'_'.$scope->XML_val('ID', null, true).'_'.$scope->obj('List', array('Page'), true)->XML_val('Max', array('LastEdited'), true)).'_1'))) $val .= $partial;
else { $oldval = $val; $val = "";
$val .= '
		';

if ($scope->hasValue('Sitemap', null, true)) { 
$val .= '
			<div id="Sitemap">';

$val .= $scope->XML_val('Sitemap', null, true);
$val .= '</div>
		';


}
$val .= '
	';


 $cache->save($val); $val = $oldval . $val;
}
$val .= '
	';

$val .= $scope->XML_val('Form', null, true);
$val .= '
	';


}
$val .= '
	

';

