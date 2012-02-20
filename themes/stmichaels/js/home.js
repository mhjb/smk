$(document).ready(function() {

$('#values span	')
	.mouseover(function() {
		$('#values-blurb').html($(this).attr('title'));
		$(this).attr('title','');
	})
	.mouseout(function() {
		$(this).attr('title', $('#values-blurb').html());
		$('#values-blurb').html("");
	});
	
})
