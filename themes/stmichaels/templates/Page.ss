<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% base_tag %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Following - Sunday School</title>
<% require themedCSS(layout) %>
<% require themedCSS(jquery.jscrollpane) %>
<% require themedCSS(jquery.jscrollpane.lozenge) %>
<% require themedCSS(typography) %>
<% require themedCSS(followinglayout) %>
<% require javascript(sapphire/thirdparty/jquery/jquery.js) %>
<% require javascript(themes/stmichaels/js/jquery.mousewheel.js) %>
<% require javascript(themes/stmichaels/js/jquery.jscrollpane.min.js) %>
<% require javascript(themes/stmichaels/js/jquery.cycle.lite.js) %>

<% require javascript(themes/stmichaels/js/stmichaels.js) %>

<style type="text/css">
<!--
#bibleapDiv {
	position:absolute;
	left:760px;
	top:533px;
	width:256px;
	height:163px;
	z-index:1;
	margin-left: 150px;
}
#apDiv1 {
	position:absolute;
	left:261px;
	top:576px;
	width:146px;
	height:133px;
	z-index:2;
}
a:link {
	color: #a4998c;
}

a:visited {
	color: #aeb8d1;
}
a:hover {
	color: #aeb8d1;
}
-->
</style>
</head>

<body class="highlight">
	<div id="box">
		<!-- these are to aid styling -->
		<div id="box-top">&nbsp;</div><div id="box-bottom">&nbsp;</div>
		<div id="menu">
			<a href="latest"><img src="$ThemeDir/images/menu/latest.png" alt="latest" name="latest" width="39" height="15" border="0" class="latest" id="latest" title="Latest happenings..."/></a>
			<a href="honouring"><img src="$ThemeDir/images/menu/honouring.png" alt="honouring" name="honouring" width="82" height="20" border="0" class="honouring" id="honouring" title="Our Services"/></a>
			<a href="following" ><img src="$ThemeDir/images/menu/following2.png" alt="following" name="following" width="75" height="20" border="0" class="following" id="following" title="Our Study groups and pastoral care matters" /></a>
			<a href="engaging"><img src="$ThemeDir/images/menu/engaging.png" alt="engaging" name="engaging" width="72" height="19" border="0" class="engaging" id="engaging" title="Local and global mission"/></a>
			<a href="connecting" ><img src="$ThemeDir/images/menu/connecting.png" alt="connecting" name="connecting" width="89" height="19" border="0" class="connecting" id="connecting" title="How to get in touch and our friends"/></a>
			<a href="main"><img src="$ThemeDir/images/menu/home.png" alt="home" width="45" height="15" border="0" class="latest" id="home" title="For in case you get lost..."/></a>
		</div>
		<% if SlideshowImages %>
		<div id="photobox">
			<% control SlideshowImages %>
			<img src="$URL" width="900" height="300" alt="following slideshow" />
			<% end_control %>
		</div>
		<% end_if %>
		<div id="titlebox">
			<img src="$ThemeDir/images/followingtext.png" alt="Quote from D" width="888" height="80" border="0" usemap="#Map" class="titlealignment" />
			<map name="Map" id="Map" title="Click to find out more about Dietrich Bonhoeffer">
			<area shape="rect" coords="165,60,313,80" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer" alt="Bonhoffer" />
			</map>
		</div>
  <div id="content">
  <h1>On following the living Jesus, Bonhoeffer also wrote... (<a href="popup">more</a>)</h1>

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
	<% end_if %>
	
	<div id="rightcontent">
		<h2>$Title</h2>
		<div id="followscrollbox">
			$Content
		</div>
      </div>
    </div>

	  <div id="morecontent"><img src="$ThemeDir/images/connecting/snail.jpg" width="900" height="38" alt="snail" />
	  </div>

  </div>

</div>
<div id="footer">
  <div class="footertext" id="footerleft"> &copy; Copyright of St Michael's Anglican Church, Kelburn, Wellington, NZ, $Now.Year.<br />
Designed by <a class="nolink" href="http://www.lily.emo.co.nz">Lily Emo</a>.</div>
  <div class="footertext" id="footersegments"><a class="nolink" href="sitemap.html" >Site Map</a></div>
  <div id="footerright">
    <div id="searchwrapper">
      <form action="">
        <input type="text" class="searchbox" name="s" value="" />
        <input type="image" src="$ThemeDir/images/blank.png" class="searchbox_submit" value="" />
      </form>
    </div>
  </div>
</div></body>
</html>
