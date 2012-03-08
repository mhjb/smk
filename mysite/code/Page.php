<?php
class Page extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);
	
	/**
	 * Return the SectionPage that this belongs to
	 */
	function SectionPage() {
		$parent = $this;
		while($parent && $parent->ID && !($parent instanceof SectionPage)) $parent = $parent->Parent();		
		if($parent && $parent->ID) return $parent;	
	}
	
	/**
	 * Return the title of the SectionPage this belongs to
	 */
	function SectionTitle(){
		$parent = $this;
		while($parent && $parent->ID && !($parent instanceof SectionPage)) $parent = $parent->Parent();		
		if($parent && $parent->ID) return $parent->title;		
	}

	function PageTitle() {
		return $this->title;
	}
	
	function SlideshowImages() {	
		
		if($s = $this->SectionPage()) return $s->SlideshowImages();
	}
	
	function setPPtheme(){	
		if($this->title == 'Taonga')
			$pptheme = "dark_square";
		else $pptheme = "stmichaels";
		PrettyPhoto::set_theme($pptheme);	
	}
	
			

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
/*		Requirements::themedCSS('layout'); 
		Requirements::themedCSS('typography'); 
		Requirements::themedCSS('form');  */
		
		//not sure if this is in the right place but it seems to work:		
		Page::setPPtheme();
		//PrettyPhoto::set_theme($pptheme);
		PrettyPhoto::include_code();
	}
}
