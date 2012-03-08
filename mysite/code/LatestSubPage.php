<?php
class LatestSubPage extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);

	function FileList() {
	
		return DataObject::get( 
		  $name = 'File', 
		  $filter = "ClassName = 'file' and Filename like 'assets/pdfs/$this->URLSegment/%'", 
		  $sort = "Created DESC", 
		  $join = "", 
		  $limit = "" 
	   ); 
	}

	
	
}
class LatestSubPage_Controller extends ContentController {
	
}
