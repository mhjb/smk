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
    
    $folders = DataObject::get( 
		  $name = 'File', 
		  $filter = "ClassName = 'folder' and Filename like 'assets/pdfs/$this->URLSegment/%'", 
		  $sort = "Created DESC", 
		  $join = "", 
		  $limit = "" 
	  );
    $folderArr = $folders->toArray();
    
    $files = DataObject::get( 
		  $name = 'File', 
		  $filter = "ClassName = 'file' and Filename like 'assets/pdfs/$this->URLSegment/%'", 
		  $sort = "Filename ASC", 
		  $join = "", 
		  $limit = "" 
	  );    
    
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
        $html .= "<li>Other</li><ul>";
        foreach ($filesArr as $file){    
          if(substr_count($file->Filename, '/') < $maxdepth)
            $html .= "<li class='pdfLink'><a href='" . $file->Filename . "'>" . substr($file->Name, 0, -4) . "</a></li>";
          
        }
        $html .= "</html>";
      }
    }    
    
    return "<ul class='fileList'>" . $html . "</ul>";
    

  }
  
  /*
  function FolderList() {
		return DataObject::get( 
		  $name = 'Folder', 
		  $filter = "ClassName = 'folder' and Filename like 'assets/pdfs/$this->URLSegment/%/'", 
		  $sort = "Created DESC", 
		  $join = "", 
		  $limit = "" 
	   ); 
	}
  
  
  	<% else_if FolderList %> 
		<ul class="pdflist"> 
		  <% control FolderList %> 
        <li><a href="$Filename">$Title.XML</a></li>
        <ul>
        <% control FileList %> 
          <li><a href="$Filename">$Title.XML</a></li>
        <% end_control %> 
        </ul>
      <% end_control %> 
		</ul> 
	<% end_if %>	
  
  		<ul class="pdflist"> 
		  <% control FileList %>      
        <li><a href="$Filename">$ClassName $Title.XML</a></li>
      <% end_control %> 
		</ul> 
  
  */




  
	
}
class LatestSubPage_Controller extends ContentController {
	
}
