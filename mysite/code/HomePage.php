<?php

class HomePage extends Page {
	static $has_many = array(
		"Words" => "HomePageWord",
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		// if($this->ID) {
		// 	$wordTable = new TableField(
		// 		'Words', // fieldName
		// 		'HomePageWord', // sourceType
		// 		array(
		// 			'Word'=>'Word',
		// 			'Blurb'=>'Blurb'
		// 		), // fieldList
		// 		array(
		// 			'Word'=>'TextField',
		// 			'Blurb'=>'TextareaField'
		// 		), // fieldTypes
		// 		null, // filterField (legacy)
		// 		"HomePageWord.PageID",
		// 		$this->ID
		// 	);
		// 	// add some HiddenFields thats saved with each new row
		// 	$wordTable->setExtraData(array(
		// 	  'PageID' => $this->ID ? $this->ID : '$RecordID'
		// 	));
		// 	$fields->addFieldToTab('Root.Content.Main', $wordTable);
		// }

		if($this->ID) {
			$gridFieldConfig = new GridFieldConfig_RecordEditor();
			$list = $this->Words();
	        $gridField = new GridField('Words', 'Word', $list, $gridFieldConfig);
	        $fields->addFieldToTab('Root.Words', $gridField);
		}
		
		return $fields;
	}
	
	function SlideshowImages() {
		$folder = File::find('section-photos/' . $this->URLSegment);
		if($folder) {
			return Image::get()->where("\"ParentID\" = $folder->ID");
		}
	}
	function SectionPage() {
		return $this;
	}
	
}
class HomePage_Controller extends Page_Controller {
	
}

class HomePageWord extends DataObject {
	static $db = array(
		"Word" => "Varchar",
		"Blurb" => "Text",
	);
	static $has_one = array(
		"Page" => "HomePage",
	);

	public function getCMSFields(){
		$fields = new FieldList();
		
		$fields->push(new TextField('Word', 'Word'));
		$fields->push(new TextareaField('Blurb', 'Blurb'));
		
		return $fields;
	}
	
	public static $summary_fields = array(
		'Word'
	);
}
