$(document).ready(function(){
	$('#connectingscrollbox').jScrollPane({
		verticalDragMinHeight: 40,
		verticalDragMaxHeight: 40,
	});

	$('#photobox').cycle({
		fx: 	'fade',
		speed: 3800
	});
   
	$(".latest").hover(function() {
	$(this).attr("src","themes/stmichaels/images/menu/latest2.png");
	}, function() {
		$(this).attr("src","themes/stmichaels/images/menu/latest.png");
	});
	$(".honouring").hover(function() {
		$(this).attr("src","themes/stmichaels/images/menu/honouring2.png");
	}, function() {
		$(this).attr("src","themes/stmichaels/images/menu/honouring.png");
	});
	$(".following").hover(function() {
		$(this).attr("src","themes/stmichaels/images/menu/following2.png");
	}, function() {
		$(this).attr("src","themes/stmichaels/images/menu/following.png");
	});
	$(".engaging").hover(function() {
		$(this).attr("src","themes/stmichaels/images/menu/engaging2.png");
	}, function() {
		$(this).attr("src","themes/stmichaels/images/menu/engaging.png");
	});
	$("#home").hover(function() {
		$(this).attr("src","themes/stmichaels/images/menu/home2.png");
	}, function() {
		$(this).attr("src","themes/stmichaels/images/menu/home.png");
	});
});