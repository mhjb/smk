<?php
$val .= '<div id="footer" class="typography">
	<div class="footertext" id="footerleft"> &copy; ';

$val .= $scope->obj('Now', null, true)->XML_val('Year', null, true);
$val .= ' St Michael&rsquo;s Anglican Church, Kelburn, Wellington, New Zealand. <br />
	Designed by <a class="nolink" href="http://www.lilyemo.co.nz">Lily Emo</a>. Implemented by Bartlett Projects. 
	</div>
	
	

	<div class="footertext" id="footersegments">
	 <a class="nolink" href="';

$val .= $scope->XML_val('getSitemapLink', null, true);
$val .= '" >Site Map</a>  
 </div>
	<div class="footertext" id="footerright" style="text-align:right">
<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script>
(function() {
  var cx = \'008170750961698131942:knntxsefvjw\'; // Insert your own Custom Search engine ID here
  var gcse = document.createElement(\'script\'); gcse.type = \'text/javascript\'; gcse.async = true;
  gcse.src = (document.location.protocol == \'https\' ? \'https:\' : \'http:\') +
      \'//www.google.com/cse/cse.js?cx=\' + cx;
  var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(gcse, s);
})();
</script>

<!-- Place this tag where you want both of the search box and the search results to render -->
<gcse:searchbox-only resultsUrl="search-results"></gcse:searchbox-only>

<style type="text/css">
.gsc-search-box-tools .gsc-search-box .gsc-input {
padding-right: 7px;
}
 
	input.gsc-input, .gsc-input-box, .gsc-input-box-hover, .gsc-input-box-focus {
		border-color: #D9D9D9;
	}
	input.gsc-search-button, input.gsc-search-button:focus {
		border-color: #9EA8C1;
		background-color: #9EA8C1;
		background-image: none;
		filter: none;
	}
	
	input.gsc-search-button, input.gsc-search-button-v2 {
		padding: 5px 10px;
	}
	
	input.gsc-search-button:hover {
	background-color: #005595;
	background-image: none; 
	}
	
	</style>





	</div> 
	<div id="cse" style="width:100%;"></div> 
</div>';

