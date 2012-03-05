$(document).ready(function() {

$('#values span	')
	.mouseover(function() {
		$('#values-blurb').html($(this).attr('title'));
		$(this).attr('title','');
		$('#titlecontent').css("visibility", "hidden");		
	})
	.mouseout(function() {
		$(this).attr('title', $('#values-blurb').html());
		$('#values-blurb').html("");
		$('#titlecontent').css("visibility", "visible");
	});
	
})
