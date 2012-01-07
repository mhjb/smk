$(document).ready(function() {

$('#values a')
	.mouseover(function() {
		$('#values-blurb').html($(this).attr('title'));
	})
	.mouseout(function() {
		$('#values-blurb').html("");
	});
	
})
