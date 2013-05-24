<?php
class LatestSubPage extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);

	function FileList() {
    $html = '';
    $maxdepth = 1;
    $depth = 0;
    
    $folders = File::get()->where("ClassName = 'folder' and Filename like 'assets/pdfs/$this->URLSegment/%'")->sort("Created DESC");
    $folderArr = $folders->toArray();
     
    $files = File::get()->where("ClassName = 'file' and Filename like 'assets/pdfs/$this->URLSegment/%'")->sort("Filename ASC");
    $filesArr = $files->toArray();
    
    foreach ($folderArr as $folder){
      if($folder->Name != $this->URLSegment){
        $depth = substr_count($folder->Filename, '/');
        if($depth > $maxdepth)  $maxdepth = $depth;
        $html .= "<li>" . $folder->Name . "</li>";
        $html .= "<ul>";
        foreach ($filesArr as $file){        
          if(strstr($file->Filename, $folder->Name)) 
            $html .= "<li class='pdfLink'><a href=\"" . $file->Filename . "\">" . substr($file->Name, 0, -4) . "</a></li>";        
          
        }      
        $html .= "</ul>";
      }
      if($folder->Name == $this->URLSegment){ //that is, if in root directory
        
        $count_other_files = 0; 
        foreach ($filesArr as $file){    
          if(substr_count($file->Filename, '/') < $maxdepth){
            $count_other_files++;
            if($count_other_files == 1) $html .= "<li>Other</li><ul>";
            $html .= "<li class='pdfLink'><a href='" . $file->Filename . "'>" . substr($file->Name, 0, -4) . "</a></li>";
          }
        }
        if($count_other_files) $html .= '</ul>';
      }
    }    
    
    return "<ul class='fileList'>" . $html . "</ul>";
  }
	
}

class LatestSubPage_Controller extends ContentController {
	
}
