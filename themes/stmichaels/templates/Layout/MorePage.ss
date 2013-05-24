  <div id="content" class="typography">
  $SectionPage.Content

	<a href="javascript:history.go(-1)" id="backArrow"></a><h2>$Title&nbsp;</h2>
  
  <% if URLSegment = search-results %>
   <div id="cse" style="height: 600px; overflow-y: scroll;"><gcse:searchresults-only></gcse:searchresults-only></div>
    
  <% end_if %>
	<div id="more-page-scrollbox">
		$Content
		$Form
     
   
 
	</div>
	