<?php

class SectionPage extends RedirectorPage {
	public static $db = array(
		"BottomContent" => "HTMLText"
	);
	
	/**
	 * Update CMS
	 */
	function getCMSFields() {
		$fields = Page::getCMSFields();
		$fields->addFieldToTab('Root.Content.Main', new TextField('BottomContent'), 'Content');
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
	
	function SlideshowImages() {
		$folder = File::find('section-photos/' . $this->URLSegment);
		if($folder) {
			return DataObject::get("Image","\"ParentID\" = $folder->ID");
		}
	}
}

class SectionPage_Controller extends RedirectorPage_Controller {
}