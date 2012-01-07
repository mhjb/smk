<% require themedCSS(home) %>
<% require javascript(sapphire/thirdparty/jquery/jquery.js) %>
<% require javascript(themes/stmichaels/js/home.js) %>
  
	<div id="values">
		<% control Words %><a href="#" title="$Blurb">$Word</a><% end_control %>
	</div>
	<div id="values-blurb"></div>
	<!--
	<a href="#" class="biblicalshow" title="deeply immersed in the great themes of the Bible, which show us what living as the people of God means; thoroughly knowledgeable of scripture,including the detailed complexity and richness of the text. Together, we wrestle with Gods Word to us and are hungry for His wisdom.">
		<img src="$ThemeDir/images/values/biblical.png" alt="biblical" width="71" height="17" border="0" class="valuecorrection" id="biblical" />
	<a href="#" class="tip_trigger"><img src="$ThemeDir/images/values/missional.png" alt="missional" width="89" height="17" class="valuecorrection" id="missional"/><span class="missional"><img src="$ThemeDir/images/values/missionaldefinition.png" alt="missional - outward looking in all we say and do. We tell others (in Kelburn and beyond the good news about Jesus so that they become his followers. We call our society back to the ways of God." /></span></a><img src="$ThemeDir/images/values/prayerful.png" alt="prayerful" width="89" height="21" class="pastoralandothers" /><img src="$ThemeDir/images/values/pastoral.png" alt="pastoral" width="78" height="21" class="pastoralandothers" /><img src="$ThemeDir/images/values/inclusive.png" alt="inclusive" width="86" height="17" class="valuecorrection" /><img src="$ThemeDir/images/values/spiritual.png" alt="spiritual" width="81" height="22" class="pastoralandothers" /><img src="$ThemeDir/images/values/faithful.png" alt="faithful" width="73" height="17" class="valuecorrection" /><img src="$ThemeDir/images/values/joyful.png" alt="joyful" width="57" height="22" class="pastoralandothers" /><img src="$ThemeDir/images/values/passionate.png" alt="passionate" width="103" height="22" class="pastoralandothers" /><img src="$ThemeDir/images/values/generous.png" alt="generous" width="88" height="18" class="pastoralandothers" /><img src="$ThemeDir/images/values/hopeful.png" alt="hopeful" width="73" height="21" class="hopeful" /></div>
	-->
    
	<div id="titlecontent" class="typography">
		$Content
		$Form
	</div>

	<div class="kelburnvillage" id="kelburnvillage"><img src="$ThemeDir/images/kelburnvillage.jpg" alt="kelburn Village" width="999" height="124" border="0" usemap="#Signs" />
		<map name="Signs" id="Signs">
			<area shape="rect" coords="76,59,127,112" href="#" alt="Sign1" id="clickable_region_1"/>
			<area shape="rect" coords="340,-7,409,58" href="#" alt="flag" />
			<area shape="rect" coords="188,7,271,111" href="#" alt="Sign2" id="clickable_region_2"/>
			<area shape="rect" coords="284,70,400,112" href="#" alt="Sign3" id="clickable_region_3" />
		</map>
	</div>
