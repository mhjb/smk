St Michaels SilverStripe-based Website
======================================

This document is for developers working on the SMC website.

Getting started
---------------

 * You will need a server running Apache, MySQL and PHP.  If you run Windows, [XAMPP](http://www.apachefriends.org/en/xampp.html) is a good option to set this up.
 * You will need to install Git to check out the code from GitHub.  [MSysGit](http://code.google.com/p/msysgit/) is a good option for this.

Once you have those two pieces of software:

 * Check out the repository into your server's web-root
 * Copy `_ss_environment.sample.php` to `_ss_environment.php`, and fill out the details
 * Add these lines to _ss_environment.php:
 define('SS_DEFAULT_ADMIN_USERNAME', 'admin');
 define('SS_DEFAULT_ADMIN_PASSWORD', 'password');
 * Extract the `SS_stmichaels.sql.gz` into a new database called `SS_stmichaels`.
 * Extract assets.tar.gz to a /assets directory in your web-root.
 * Visit the site

For more information about working with SilverStripe, see [http://doc.silverstripe.org/](http://doc.silverstripe.org/).

If you have added content to the site, you will need to export the updated database and/or assets folder into the /tools directory before commiting.