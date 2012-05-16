  <div id="content" class="typography">
  $SectionPage.Content

	<a href="javascript:history.go(-1)" id="backArrow"></a><h2>$Title&nbsp;</h2>
  
  <% if URLSegment = search-results %>
   <div id="cse" style="height: 600px; overflow-y: scroll;">Loading</div>
    <script src="http://www.google.com/jsapi" type="text/javascript"></script>
    <script type="text/javascript"> 
      google.load('search', '1', {language : 'en',});
      google.setOnLoadCallback(function() {
        var customSearchOptions = {};  var customSearchControl = new google.search.CustomSearchControl(
          '008170750961698131942:knntxsefvjw', customSearchOptions);
        customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
        customSearchControl.draw('cse');
        function parseParamsFromUrl() {
          var params = {};
          var parts = window.location.search.substr(1).split('\x26');
          for (var i = 0; i < parts.length; i++) {
            var keyValuePair = parts[i].split('=');
            var key = decodeURIComponent(keyValuePair[0]);
            params[key] = keyValuePair[1] ?
                decodeURIComponent(keyValuePair[1].replace(/\+/g, ' ')) :
                keyValuePair[1];
          }
          return params;
        }

        var urlParams = parseParamsFromUrl();
        var queryParamName = "q";
        if (urlParams[queryParamName]) {
          customSearchControl.execute(urlParams[queryParamName]);
        }
      }, true);
    </script>
  <% end_if %>
	<div id="more-page-scrollbox">
		$Content
		$Form
     
   
 
	</div>
	