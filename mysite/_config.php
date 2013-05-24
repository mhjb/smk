<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'bartlett_smk',
	"password" => 'P0CC-CunA5sB',
	"database" => 'bartlett_smk',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

SSViewer::set_theme('stmichaels');

// Website config
include( dirname(__FILE__).'/_config_add.php' );

Email::setAdminEmail('ben@stripetheweb.com');


Security::setDefaultAdmin('admin','tincan12');

SiteTree::enable_nested_urls();

?>