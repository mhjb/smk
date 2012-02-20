$(document).ready(function(){
	$('#followscrollbox').jScrollPane({
		verticalDragMinHeight: 40,
		verticalDragMaxHeight: 40,
	});

	$('#photobox').cycle({
		fx: 	'fade',
		speed: 3800
	});
	
	$("#menu a img[hoversrc]").each(function() {
		var $img = $(this);
		$img.attr('nonhoversrc', $img.attr('src'));
		$img.hover(function() {
			$img.attr('src',$img.attr('hoversrc'));
		}, function() {
			$img.attr('src',$img.attr('nonhoversrc'));
		});
	});
});