<div id="content" class="typography">
	<div class="moreText">
		$SectionPage.MoreText
	</div>
   $SectionPage.Content

  
	
	<% if Menu(2) %>
	<div id="leftcontent">
		<ul>
		<% control Menu(2) %>
		<% if LinkOrCurrent = current %>
			<li class="highlight">$MenuTitle</li>
		<% else %>
			<li><a href="$Link">$MenuTitle</a></li>
		<% end_if %>
		<% end_control %>
		</ul>
	</div>
	<div id="rightcontent">
		
				
		<h2>$Title</h2>

		<div id="followscrollbox">
			$Content
		</div>
    </div>
	<% else %>
	<h2>$Title</h2>
	$Content
	$Form
	<% end_if %>
	

