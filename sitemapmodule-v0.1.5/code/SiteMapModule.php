<?php
/**

Copyright (c) 2010, Design City Pty Ltd - http://designcity.com.au
Written by Michael Bollig
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Design City nor the names of its contributors may be used to endorse or promote products derived from this software
      without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
OF SUCH DAMAGE.

**/

class SiteMapModule extends MorePage_Controller {

	/**
	 * The default title for the Site map page. This can be updated in the config using
	 * SiteMapModule::setTitle('Title');
	 * @param sring $siteMapTitle
	*/
	public static $siteMapTitle = 'Site Map';

	/**
	 * The default URLSegment for the Site map page. This can be updated in the config.
	 * SiteMapModule::setURLSegment('URLSegment');
	 * @param sring $siteMapURLSegment
	*/
	public static $siteMapURLSegment = 'site-map';

	/**
	 * The site map theme. This can be updated in the config.
	 * SiteMapModule::setTheme('default');
	 * SiteMapModule::setTheme('slickmap');
	 * @param sring $siteMapTheme
	*/
	public static $siteMapTheme = 'default';

	/**
	 * Page types to ignore from the Site Tree.
	 * SiteMapModule::skipPageTypes(array("ErrorPage","OtherPage","OtherPage"));
	 * @param sring $siteMapSkipPageTypes
	*/
	public static $siteMapSkipPageTypes = array(
		"ErrorPage"
	);

	/**
	 * Do you want to hide pages from users who don't have permission to view the page?
	 * SiteMapModule::setPermissionCheck(true);
	 * @param sring $siteMapPermissionCheck
	*/
	public static $siteMapPermissionCheck = true;

	/**
	 * Used to override the default Title for the site map
	 * Set with SiteMapModule::setTitle();
	 * @param string $newTitle
	 */
	public static function setTitle($newTitle) {
		if($newTitle == 'none' || $newTitle == "") {
			user_error("SiteMapModule::setTitle() passed bad title '$newTitle'", E_USER_WARNING);
		} else {
			self::$siteMapTitle = $newTitle;
		}
	}

	/**
	 * Used to override the default URLSegment for the site map
	 * Set with SiteMapModule::setURLSegment();
	 * @param string $newURLSegment
	 */
	public static function setURLSegment($newURLSegment) {
		if($newURLSegment == 'none' || $newURLSegment == "") {
			user_error("SiteMapModule::setURLSegment() passed bad title '$newURLSegment'", E_USER_WARNING);
		} else {
			self::$siteMapURLSegment = $newURLSegment;
		}
	}

	/**
	 * Used to override the default theme for the site map
	 * Set with SiteMapModule::setTheme();
	 * @param string $newTheme
	 */
	public static function setTheme($newTheme) {
		if($newTheme == 'none' || $newTheme == "") {
			user_error("SiteMapModule::setTheme() passed bad theme '$newTheme'", E_USER_WARNING);
		} else {
			self::$siteMapTheme = $newTheme;
		}
	}

	/**
	 * Used to hide certain page types from the site map.
	 * Set with SiteMapModule::skipPageTypes();
	 * @param string $NewSkipPageTypes
	 */
	public static function skipPageTypes($NewSkipPageTypes) {
		if(is_array($NewSkipPageTypes) === false || empty($NewSkipPageTypes)) {
			user_error("SiteMapModule::skipPageTypes() passed bad pages to be skipped '$NewSkipPageTypes'", E_USER_WARNING);
		} else {
			self::$siteMapSkipPageTypes = $NewSkipPageTypes;
		}
	}

	/**
	 * Set whether pages that a user does not have permission to view should be hidden from the site map.
	 * Set with SiteMapModule::setPermissionCheck();
	 * @param string $newPermissionCheck
	 */
	public static function setPermissionCheck($newPermissionCheck) {
		if($newPermissionCheck != true && $newPermissionCheck != false ) {
			user_error("SiteMapModule::setPermissionCheck() passed bad option '$newPermissionCheck'. Must be true/false.", E_USER_WARNING);
		} else {
			self::$siteMapPermissionCheck = $newPermissionCheck;
		}
	}

	function init() {
		Requirements::javascript("sitemapmodule/javascript/sitemap-".self::$siteMapTheme.".js");
		Requirements::css("sitemapmodule/css/sitemap-".self::$siteMapTheme.".css");
		parent::init();
	}

	/**
	 * This function will return a unordered list of all pages in the site excluding $siteMapSkipPageTypes.
	 */
	function Content() {
		//Get a list of root-level pages excluding $siteMapSkipPageTypes
		$illegalPageTypes = $list = "'". implode("', '", self::$siteMapSkipPageTypes) ."'";
		$rootLevel = DataObject::get("Page", "ParentID = 0 AND ClassName NOT IN(".$illegalPageTypes.")");
		
		//Get all children of these pages using makeList() and return
		$output = "";
		$output = $this->makeList($rootLevel);
		return $output;
	}
 
	/**
	 * Returns the Title for the page.
	 * @param string $siteMapTitle. 
	 */
 	function Title() {
 		return self::$siteMapTitle;
 	}
 
	/**
	 * Runs through all root level pages and then passes Children pages to makeChildList().
	 * Returns HTML markup for the sitemap to Content()
	 */
	private function makeList($pages) {
		$output = "";
		if(count($pages)) {
			
			/* get number of columns for slickmap */
			$totalItems = $pages->Count();
			if (($totalItems - 1) < 11 ) { /* remove home page from count */
				$slickmapWidth = "col".($totalItems - 1);
			} else { $slickmapWidth = "col10"; }

			$output = "\r\t\t\t<ul id='sitemap' class='".$slickmapWidth."'>";
			foreach($pages as $page) {
			
				/* if selected, check if user has permission to view page and skip rendering it if they don't have permission. */
				if (self::$siteMapPermissionCheck) {
					if (!$page->canView()) {
						continue;
					}
				}
					
				/* add id for slickmap */
				if ($page->URLSegment == 'home') {
					$slickmapHomeID = "id='home' ";
				} else { $slickmapHomeID = null; }

				$output .= "\r\t\t\t\t<li ".$slickmapHomeID."><a href='".$page->Link()."' title='Go to the ".Convert::raw2xml($page->Title)." page'>".Convert::raw2xml($page->MenuTitle)."</a>";
				$childPages = $page->Children();
				$output .= $this->makeChildList($childPages);
				$output .= '</li>';
			}
			$output .= "\r\t\t\t</ul>\r\t\t";
		}
		return $output;
	}

	/**
	 * Runs through Children pages passed by makeList().
	 * Returns HTML markup for the sitemap back to makeList()
	 */
	private function makeChildList($pages) {
		$output = "";
		if(count($pages)) {
				$output = "\r\t\t\t\t\t<ul>";
			foreach($pages as $page) {

				/* Check the page isn't in $siteMapSkipPageTypes. */
				$illegalPageType = in_array($page->ClassName, self::$siteMapSkipPageTypes);
				if ($illegalPageType) {
					continue;
				}

				/* if selected, check if user has permission to view page and skip rendering it if they don't have permission. */
				if (self::$siteMapPermissionCheck) {
					if (!$page->canView()) {
						continue;
					}
				}
					
				$output .= "\r\t\t\t\t\t\t<li><a href='".$page->Link()."' title='Go to the ".Convert::raw2xml($page->Title)." page'>".Convert::raw2xml($page->MenuTitle)."</a>";
				$childPages = $page->Children();
				if($childPages) {
					$output .= $this->makeChildList($childPages);
				}
				$output .= '</li>';
			}
			$output .= "\r\t\t\t\t\t</ul>\r\t\t\t\t";
		}
		return $output;
	}

}