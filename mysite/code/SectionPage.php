<?php

class SectionPage extends RedirectorPage {
	public static $db = array(
		"MoreText" => "HTMLText"
	);
	
	
	/**
	 * Update CMS
	 */
	function getCMSFields() {
		$fields = Page::getCMSFields();
		$fields->addFieldToTab('Root.Main', new TextField('MoreText'), 'Content');
		return $fields;
	}
	
	/**
	 * Override redirection link
	 */
	function redirectionLink() {
		if(($children = $this->Children()) && ($first = $children->First())) {
			return $first->Link();
		}
	}
	
  /*  
	function GMGSlideshowImages() {
		$folder = File::find('section-photos/engaging/global-mission-group');
		if($folder) {		
			return DataObject::get("Image","\"ParentID\" = $folder->ID");
		}
	}
	
	function SlideshowImages() {
		$folder = File::find('section-photos/' . $this->URLSegment);    
		if($folder) {
			return DataObject::get("Image","\"ParentID\" = $folder->ID");
		}
	}
  
  */

}

class SectionPage_Controller extends RedirectorPage_Controller {
}
