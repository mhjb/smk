<?php
$val .= '<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		';

$val .= SSViewer::get_base_tag($val);
$val .= '

		';

$val .= $scope->XML_val('MetaTags', null, true);
$val .= '

		';

Requirements::css('framework/css/debug.css');
$val .= '
	</head>
	<body>
		<div class="info">
			<h1>';

if ($scope->hasValue('Title', null, true)) { 
$val .= $scope->XML_val('Title', null, true);

}else { 
$val .= 'Welcome to SilverStripe';


}
$val .= '</h1>
			<h3>Generated with the default Controller.ss template</h3>
		</div>

		<div class="options">
			';

if ($scope->hasValue('Content', null, true)) { 
$val .= $scope->XML_val('Content', null, true);

}else { 
$val .= '
			<h3>Getting Started</h3>

			<p>To get started with the SilverStripe framework:</p>
			<ol>
				<li>Create a <code>Controller</code> subclass (<a href="http://doc.silverstripe.org/sapphire/en/topics/controller">doc.silverstripe.org/sapphire/en/topics/controller</a>)</li>
				<li>Setup the routes.yml f to your <code>Controller</code> (<a href="http://doc.silverstripe.org/framework/en/reference/director#routing">doc.silverstripe.org/framework/en/reference/director#routing</a>).</li>
				<li>Create a template for your <code>Controller</code> (<a href="http://doc.silverstripe.org/sapphire/en/reference/templates">doc.silverstripe.org/sapphire/en/reference/templates</a>)</li>
			</ol>
			';


}
$val .= '

			<h3>Community resources</h3>

			<ul>
				<li>
					<p><a href="http://silverstripe.org/forum">silverstripe.org/forum</a> Discussion forums for the development community.</p>
				</li>
				<li><p><a href="http://silverstripe.org/irc">silverstripe.org/irc</a> IRC channel for realtime support and discussions.</p></li>

				<li><p><a href="http://doc.silverstripe.org">doc.silverstripe.org</a> Searchable developer documentation, how-tos, tutorials, and reference.</p></li>

				<li><p><a href="http://api.silverstripe.org">api.silverstripe.org</a> API documentation for PHP classes, methods and properties.</p></li>
			<ul>
		</div>
	</body>
</html>
';

