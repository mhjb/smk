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

$val .= $scope->XML_val('Form', null, true);
$val .= '
	';


}
$val .= '
	

';

