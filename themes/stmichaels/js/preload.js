
$.fn.preload = function() {
    this.each(function(){
        $('<img/>')[0].src = this;
    });
}

$(document).ready(function(){
  $(['themes/stmichaels/images/kingdom-of-heaven-maori.jpg', 
    'themes/stmichaels/images/kingdom-of-heaven-english.png', 
    'themes/stmichaels/images/snailtalkfollowing.png',
    'themes/stmichaels/images/snailtalkconnecting.png',
    'themes/stmichaels/images/ChurchEastEnd.jpg',
    'themes/stmichaels/images/flag.png',
    'themes/stmichaels/images/ssign.png',
    'themes/stmichaels/images/streetsign.png',
    'themes/stmichaels/images/snailtalkconnecting.png']).preload();
});	

 