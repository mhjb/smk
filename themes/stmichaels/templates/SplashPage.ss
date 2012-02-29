<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$MetaTitle</title>
<style type="text/css">
<!--
body {
	background: #d1d1d1;
	margin: 0px;
}
#content {
	height: 780px;
	width: 1035px;
	margin-right: auto;
	margin-left: auto;
	background: url($ThemeDir/images/backgroundwithshadow.png) no-repeat center 1px;
}
.welcomeimage {
	margin-left: 17px;
	margin-top: 15px;
}
.click {
	margin-top: 770px;
	margin-left: 800px;
}
#apDiv1 {
	position:absolute;
	left:975px;
	top:777px;
	width:187px;
	height:25px;
	z-index:1;
}
#KOHEnglish {
	position:absolute;
	left:370px;
	top:533px;
	width:495px;
	height:175px;
	z-index:2;
	visibility: hidden;
}
#KOHMaori {
	position:absolute;
	left:586px;
	top:342px;
	width:480px;
	height:168px;
	z-index:3;
	visibility: hidden;
}
-->
</style>
<% require javascript(sapphire/thirdparty/jquery/jquery.js) %>
</head>

<body>
<div id="content";>
<img src="$ThemeDir/images/titleimage.jpg" alt="St Michael's  Welcome Page" width="1000" height="751" border="0" usemap="#Map2" class="welcomeimage" />
<map name="Map2" id="Map2">
  <area shape="rect" coords="294,134,709,457" href="main/" alt="Enter to St Mic's Website" />
  <area shape="circle" coords="883,506,32" onmouseover="$.prettyPhoto.open('$ThemeDir/images/kingdom-of-heaven-maori.jpg')"/>
  <area shape="poly" coords="616,634,647,632,649,652,641,665,667,713,646,722,608,706,575,672,547,683,524,656,563,650,580,617,590,614,615,634" onmouseover="$.prettyPhoto.open('$ThemeDir/images/kingdom-of-heaven-english.png')" />
</map>
</div>
</body>
</html>
