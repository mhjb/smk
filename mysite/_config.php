<?php

global $project;
$project = 'mysite';

global $database;
$database = 'SS_stmichaels';

require_once('conf/ConfigureFromEnv.php');

MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('stmichaels');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();

//PrettyPhoto::set_theme("stmichaels");

//PrettyPhoto::set_theme("dark_square");
PrettyPhoto::set_more_config("allowresize: false, opacity: 0.4");
PrettyPhoto::set_more_config("AnimationSpeed: 'fast'");