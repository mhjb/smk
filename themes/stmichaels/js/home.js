$(document).ready(function(){

	var title = $('#titlecontent'); //speedier to use vars if you're going to call more than once
	var blurb = $('#values-blurb');

	//fade blurb and title in and out
	// $('#values').mouseover(function(){
	// 		title.fadeTo('60', 0);
	// 		blurb.fadeTo('60', 1);
	// 	}).mouseleave(function(){
	// 		title.fadeTo('60', 1);
	// 		blurb.fadeTo('60', 0);
	// 	});

	// $('#values').mouseover(function(){
	// 		title.fadeTo('80', 0);
	// 		blurb.fadeTo('80', 1);
	// 	}).mouseleave(function(){
	// 		title.fadeTo('80', 1);
	// 		blurb.fadeTo('80', 0);
	// 	});
	
	$('#values').hover(function(){
		title.fadeTo('100', 0);
		blurb.stop(true, true).fadeTo('100', 1);
	},function(){
		title.stop(true, true).fadeTo('100', 1);
		blurb.fadeTo('100', 0);
	});

	//switch correct content into blurb
	$('#values span	').mouseover(function() {
			blurb.html($(this).attr('title'));
			$(this).attr('title','');
		}).mouseout(function() {
			$(this).attr('title', $('#values-blurb').html());
			//$('#values-blurb').html("");
		}); 
	
});
	
