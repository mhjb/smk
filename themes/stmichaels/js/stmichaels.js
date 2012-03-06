
$(document).ready(function(){
	$("body").css("display", "none");
    $("body").fadeIn(333);


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
	
	//This is kinda ugly, but the 'More' links on the section pages have already got the 'small' class
	//If JS is disabled, the link will be followed as normal. 
	$("a.small").click(function(event){
        event.preventDefault();
		$('.typography h5').fadeTo('100', 0);
		$('.moreText').fadeIn(100);		
	});	
	
	$("h6 a").click(function(event){
        event.preventDefault();
		$('.typography h5').fadeTo('100', 0);
		$('.typography h6').fadeTo('100', 0);
		$('.moreText').fadeIn(100);		
	});	
	
	$('#content').mouseleave(function(){
		$('.moreText').fadeOut(100);
		$('.typography h5').fadeTo('100', 1);
		$('.typography h6').fadeTo('100', 1);
	});
	
});