<?php
/**
 * Defines the MorePage page type
 */
 
class MorePage extends SiteTree {
   static $db = array(
   );
   static $has_one = array(
   );
}
 
class MorePage_Controller extends ContentController {
	public function init() {
		parent::init();
		
		PrettyPhoto::set_theme('stmichaels');	
		PrettyPhoto::include_code();
	}	
}