-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2012 at 01:57 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ss_stmichaels`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_bouncerecord`
--

CREATE TABLE IF NOT EXISTS `email_bouncerecord` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Email_BounceRecord') CHARACTER SET utf8 DEFAULT 'Email_BounceRecord',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `BounceEmail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `BounceTime` datetime DEFAULT NULL,
  `BounceMessage` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `errorpage`
--

CREATE TABLE IF NOT EXISTS `errorpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `errorpage`
--

INSERT INTO `errorpage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500),
(9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_live`
--

CREATE TABLE IF NOT EXISTS `errorpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `errorpage_live`
--

INSERT INTO `errorpage_live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_versions`
--

CREATE TABLE IF NOT EXISTS `errorpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `errorpage_versions`
--

INSERT INTO `errorpage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500),
(3, 9, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Image','Folder','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `Sort`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'File', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'error-404.html', 'error-404.html', 'assets/error-404.html', NULL, 0, 1, 0, 1),
(2, 'File', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'error-500.html', 'error-500.html', 'assets/error-500.html', NULL, 0, 1, 0, 1),
(3, 'Folder', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'pdfs', 'pdfs', 'assets/pdfs/', NULL, 0, 1, 0, 1),
(4, 'File', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'RosieLetter - July 2010.pdf', 'RosieLetter - July 2010.pdf', 'assets/pdfs/RosieLetter - July 2010.pdf', NULL, 0, 1, 3, 1),
(5, 'File', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'mikel news spring 2009.pdf', 'mikel news spring 2009.pdf', 'assets/pdfs/mikel news spring 2009.pdf', NULL, 0, 1, 3, 1),
(6, 'File', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'mikelnews-easter2011.pdf', 'mikelnews-easter2011.pdf', 'assets/pdfs/mikelnews-easter2011.pdf', NULL, 0, 1, 3, 1),
(7, 'File', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'mikelnews_xmas2010.pdf', 'mikelnews_xmas2010.pdf', 'assets/pdfs/mikelnews_xmas2010.pdf', NULL, 0, 1, 3, 1),
(8, 'File', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'windmillsongs.pdf', 'windmillsongs.pdf', 'assets/pdfs/windmillsongs.pdf', NULL, 0, 1, 3, 1),
(9, 'Folder', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'section-photos', 'section-photos', 'assets/section-photos/', NULL, 0, 1, 0, 1),
(10, 'Folder', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'connecting', 'connecting', 'assets/section-photos/connecting/', NULL, 0, 1, 9, 1),
(11, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Ben & Pam Sando.jpg', 'Ben & Pam Sando.jpg', 'assets/section-photos/connecting/Ben & Pam Sando.jpg', NULL, 0, 1, 10, 1),
(12, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Centennial 2006.jpg', 'Centennial 2006.jpg', 'assets/section-photos/connecting/Centennial 2006.jpg', NULL, 0, 1, 10, 1),
(13, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Connecting(Farmer Maori).jpg', 'Connecting(Farmer Maori).jpg', 'assets/section-photos/connecting/Connecting(Farmer Maori).jpg', NULL, 0, 1, 10, 1),
(14, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Loren Cam2.jpg', 'Loren Cam2.jpg', 'assets/section-photos/connecting/Loren Cam2.jpg', NULL, 0, 1, 10, 1),
(15, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Lucy&Nick.jpg', 'Lucy&Nick.jpg', 'assets/section-photos/connecting/Lucy&Nick.jpg', NULL, 0, 1, 10, 1),
(16, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Lucy&Nick2.jpg', 'Lucy&Nick2.jpg', 'assets/section-photos/connecting/Lucy&Nick2.jpg', NULL, 0, 1, 10, 1),
(17, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'ben.jpg', 'ben.jpg', 'assets/section-photos/connecting/ben.jpg', NULL, 0, 1, 10, 1),
(18, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'casketcolour.jpg', 'casketcolour.jpg', 'assets/section-photos/connecting/casketcolour.jpg', NULL, 0, 1, 10, 1),
(19, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'churchpainting.jpg', 'churchpainting.jpg', 'assets/section-photos/connecting/churchpainting.jpg', NULL, 0, 1, 10, 1),
(20, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'connecting(NatandBrock).png', 'connecting(NatandBrock).png', 'assets/section-photos/connecting/connecting(NatandBrock).png', NULL, 0, 1, 10, 1),
(21, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'connecting(girlwithcake).jpg', 'connecting(girlwithcake).jpg', 'assets/section-photos/connecting/connecting(girlwithcake).jpg', NULL, 0, 1, 10, 1),
(22, 'Folder', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'engaging', 'engaging', 'assets/section-photos/engaging/', NULL, 0, 1, 9, 1),
(23, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Engagephoto(WCMcollect).jpg', 'Engagephoto(WCMcollect).jpg', 'assets/section-photos/engaging/Engagephoto(WCMcollect).jpg', NULL, 0, 1, 22, 1),
(24, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Engagephoto(WMSongs).jpg', 'Engagephoto(WMSongs).jpg', 'assets/section-photos/engaging/Engagephoto(WMSongs).jpg', NULL, 0, 1, 22, 1),
(25, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Engagephoto(facepaint).jpg', 'Engagephoto(facepaint).jpg', 'assets/section-photos/engaging/Engagephoto(facepaint).jpg', NULL, 0, 1, 22, 1),
(26, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Engagephoto(faircontainer).jpg', 'Engagephoto(faircontainer).jpg', 'assets/section-photos/engaging/Engagephoto(faircontainer).jpg', NULL, 0, 1, 22, 1),
(27, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Engagephoto(joel).jpg', 'Engagephoto(joel).jpg', 'assets/section-photos/engaging/Engagephoto(joel).jpg', NULL, 0, 1, 22, 1),
(28, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'FairHall.jpg', 'FairHall.jpg', 'assets/section-photos/engaging/FairHall.jpg', NULL, 0, 1, 22, 1),
(29, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'GretaFairstall.jpg', 'GretaFairstall.jpg', 'assets/section-photos/engaging/GretaFairstall.jpg', NULL, 0, 1, 22, 1),
(30, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'engagephoto(AMprayer).jpg', 'engagephoto(AMprayer).jpg', 'assets/section-photos/engaging/engagephoto(AMprayer).jpg', NULL, 0, 1, 22, 1),
(31, 'Folder', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'following', 'following', 'assets/section-photos/following/', NULL, 0, 1, 9, 1),
(32, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'followingphoto(Sundayschool).jpg', 'followingphoto(Sundayschool).jpg', 'assets/section-photos/following/followingphoto(Sundayschool).jpg', NULL, 0, 1, 31, 1),
(33, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'followingphoto(baptism).jpg', 'followingphoto(baptism).jpg', 'assets/section-photos/following/followingphoto(baptism).jpg', NULL, 0, 1, 31, 1),
(34, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'followingphoto(homeC).jpg', 'followingphoto(homeC).jpg', 'assets/section-photos/following/followingphoto(homeC).jpg', NULL, 0, 1, 31, 1),
(35, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'followingphoto(meredith&roger).jpg', 'followingphoto(meredith&roger).jpg', 'assets/section-photos/following/followingphoto(meredith&roger).jpg', NULL, 0, 1, 31, 1),
(36, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'followingphoto(ramseyhomegroup).jpg', 'followingphoto(ramseyhomegroup).jpg', 'assets/section-photos/following/followingphoto(ramseyhomegroup).jpg', NULL, 0, 1, 31, 1),
(37, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'followingphoto(wgroup).jpg', 'followingphoto(wgroup).jpg', 'assets/section-photos/following/followingphoto(wgroup).jpg', NULL, 0, 1, 31, 1),
(45, 'Folder', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'honouring', 'honouring', 'assets/section-photos/honouring/', NULL, 0, 1, 9, 1),
(46, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Hannahleadingworship.jpg', 'Hannahleadingworship.jpg', 'assets/section-photos/honouring/Hannahleadingworship.jpg', NULL, 0, 1, 45, 1),
(47, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Honourphoto(Communion).jpg', 'Honourphoto(Communion).jpg', 'assets/section-photos/honouring/Honourphoto(Communion).jpg', NULL, 0, 1, 45, 1),
(48, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Honourphoto(Lizpraying).jpg', 'Honourphoto(Lizpraying).jpg', 'assets/section-photos/honouring/Honourphoto(Lizpraying).jpg', NULL, 0, 1, 45, 1),
(49, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Honourphoto(musictrio).jpg', 'Honourphoto(musictrio).jpg', 'assets/section-photos/honouring/Honourphoto(musictrio).jpg', NULL, 0, 1, 45, 1),
(50, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Honourphoto(preaching).jpg', 'Honourphoto(preaching).jpg', 'assets/section-photos/honouring/Honourphoto(preaching).jpg', NULL, 0, 1, 45, 1),
(51, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'Honourphoto(singing).jpg', 'Honourphoto(singing).jpg', 'assets/section-photos/honouring/Honourphoto(singing).jpg', NULL, 0, 1, 45, 1),
(52, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'communion2.jpg', 'communion2.jpg', 'assets/section-photos/honouring/communion2.jpg', NULL, 0, 1, 45, 1),
(53, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'erinsinging.jpg', 'erinsinging.jpg', 'assets/section-photos/honouring/erinsinging.jpg', NULL, 0, 1, 45, 1),
(54, 'Image', '2012-01-06 12:06:09', '2012-01-06 12:06:09', 'organplay.jpg', 'organplay.jpg', 'assets/section-photos/honouring/organplay.jpg', NULL, 0, 1, 45, 1),
(55, 'Folder', '2012-01-07 14:26:14', '2012-01-07 14:26:14', 'main', 'main', 'assets/section-photos/main/', NULL, 0, 1, 9, 1),
(56, 'Image', '2012-01-07 14:26:14', '2012-01-07 14:26:14', 'Lisa&Jenny.jpg', 'Lisa&Jenny.jpg', 'assets/section-photos/main/Lisa&Jenny.jpg', NULL, 0, 1, 55, 1),
(57, 'Image', '2012-01-07 14:26:14', '2012-01-07 14:26:14', 'geoff.jpg', 'geoff.jpg', 'assets/section-photos/main/geoff.jpg', NULL, 0, 1, 55, 1),
(58, 'Image', '2012-01-07 14:26:14', '2012-01-07 14:26:14', 'homephoto(Joel&Mamaari).jpg', 'homephoto(Joel&Mamaari).jpg', 'assets/section-photos/main/homephoto(Joel&Mamaari).jpg', NULL, 0, 1, 55, 1),
(59, 'Image', '2012-01-07 14:26:14', '2012-01-07 14:26:14', 'homephoto(John).jpg', 'homephoto(John).jpg', 'assets/section-photos/main/homephoto(John).jpg', NULL, 0, 1, 55, 1),
(60, 'Image', '2012-01-07 14:26:14', '2012-01-07 14:26:14', 'homephoto(pagent).jpg', 'homephoto(pagent).jpg', 'assets/section-photos/main/homephoto(pagent).jpg', NULL, 0, 1, 55, 1),
(61, 'Image', '2012-01-07 14:26:14', '2012-01-07 14:26:14', 'james.jpg', 'james.jpg', 'assets/section-photos/main/james.jpg', NULL, 0, 1, 55, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `IPRestrictions` mediumtext CHARACTER SET utf8,
  `HtmlEditorConfig` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `IPRestrictions`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, NULL, 0),
(2, 'Group', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'Administrators', NULL, 'administrators', 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE IF NOT EXISTS `group_members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_roles`
--

CREATE TABLE IF NOT EXISTS `group_roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `homepageword`
--

CREATE TABLE IF NOT EXISTS `homepageword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('HomePageWord') CHARACTER SET utf8 DEFAULT 'HomePageWord',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Word` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Blurb` mediumtext CHARACTER SET utf8,
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PageID` (`PageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `homepageword`
--

INSERT INTO `homepageword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Word`, `Blurb`, `PageID`) VALUES
(1, 'HomePageWord', '2012-01-07 14:36:51', '2012-02-06 01:19:09', 'biblical', 'Deeply immersed in the great themes of the Bible, which show us what living as the people of God means; thoroughly knowledgeable of scripture, including the detailed complexity and richness of the text. Together, we wrestle with God’s Word to us and are hungry for His wisdom.', 2),
(2, 'HomePageWord', '2012-01-07 14:36:51', '2012-02-06 01:21:05', 'missional', 'Outward looking in all we say and do. We tell others (in Kelburn and beyond) the good news about Jesus so that they become his followers. We call our society back to the ways of God.', 2),
(3, 'HomePageWord', '2012-01-07 14:38:35', '2012-02-06 01:21:05', 'prayerful', 'Faithful and earnest prayers. We intercede for our world, our community and our church. We listen attentively and look expectantly for God to act. ', 2),
(4, 'HomePageWord', '2012-01-07 14:38:35', '2012-02-06 01:21:05', 'pastoral', 'Caring and hospitable. We seek to minister God’s grace and healing to all. ', 2),
(5, 'HomePageWord', '2012-01-07 14:38:35', '2012-02-06 00:58:12', 'inclusive', 'Open to others and appreciative of the gift each one brings to our life together. We celebrate our unity in diversity as a reflection of the very character of the God we worship.', 2),
(6, 'HomePageWord', '2012-01-07 14:38:35', '2012-02-06 00:58:12', 'spiritual', 'A people of the Holy Spirit, connected to God, set apart to bring God glory. ', 2),
(7, 'HomePageWord', '2012-01-07 14:38:35', '2012-02-06 01:11:15', 'faithful', 'Constant in our service of God, trusting in God’s care and orthodox in what we hold to be true.', 2),
(8, 'HomePageWord', '2012-01-07 14:38:35', '2012-02-06 01:21:05', 'joyful', 'Deeply grateful for all that God has done in Jesus Christ &mdash; most especially for forgiveness, reconciliation, the renewal of our world and the gift of eternal life. This gives us ‘the joy of the Lord’ which is our strength.\n', 2),
(9, 'HomePageWord', '2012-01-07 14:38:35', '2012-02-06 01:11:15', 'passionate', 'Vitally concerned with God’s work upon the earth. We are focused on the task of bearing witness to the present and coming reign of God.', 2),
(10, 'HomePageWord', '2012-01-07 14:38:35', '2012-02-06 00:59:42', 'generous', 'Giving &ndash; of ourselves, our time and our money. We want to be as generous to others as God is to us.', 2),
(11, 'HomePageWord', '2012-01-07 14:38:35', '2012-02-06 01:21:05', 'hopeful', 'Known as those who have a ‘proper confidence’ in God’s future, and who work for that future even while they wait for the one who brings healing in his wings and will make all things new.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

CREATE TABLE IF NOT EXISTS `loginattempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `Bounced` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AutoLoginHash` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `Bounced`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2011-11-28 21:21:06', '2012-03-06 01:12:06', 'Matthew', 'Bartlett', 'admin', 'a70be9e67072dc8ec6d065cb3c1ea2108a525f31', NULL, 9, '2012-03-06 13:56:21', 0, NULL, NULL, 'sha1_v2.4', '2c5f422753fb3aff287684d6cdadd351c2554270', NULL, NULL, 'en_US', 0, 'MM/dd/yyyy', 'hh:mm a');

-- --------------------------------------------------------

--
-- Table structure for table `memberpassword`
--

CREATE TABLE IF NOT EXISTS `memberpassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `memberpassword`
--

INSERT INTO `memberpassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2012-01-16 11:07:51', '2012-01-16 11:07:51', '514a872c44fd31734bce151668046ad6f02dd391', '2c5f422753fb3aff287684d6cdadd351c2554270', 'sha1_v2.4', 1),
(2, 'MemberPassword', '2012-03-06 01:12:06', '2012-03-06 01:12:06', 'a70be9e67072dc8ec6d065cb3c1ea2108a525f31', '2c5f422753fb3aff287684d6cdadd351c2554270', 'sha1_v2.4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagecomment`
--

CREATE TABLE IF NOT EXISTS `pagecomment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PageComment') CHARACTER SET utf8 DEFAULT 'PageComment',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8,
  `IsSpam` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NeedsModeration` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CommenterURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SessionID` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'CMS_ACCESS_CommentAdmin', 0, 1, 1),
(4, 'Permission', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(5, 'Permission', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'SITETREE_REORGANISE', 0, 1, 1),
(6, 'Permission', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionrole`
--

CREATE TABLE IF NOT EXISTS `permissionrole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissionrolecode`
--

CREATE TABLE IF NOT EXISTS `permissionrolecode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `queuedemail`
--

CREATE TABLE IF NOT EXISTS `queuedemail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('QueuedEmail') CHARACTER SET utf8 DEFAULT 'QueuedEmail',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Send` datetime DEFAULT NULL,
  `Subject` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `From` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `ToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ToID` (`ToID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage`
--

CREATE TABLE IF NOT EXISTS `redirectorpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `redirectorpage`
--

INSERT INTO `redirectorpage` (`ID`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(6, 'Internal', NULL, 0),
(8, 'Internal', NULL, 0),
(7, 'Internal', NULL, 0),
(3, 'Internal', NULL, 0),
(9, 'Internal', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_live`
--

CREATE TABLE IF NOT EXISTS `redirectorpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `redirectorpage_live`
--

INSERT INTO `redirectorpage_live` (`ID`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(6, 'Internal', NULL, 0),
(8, 'Internal', NULL, 0),
(7, 'Internal', NULL, 0),
(3, 'Internal', NULL, 0),
(9, 'Internal', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_versions`
--

CREATE TABLE IF NOT EXISTS `redirectorpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `redirectorpage_versions`
--

INSERT INTO `redirectorpage_versions` (`ID`, `RecordID`, `Version`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(1, 6, 5, 'Internal', NULL, 0),
(2, 8, 5, 'Internal', NULL, 0),
(3, 7, 5, 'Internal', NULL, 0),
(4, 3, 3, 'Internal', NULL, 0),
(5, 6, 6, 'Internal', NULL, 0),
(6, 6, 7, 'Internal', NULL, 0),
(7, 8, 6, 'Internal', NULL, 0),
(8, 8, 7, 'Internal', NULL, 0),
(9, 7, 6, 'Internal', NULL, 0),
(10, 3, 4, 'Internal', NULL, 0),
(11, 7, 7, 'Internal', NULL, 0),
(12, 8, 8, 'Internal', NULL, 0),
(13, 8, 9, 'Internal', NULL, 0),
(14, 9, 14, 'Internal', NULL, 0),
(15, 9, 15, 'Internal', NULL, 0),
(16, 9, 16, 'Internal', NULL, 0),
(17, 6, 8, 'Internal', NULL, 0),
(18, 6, 9, 'Internal', NULL, 0),
(19, 6, 10, 'Internal', NULL, 0),
(20, 6, 11, 'Internal', NULL, 0),
(21, 8, 10, 'Internal', NULL, 0),
(22, 8, 11, 'Internal', NULL, 0),
(23, 6, 12, 'Internal', NULL, 0),
(24, 6, 13, 'Internal', NULL, 0),
(25, 6, 14, 'Internal', NULL, 0),
(26, 7, 8, 'Internal', NULL, 0),
(27, 7, 9, 'Internal', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sectionpage`
--

CREATE TABLE IF NOT EXISTS `sectionpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BottomContent` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sectionpage`
--

INSERT INTO `sectionpage` (`ID`, `BottomContent`) VALUES
(6, NULL),
(8, NULL),
(7, NULL),
(3, NULL),
(9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sectionpage_live`
--

CREATE TABLE IF NOT EXISTS `sectionpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BottomContent` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sectionpage_live`
--

INSERT INTO `sectionpage_live` (`ID`, `BottomContent`) VALUES
(6, NULL),
(8, NULL),
(7, NULL),
(3, NULL),
(9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sectionpage_versions`
--

CREATE TABLE IF NOT EXISTS `sectionpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `BottomContent` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `sectionpage_versions`
--

INSERT INTO `sectionpage_versions` (`ID`, `RecordID`, `Version`, `BottomContent`) VALUES
(1, 6, 5, NULL),
(2, 8, 5, NULL),
(3, 7, 5, NULL),
(4, 3, 3, NULL),
(5, 6, 6, NULL),
(6, 6, 7, NULL),
(7, 8, 6, NULL),
(8, 8, 7, NULL),
(9, 7, 6, NULL),
(10, 3, 4, NULL),
(11, 7, 7, NULL),
(12, 8, 8, 'WHAT IS THIS'),
(13, 8, 9, 'WHAT IS THIS'),
(14, 9, 14, NULL),
(15, 9, 15, NULL),
(16, 9, 16, NULL),
(17, 6, 8, NULL),
(18, 6, 9, NULL),
(19, 6, 10, NULL),
(20, 6, 11, NULL),
(21, 8, 10, 'WHAT IS THIS'),
(22, 8, 11, NULL),
(23, 6, 12, NULL),
(24, 6, 13, NULL),
(25, 6, 14, NULL),
(26, 7, 8, NULL),
(27, 7, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE IF NOT EXISTS `siteconfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`) VALUES
(1, 'SiteConfig', '2011-11-28 21:21:06', '2012-02-05 23:46:56', 'St Michael''s Anglican Church, Kelburn', NULL, 'stmichaels', 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_createtoplevelgroups`
--

CREATE TABLE IF NOT EXISTS `siteconfig_createtoplevelgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_editorgroups`
--

CREATE TABLE IF NOT EXISTS `siteconfig_editorgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_viewergroups`
--

CREATE TABLE IF NOT EXISTS `siteconfig_viewergroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree`
--

CREATE TABLE IF NOT EXISTS `sitetree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','MorePage','Page','HomePage','SplashPage','ErrorPage','RedirectorPage','VirtualPage','SectionPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ToDo` mediumtext CHARACTER SET utf8,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `Version`, `ParentID`) VALUES
(1, 'SplashPage', '2011-11-28 21:21:06', '2012-01-07 14:58:01', 'home', 'St Michael''s', NULL, NULL, 'St Michael''s', NULL, NULL, NULL, 0, 0, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8, 0),
(7, 'SectionPage', '2011-11-28 21:30:17', '2012-03-06 01:16:05', 'engaging', 'Engaging', NULL, '<h5>“The Church is the only cooperative society in the world that exists for the benefit of those who are not its members.” <a class="small" href="http://en.wikipedia.org/wiki/William_Temple_(bishop)">Archbishop William Temple</a></h5>\n<h6>St. Mic’s sees itself as very much part of its local community. We also see ourselves as citizens not just of our city and nation, but of God''s world… (<a href="[sitetree_link id=46]">more</a>)</h6>', 'Engaging', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 9, 0),
(8, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:39:49', 'following', 'Following', NULL, '<h5>‘Christianity without the living Jesus Christ remains necessarily a Christianity without discipleship; and a Christianity without discipleship is always just an idea, a myth.’ <a class="small" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">Dietrich Bonhoeffer</a></h5>\n<h6>On following the living Jesus, Bonhoeffer also wrote... (<a href="[sitetree_link id=44]">more</a>)</h6>', 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 11, 0),
(9, 'SectionPage', '2011-11-28 21:31:27', '2012-02-29 00:35:30', 'latest', 'Latest', NULL, '<p style="text-align: right;"><a href="http://www.facebook.com/StMichaelsKelburn"><img class="left" src="themes/stmichaels/images/icon_facebook.png" width="21"/></a> Keep up to date with St Michaels on Facebook</p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 16, 0),
(2, 'HomePage', '2011-11-28 21:21:06', '2012-02-29 04:42:12', 'main', 'Home', NULL, '<h5>Welcome to <em>St Michael and All Angels</em> online.<br/>We think St Mic’s is a really <em>special place</em>.<br/>Have a browse around and <em>find out why</em>. If you want to know more don''t hesitate to <a href="[sitetree_link id=24]">get in touch</a>.</h5>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 6, 0),
(3, 'SectionPage', '2011-11-28 21:21:06', '2012-02-27 22:42:44', 'connecting', 'Connecting', NULL, '<h5>For general info about St. Mic''s have a good scroll through below. Also don''t forget to check out our <a href="[sitetree_link id=9]">latest page</a> for current events.<br/>Contact us to find out more.</h5>', 'Connecting', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, 0),
(6, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:48:09', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it — people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread … <a class="small" href="[sitetree_link id=45]">(more)</a></h5>\n<h6>Our services reflect the ‘mixed economy’ of our parish — the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 14, 0),
(4, 'ErrorPage', '2011-11-28 21:21:06', '2012-01-07 14:26:14', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 8, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, 0),
(5, 'ErrorPage', '2011-11-28 21:21:06', '2012-01-07 14:26:14', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 9, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, 0),
(10, 'Page', '2011-11-28 21:36:56', '2012-01-07 14:26:14', 'sunday-school', 'Sunday School', NULL, '<p>St Mic''s has a growing ministry among toddlers and children. In           addition to special programmes, the Sunday School meets every Sunday during           the 10am service. Lessons, music and activities follow the church year and           parallel the Gospel talks at the weekly services.</p>\n<p>Parent involvement is           encouraged.  Once a month (usually on the third Sunday), children stay in           church for a more informal family orientated service. Email <a href="mailto:info@stmichaels.org.nz">Barb</a> to find out more.</p>\n<h4>What''s the Story?</h4>\n<p>What''s the story? is our special Sunday School programme geared to children up           to five years (older children meet seperately). What''s the story? is based upon elements of           the Montessori method and has been primarily developed by Jerome Berryman.           You can find a good overview in the book Young Children in Worship, by           Jerome Berryman and Sonja M. Stewart (this is the book is also used to begin         the classes). There are several key elements to What''s the story?</p>\n<ul><li>An emphasis on the telling of Biblical stories, using             three-dimensional figures and materials, in a way that is engaging and             memorable for the children. </li>\n<li> Carefully worded questions to encourage even very young children in             thoughtful responses. </li>\n<li>Options for the creative response of the child at every lesson:             re-telling the story themselves, drawing, playing with carefully chosen             materials and other craft activities. </li>\n<li>An emphasis on having a respectful, ordered classroom, leaving room             for everyone to participate; the belief that every child has something to             contribute. </li>\n<li>An emphasis on the Church Year and the weekly use of brief             liturgical phrases for the children to learn along with a weekly song. </li>\n<li> Encouraging parents and other interested church members to be             involved in the teaching. </li>\n</ul><p>What''s the story? is best suited to children             aged 2 - 5.  Younger             children from about 18 months can attend with a parent if the parent feels             that the child will be able to give attention.</p>', 'Sunday Schools', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(11, 'Page', '2011-11-28 22:01:24', '2012-01-07 14:26:14', 'home-groups', 'Home groups', NULL, '<p>Home groups meet around the parish and across town. These are not           support groups. They are disciple groups whose goal is maturity in Christ.           By spending time together around the scriptures, by listening and sharing in           each others lives, we build our common life as a parish around being active           followers of Jesus. <a href="mailto:allangels@stmichaels.org.nz">Let us know</a> if you       would like to become part of such a group.</p>', 'Home groups', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 8),
(12, 'Page', '2011-11-28 22:01:46', '2012-01-07 14:26:14', 'bible-studies', 'Bible Studies', NULL, '<p>Studying the bible together is key to the formation of our world   view as a faith community. St Mic''s parish bible studies run in short series   throughout the year.</p>\n<p>These may be thematically based around the church   seasons (Lent, Easter, Pentecost, Advent), topically based (looking at how   the scriptures frame our thinking on issues of our day - such as   environment, wealth and poverty, sexuality and relationships, violence etc),   or working through books of the bible.</p>\n<p>Keep an eye on <a href="latest">latest</a> for the latest.</p>', 'Bible Studies', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(13, 'Page', '2011-11-28 22:01:54', '2012-01-07 14:26:14', 'student-discipleship', 'Student Discipleship', NULL, '<p>Situated in right next door to Victoria University, St. Mic''s has a special burden for discipling   students and graduates. Our ministry reflects this. As well as worship and   bible studies especially geared to this demographic, St. Mic''s also works   closely with AngChap (<a href="http://www.victoria.ac.nz/chaplains/angchap.html">the VUW Anglican Chaplaincy</a>) in its formational   ministry.</p>\n<p>This includes supporting AngChaps lectures, seminars, discussion evenings,   mini conferences, the <a href="http://www.victoria.ac.nz/chaplains/whatson/xnous.html">X NOUS</a> series and action   focussed programmes, such as <a href="http://www.victoria.ac.nz/chaplains/whatson/do-something.html">DO SOMETHING!</a> and <a href="http://www.victoria.ac.nz/chaplains/whatson/newswatch.html">NewsWatch</a>. The parish also owns and overseas student accommodation at <a href="http://www.victoria.ac.nz/chaplains/angchap.html#">Ramsey House</a>.</p>\n<p>These ministries are   all about helping students develop how they see the world and live within it   as followers of Jesus.</p>', 'Student Discipleship', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(14, 'Page', '2011-11-28 22:02:12', '2012-01-07 14:26:14', 'baptisms', 'Baptisms', NULL, '<p>Through baptism we enter into this company of fellow travellers   seeking to put Jesus at the centre of their lives. Baptisms at St Michael''s   are always a special event for the whole church as we celebrate God''s work   in that individual and welcome them into God''s family.</p>\n<p>People wanting to be   baptised, or parents wanting their children baptised, are expected receive   ''catechism'' (instruction), in the faith before they make their public   profession at baptism.</p>\n<p>Because baptism is about entering the faith community, all baptisms are conducted as part of   our main services of worship. See the <a href="mailto:vicar@stmichaels.org.nz">Vicar</a> if you want to find out more.</p>', 'Baptisms', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(15, 'Page', '2011-11-28 22:02:23', '2012-01-07 14:26:14', 'pastoral-care', 'Pastoral Care', NULL, '<p>"By this everyone will know that you are my disciples, if you have love for one another."  <span class="smallitalicp">Jesus - in John 13:35</span></p>\n<p>Caring for each other is at the core of what it means to be God''s   people. The goal of pastoral care is helping us become who God created us to   be. It''s about, wholeness, healing and redemption.</p>\n<p>Everyone is involved in   this ministry though presently we are developing a small team of trained   pastoral carers to give it impetus. The Vicar oversees and is especially   involved in this work. If you have a pastoral or practical need with which you   need help,  <a href="mailto:vicar@stmichaels.org.nz">do make contact</a>.</p>', 'Pastoral Care', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(16, 'Page', '2012-01-06 11:20:09', '2012-01-07 14:26:14', 'sunday-10am', 'Sunday 10am', NULL, '<p>This is a good time for the family to worship together. Sunday School and crèche run during the first           half of the service before we gather together around the Lord''s table. Services may be more or less formal depending on the           Sunday. Details are posted regularly on the outside noticeboard as well as           on this website. Catch up with others over a coffee afterwards.</p>', 'Sunday 10am', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 6),
(17, 'Page', '2012-01-06 11:21:35', '2012-01-07 14:26:14', 'sunday-7pm', 'Sunday 7 pm - ''Substance''', 'Sunday 7pm', '<p>Substance is a university orientated communion service.         Committed to formational worship among  future generation leadership of         our society, Substance seeks to  express an "ancient-future" faith, merging tradition with innovation. Services         include weightier sermons, an eclectic mix of music, interaction and open prayer. Though geared       to university students and staff, all are welcome.</p>', 'Sunday 7pm', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 6, 6),
(18, 'Page', '2012-01-06 11:21:39', '2012-01-07 14:26:14', 'sunday-8am', 'Sunday 8am', NULL, '<p>The ''8 O''Clockers'' gather every Sunday for a prayer-book             communion service with a hymn and Gospel talk. The worship is characterised             by a reflective spirituality which gives space to those who attend.  At the             same time there is a closeness about this congregation which extends into             the week. Though many have been worshipping at this service for  a             considerable time, new worshippers are always warmly welcomed.</p>', 'Sunday 8am', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, 6),
(19, 'Page', '2012-01-06 11:21:39', '2012-01-07 14:26:14', 'occasional-services', 'Occasional Services', NULL, '<p>In addition to regular services, special services are held at Easter, Christmas, feast days and other great occasions, such as weddings and baptisms. Again, keep an eye on this site from time to time for details of what is happening week to week.</p>', 'Occasional Services', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3, 6),
(20, 'Page', '2012-01-06 11:21:39', '2012-01-07 14:26:14', 'morning-prayer', 'Morning Prayer', NULL, '<p>St. Mic''s has a commitment to prayer as part of its life in             God. Each Tuesday, Wednesday and Thursday at 7:30am there is morning prayer             in the church. This is the unseen "engine room" of parish life where we give             thanks for God''s goodness, uphold and intercede for God''s mission and             ministry in Kelburn and beyond.</p>\n<p>On the first Tuesday of every month prayers begin at 7am when we especially             focus on the global mission of the church and our mission partners who serve             abroad. Normally these prayers are accompanied by coffee and croissant and           transport is provided for those who have to get down town by 8am.</p>\n<p>All are welcome at these prayer times.</p>', 'Morning Prayer', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, 6),
(21, 'Page', '2012-01-06 11:22:23', '2012-01-07 14:26:14', 'music-at-st-mic-s', 'Music at St Mic''s', NULL, '<p>Traditionally a fairly "trad" style of music has characterised St Michael''s worship. In recent years we have evolved to a more eclectic mix. You won''t find rock ''n roll church when you visit us but you will find good music in a variety of styles.</p>', 'Music at St Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 6),
(22, 'Page', '2012-01-06 12:09:31', '2012-01-07 14:26:14', 'taonga', 'Taonga', NULL, '<p>“…the kingdom of heaven is like the master of a household who brings out of           his treasure what is new and what is old." <span class="smallitalicp">Matthew 13:52</span></p>\n<h4>Enlightenment</h4>\n<p>In September 2010, local artist Lorraine Tarrant staged an exhibition <em>Enlightenment</em> in the church to celebrate St. Michael’s day. Lorraine           produced a delightful series of thirty paintings based around details from           the St. Michael’s leadlight windows and  Kelburn Village. With wit and           insight she explores the relationship between the transcendent and the           mundane. <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/church.jpg"> </a><a title="LORRAINE TARRANT THE ARTIST OF ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Lorraine.jpg"> Click</a> to view <em>Enlightenment</em>.</p>\n<div style="display:none;"><a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/church.jpg"> Church </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Juliette Florist.jpg"> Juliette Florist </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/4 Square.jpg"> 4 square </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/angel.jpg"> Angel </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/cablecar.jpg"> Cable Car </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/germanbakery.jpg"> German Bakery </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Glengarry.jpg"> Glengarry </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/telephone.jpg"> Holy Car </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/IMG_0102.jpg"> Village </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Kelburn Butchery.jpg"> Kelburn Butchery </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/kelburncafe.jpg"> Kelburn Cafe </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/kelburndeli.jpg"> Kelburn Deli </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/KElburnpharmacy.jpg"> Kelburn Pharmacy</a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Paradise Seafoods.jpg"> Paradise Seafoods </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/petdoctors.jpg"> Pet Docters </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/pratha2go.jpg"> Pratha 2 Go </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/quickcash.jpg"> Quick Cash </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/redtomatos.jpg"> Red Tomatos </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/terise.jpg"> Terise </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/trees.jpg"> Trees </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/watchmaker.jpg"> Watchmaker </a></div>\n<h4>A Wintery Spirituality</h4>\n<p>Over 2006 / 2007 St. Michael’s celebrated it’s centenary. It was a cold           winter though the early signs of the church’s new spring were just beginning           to show. <a href="http://www.craigthomson.co.nz/">Craig Thomson</a> documented the life of the parish over the wintery centenary.         <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/1.jpg">Click</a> to view his photo essay.</p>\n<div style="display:none;"><a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/2.jpg">Image 2</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/3-Bishop.jpg">Image 3</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/4.jpg">Image 4</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/5-communion.jpg">Image 5</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/6-organ.jpg">Image 6</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/prayerbook.jpg">Image 8</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/wordbeingread.jpg">Image 9</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/recievingcommunion.tif">Image 10</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/8.jpg">Image 11</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/9.jpg">Image 12</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/10.jpg">Image 13</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/11.jpg">Image 14</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/12.jpg">Image 15</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/13.jpg">Image 16</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/ladiescuppa.jpg">Image 17</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/kids.jpg">Image 18</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/kirstydishes.jpg">Image 19</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/17.jpg">Image 20</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/18.jpg">Image 21</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/19.jpg">Image 22</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/20.jpg">Image 23</a></div>', 'Taonga', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 3),
(23, 'Page', '2012-01-06 12:09:31', '2012-01-07 14:26:14', 'parish-registry', 'Parish Registry', NULL, '<p>The Parish Registry link is below. You will need a password to open the           registry. Please email <a href="mailto:info@stmichaels.org.nz">info@stmichaels.org.nz</a> if you wish to have access.           Proof of identity will be required and a referee. Please be aware that we           retain the right to withhold information that may be requested without         explanation.</p>\n<h3><a href="baptisms, weddings &amp; funerals from old website.pdf">Registry of Babtisms, Weddings and Funerals</a></h3>', 'Parish Registry', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 3),
(24, 'Page', '2012-01-06 12:09:31', '2012-01-07 14:26:14', 'get-in-touch', 'Get in Touch', NULL, '<p>Together the Vicar and Parish Vestry oversee the life of St. Michael''s.</p>\n<p>Our Vicar, David Newton, tries to be pastorally available to any who have           need. He can also refer you to others in the parish or beyond who may be           able to help. You can contact David at:          <a href="mailto:vicar@stmichaels.org.nz">vicar@stmichaels.org.nz</a> or through the church office: 04,9349338.</p>\n<p>The People’s Warden (Warick Dunn), especially represents the wider interests           of the parish. You can contact Warick at: <a href="mailto:allangels@stmichaels.org.nz">allangels@stmichaels.org.nz</a>.         Alternatively, leave a message on the parish voice mail.</p>', 'Get in Touch', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(25, 'Page', '2012-01-06 12:09:32', '2012-01-07 14:26:14', 'finding-st-mic-s', 'Finding St. Mic''s', NULL, '<p>St Michael''s is found right in the heart of Kelburn Village at 81 Upland           Road, Wellington.</p>\n<p><a href="http://maps.google.co.nz/maps?q=81+Upland+Road,+Wellington&amp;ll=-41.289444,174.762783&amp;spn=0.001653,0.003455&amp;client=safari&amp;oe=UTF-8&amp;hnear=81+Upland+Rd,+Kelburn+6012,+Wellington&amp;gl=nz&amp;t=m&amp;z=19&amp;vpsrc=6">Click here</a> to see how you can get to St. Michael’s.</p>', 'Finding St. Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 8, 3),
(26, 'Page', '2012-01-06 12:09:32', '2012-01-07 14:26:14', 'weddings-at-st-mic-s', 'Weddings at St. Mic''s', NULL, '<p>A wedding is one of life’s great moments, a time for good wishes, partying            and joy. Yet, marriage is also a serious undertaking “based upon a solemn,           public and life long covenant between a man and a woman” <span class="smallitalicp">New Zealand Prayer           Book ~ He Karakia Mihinare O Aotearoa</span>. As such it is to be entered into         thoughtfully and prayerfully before God.</p>\n<p>For these reasons all couples coming for marriage at St. Mic’s must commit           to pre-marriage preparation. We use an adapted version of<em> Prepare Enrich</em> for this         though we are open using other material.</p>\n<p>Since our tikanga is Anglican, we use the  Prayer Book as the           basis of our wedding ceremonies. Normally, it is the St. Michael’s Vicar who         takes the service as he represents the wider faith community.</p>\n<p>We see our church as a sacred space where the faith community gathers to           pray and worship together. The wedding service is one aspect of this. In           line with the policy of our wider church (<a href="http://wn.anglican.org.nz/">Diocese of Wellington</a>), we do not           hire our church as a venue. At least one of the couple should have a           tangible connection with St. Mic’s. If this connection is from the past you         may wish to renew it.</p>\n<p>There is no fee for the service or the Vicar’s           time though all donations are gratefully received. There is a fee for the organist and Verger.</p>\n<p>If you are in doubt about being married at St. Mic’s, feel free to email the <a href="mailto:vicar@stmichaels.org.nz">Vicar</a> to discuss things further.</p>', 'Weddings at St. Mic''s ', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(27, 'Page', '2012-01-06 12:09:32', '2012-01-07 14:26:14', 'funerals', 'Funerals', NULL, '<p>If you are reading this it may be because you have lost a loved one and are           grieving. We would like to be there for you in this. Call or <a href="mailto:vicar@stmichaels.org.nz">email</a> the Vicar         to discuss: 04,9349338.</p>\n<p>To avoid embarrassment, please be aware that only licensed Anglican           celebrants can take funeral services in the church. While we try to remain           flexible and sensitive to each person’s needs, we also have certain           contraints around the form of the service and music.</p>\n<p><img class="logospace2" src="themes/stmichaels/images/Lychgate logo 2 2011.jpg" alt="Lychgate logo" width="78" height="31"/></p>', 'Funerals', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(28, 'Page', '2012-01-06 12:09:32', '2012-01-07 14:26:14', 'parish-hall', 'Parish Hall', NULL, '<p>The St. Mic’s hall is a great community facility but is in high demand for           twenty-firsts, dances, community group events and other private functions.           The church also uses it for a variety of purposes. Weekday afternoons and           evenings are mostly taken up with ballet dancing. This means you will have           to book well ahead if you are to get the day or time you want.</p>\n<p>Hire rates depend on what you want to use the hall for. For more information           contact the parish admin person (in on Mondays and Thursdays and other           random days), email <a href="mailto:info@stmichaels.org.nz">info@stmichaels.org.nz</a>.</p>', 'Parish Hall', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(29, 'Page', '2012-01-06 12:09:32', '2012-01-07 14:26:14', 'inside-st-mic-s', 'Inside St. Mic’s', NULL, '<p>Late 2010 Greg McKenzie happened by St. Mic’s while he was looking for a           coffee. He wondered inside and couldn''t resist taking some snaps with his           panorama kit. Use the controls on the photo above to have a look through our         church – scroll around, zoom in and out, look down and up. Take your time…</p>\n<p>While you’re looking around, <a href="history">click here</a> for more info on  stained glass and  banners.</p>', 'Inside St. Mic’s', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(30, 'Page', '2012-01-06 12:09:33', '2012-01-07 14:26:14', 'friends', 'Friends', NULL, '<p>People who enjoy worshipping at St. Mic''s also have           connections with others on a similar journey. You might try browsing one of           these...</p>\n<p><a href="http://publicchristianity.org/"><img class="logos" src="themes/stmichaels/images/connecting/logos/CPClogo.jpg" alt="Centre of Public Christianity" width="200" height="43"/></a><a href="http://www.nzcms.org.nz/"><img class="logos" src="themes/stmichaels/images/connecting/logos/nzcmslogo.jpg" alt="NZ Church Missionary Society" width="114" height="42"/></a></p>\n<p><a href="http://www.ship-of-fools.com/"><img class="logospace" src="themes/stmichaels/images/connecting/logos/shipoffoolslogo.jpg" alt="ship of fools" width="151" height="27"/></a></p>', 'Friends', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, 3),
(31, 'Page', '2012-01-06 12:26:04', '2012-01-07 14:26:14', 'windmill-songs', 'Windmill Songs', NULL, '<p>Windmill Songs meets every Friday in the church hall. There are two (separate) sessions - 9:30am and 10:30am. Morning tea for both groups is  at 10:00am.</p>\n<p>Windmill Songs is an  interactive and varied music and movement           experience geared to           parents and care givers with babies and tots, it''s an opportunity to meet           and socialise with other families in the area. It also encourages valuable           one-on-one time between adults and children...</p>\n<p>Sessions are led           live from the piano, and feature a variety of orchestral, jazz, and folk           instruments, as well as songs, poems, stories and actions. The sessions are           relaxed and fun, with an emphasis on quality musicianship and a variety of         musical experiences for the children.</p>\n<p>All are welcome - just turn           up and join in!          <strong>$4.00 child / $2.00 sibling / babies under 4 months free. </strong></p>\n<p><a href="PDFs/windmillsongs.pdf"><img class="logoallign" src="themes/stmichaels/images/windmill.jpg" alt="Windmill Songs PDF" width="43" height="44"/></a></p>', 'Windmill Songs', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(32, 'Page', '2012-01-06 12:26:04', '2012-03-06 01:35:00', 'global-mission-group', 'Global Mission Group', NULL, '<p>''From everywhere to everywhere'', the title of Nazir  Ali''s great little <a href="http://www.amazon.com/Everywhere-World-View-Christian-Mission/dp/1606082965 /ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1310387561&amp;sr=1-1">book</a> sums up what the St. Mic''s Global Mission Group is on about. Global Mission is the calling of the whole church to proclaim the whole gospel throughout the whole world.</p>\n<p>The Global Mission Group  fosters this understanding of the church’s task within our parish and beyond. <a href="[sitetree_link id=47]">Read more…</a></p>', 'Global Mission Group', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 7),
(33, 'Page', '2012-01-06 12:26:04', '2012-02-27 03:46:24', 'going-up-country', 'Going Up Country', NULL, '<h1>In 2006, the Vicar and three young people from our parish (Ben Sando, Harry Newton and Miriam Plume),  went on a         Mission Discovery Trip to Tanzania.</h1>\n<p>''Going Up Country'' records the agony and the           ecstasy, the challenge and the hope of the indigenous church they         encountered there. <a rel="prettyPhoto" href="http://vimeo.com/33102231">Click</a> here to watch the movie.</p>\n<p>These days Ben is working as an architect in Melbourne           and retains an active interest in the global Christian movement. Harry is           training for ordination and intends to return to Tanzania as a mission           partner. Miriam stayed on to work in Tanzania at the end of the trip and now heads up the Global Mission Group. Click here to see an interview of Miriam as she reflects on her time away.</p>\n<p>St. Mic''s commitment to Global           Mission continues.</p>\n<p><img class="logoallign" src="themes/stmichaels/images/goingupcountrylogo.png" alt="Going Up Country" width="65" height="27"/></p>', 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 9, 7),
(34, 'Page', '2012-01-06 12:26:04', '2012-01-07 14:26:14', 'angchap-and-human-fm', 'AngChap and Human FM', NULL, '<p>The <a href="http://www.victoria.ac.nz/chaplains/angchap.html">VUW Chaplaincy</a> and its short reach           radio station <a href="http://www.humanfm.co.nz">Human FM</a>, are sister ministries           that we support in lots of ways. We share resources and people and get           involved in each others outreach programmes - especially to students.</p>\n<p>To hear Human FM check           out the links on this page. Also have a read of the article in the <a href="mikel news spring 2009.pdf">spring 2009           edition</a> of MiKel News. Interesting...</p>\n<p><a href="http://www.humanfm.co.nz"><img class="logoallign" src="themes/stmichaels/images/humanFM.png" alt="humanFM" width="59" height="31"/></a><a href="http://www.victoria.ac.nz/chaplains/angchap.html"><img class="logoallign" src="themes/stmichaels/images/AngChap.jpg" alt="AngChap" width="63" height="34"/></a></p>', 'AngChap and Human FM', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(35, 'Page', '2012-01-06 12:26:05', '2012-01-07 14:26:14', 'classroom-assist-and-disaster-preparedness', 'Classroom Assist and Disaster Preparedness', NULL, '<p>Helping in our local           primary school and helping our community to prepare for an event we all hope           won''t happen are two initiatives we began in 2009. There good articles on           both these programmes in the <a href="mikel news spring 2009.pdf">2009 Spring edition</a> of MiKel News archived at           the bottom of this page. Click and scroll through to have a read.</p>\n<p>At the           moment we''re looking for two volunteer coordinators to take this work           forward. If that might be you do get in touch        with the <a href="mailto:vicar@stmichaels.org.nz">vicar</a>.</p>', 'Classroom Assist and Disaster Preparedness', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(36, 'Page', '2012-01-06 12:26:05', '2012-03-06 01:38:54', 'wellington-city-mission', 'Wellington City Mission', NULL, '<p><a href="http://www.wellingtoncitymission.org.nz/"><img src="themes/stmichaels/images/wcmlogo.jpg" alt="Wellington City Mission" width="84" height="43" align="right"/></a> The Wellington City Mission does great work among Wellingtonians  who need special assistance in some way. We''re grateful to be part of this work through our           food bank, street collections, giving money and prayer. Keep and eye on our <a href="latest.html">latest</a> page for appeals and other ways you can become involved.</p>\n<p>Meantime, also have a look at the City Mission''s own <a href="http://www.wellingtoncitymission.org.nz">website</a> for a full description of           their fantastic work.</p>', 'Wellington City Mission', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 6, 7),
(37, 'Page', '2012-01-06 12:26:58', '2012-03-06 01:42:29', 'kelburn-fair', 'Kelburn Fair', NULL, '<p>Every year St. Mic''s organises the St. Michael''s and           Kelburn Village Fair. Usually held  on the third Saturday in March, over the years it''s become a landmark community           event.</p>\n<p><span style="color: #a4998c; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: left;">All sorts of people from across town and within Kelburn get involved. Maybe you could be one of them? Check <a href="[sitetree_link id=9]">Latest</a> for more info. </span></p>\n<p>Proceeds from the fair           typically go to supporting community outreach programmes in Kelburn,           maintaining the church (community) hall and supporting the <a href="http://www.carpenterskids.net/">Carpenter''s Kids programme</a> in Tanzania.</p>', 'v', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 7),
(38, 'Page', '2012-01-06 12:26:58', '2012-01-07 14:26:14', 'guess-who-s-coming-for-dinner', 'Guess who''s coming for dinner?', NULL, '<p>One of the great things about being part of God’s family is celebrating its unity in diversity —“There is no longer Jew or Greek, there is no longer slave or free, there is no longer male and female; for all of you are one in Christ Jesus.” <span class="smallitalicp">Saint Paul writing to the Galatian Christians</span></p>\n<p>St Mic’s is a very diverse parish. We enjoy this and like to celebrate it. Different St. Mic’s congregations get to meet each other at parish events throughout the year (bible studies, dances, home groups, movie nights, the fair etc. etc). <em>Guess who’s coming to dinner?</em> is an initiative aimed at extending these contacts by getting to know each other better in each other’s homes. These meals are usually run two or three times a year. If you want to find out when the next <em>Guess Who’s coming to dinner</em> is happening, email <a href="mailto:info@stmichaels.org.nz">info@stmichaels.org.nz</a> — or call 04,934 9338 and leave a message.</p>', 'Guess who''s coming for dinner?', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(39, 'Page', '2012-01-06 12:26:59', '2012-01-07 14:26:14', 'mikel-news', 'MiKel News', NULL, '<p>Our parish broadsheet, MiKel News goes out to around 1200 homes,           plus around 100 individuals and other outlets. Each issue is a combo of           news, adverts and something to challenge. Both issues linked at the bottom of           this page are good examples of MiKel News and tell you a lot about our           community and who we are.</p>\n<p>We''re always looking for stories and we''re           especially looking for someone to put issues together. Have a read and if           you''re inspired <a href="mailto:allangels@stmichaels.org.nz">get   in touch.</a></p>\n<p><a href="PDFs/mikelnews_xmas2010.pdf"><img class="logoallign" src="themes/stmichaels/images/miklnewsxmas10logo.png" alt="Mikel News Xmas20110" width="89" height="32"/></a><a href="PDFs/mikelnews-easter2011.pdf"><img class="logoallign" src="themes/stmichaels/images/mikelnewsspringlogo.png" alt="Mikel News Spring 2011" width="89" height="33"/></a></p>', 'MiKel News', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, 7),
(40, 'Page', '2012-02-28 23:38:09', '2012-02-29 00:46:13', 'sermons', 'Sermons', NULL, '<p><a href="#"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Sermon #1</a></p>\n<p><a href="#"> </a></p>\n<p><a href="#"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Sermon #2</a></p>\n<p><a href="#"> </a></p>\n<p><a href="#"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Sermon #3</a></p>', 'Sermons', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 9),
(41, 'Page', '2012-02-28 23:48:24', '2012-02-28 23:52:39', 'mikel-news', 'MiKel News', NULL, '<p><a style="text-decoration: underline; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: left;" href="assets/pdfs/mikelnews-easter2011.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Easter 2011 edition</a></p>\n<p><a style="font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: left;" href="assets/pdfs/mikelnews_xmas2010.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Christmas 2010 editio</a>n</p>\n<p><a href="assets/pdfs/mikel news spring 2009.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Spring 2009 edition</a> </p>\n<p> </p>\n<p> </p>', 'MiKel News', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3, 9),
(42, 'Page', '2012-02-28 23:49:56', '2012-03-06 01:40:14', 'archive', 'Archive', NULL, '<p>Archive of old news coming soon...</p>', 'Archive', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Unpublished', NULL, 'Inherit', 'Inherit', NULL, 2, 9),
(44, 'MorePage', '2012-02-29 04:07:13', '2012-02-29 04:22:19', 'bonhoeffer', 'Thus spake Bonhoeffer', 'Bonhoeffer', '<p>‘A Christianity in which there is only God the Father, but not Christ as a living Son actually cancels discipleship. In that case there will be trust in God, but not discipleship … Discipleship is a commitment to following Christ. Because Christ exists, he must be followed. An idea about Christ, a doctrinal system, a general religious recognition of grace or forgiveness of sins does not require discipleship. In truth, it even excludes discipleship; it is inimical to it. One enters into a relationship with an idea by way of knowledge, enthusiasm, perhaps even by carrying it out, but it is by personal obedient discipleship [that we enter into a relationship with the living Jesus].’</p>\n<p>From <em>The Cost of Discipleship</em>, p.59</p>', 'Bonhoeffer', NULL, NULL, NULL, 0, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 6, 8),
(45, 'MorePage', '2012-02-29 04:46:11', '2012-02-29 04:47:53', 'worship', 'Worship', NULL, '<p>According to Romans 12 verses 1 and 2, worship is about offering up the whole of our lives to God. The language here is about temple sacrifice but Paul locates our ‘true spiritual worship’, outside the temple in everyday life.</p>\n<p>So what are we doing each Sunday when we assemble together? Why is it important? One writer has summed it up as ‘parable and encounter’ — telling the story and meeting God together... Why not come to one of our services and find out for yourself?</p>', 'Worship', NULL, NULL, NULL, 0, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 6),
(46, 'MorePage', '2012-03-06 01:14:17', '2012-03-06 01:15:36', 'citizens-of-god-s-world', 'Citizens of God''s world', NULL, '<p>…That’s why we do stuff that serves our community in different ways. It is also why we support organisations and people around the globe who are doing the same. We encourage all our parishioners to take the good news about Jesus into their everyday lives - telling of God''s reconciling love and working for God’s justice however they can.</p>\n<p>Have a browse through just some of our activities. Maybe you could become involved. Maybe there is something you are interested in starting up. Let us know.</p>', 'Citizens of God''s world', NULL, NULL, NULL, 0, 1, NULL, 0, 10, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(47, 'MorePage', '2012-03-06 01:33:07', '2012-03-06 01:35:47', 'global-misson-group', 'Global Misson Group', 'Global Misson Group (more)', '<p>''From everywhere to everywhere'', the title of Nazir Ali''s great little <a href="http://www.amazon.com/Everywhere-World-View-Christian-Mission/dp/1606082965 /ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1310387561&amp;sr=1-1">book</a> sums up what the St. Mic''s Global Mission Group is on about. Global Mission is the calling of the whole church to proclaim the whole gospel throughout the whole world.</p>\n<p>The Global Mission Group fosters this understanding of the church''s task within our parish and beyond. It does this by...</p>\n<ul><li>Praying for our mission partners serving Christ throughout the world (especially at the GMG''s Coffee, Croissant and Prayer Breakfast on the first Tuesday of every month)</li>\n<li>Organising visits by mission partners from abroad, seminars, bible studies and a yearly Global Mission Month to both educate parishioners about the global mission task of our church and encourage their active support of this work.</li>\n<li>Raising money (social events, auctions, personal giving etc.), for the direct support of individual global mission partners, the wider work of the Anglican Mission Board and the Church Missionary Society.</li>\n<li>Identifying potential mission partners from within our own congregations and encouraging them to consider God''s call on their lives.</li>\n</ul><p>Presently, St Mic''s is especially supporting Rosie Fyfe who is working with the church in Cairo. Rosie''s task is to find partners from around the world to help in the church''s outreach programme (health, education, pastoral care, refugee work etc). Have a read of one of <a href="PDFs/RosieLetter - July 2010.pdf">Rosie''s letters</a>.</p>\n<p>If you would like to find out more about GMG events or how you could help promote global mission interest, email <a href="mailto:mission@stmichaels.org.nz ">mission@stmichaels.org.nz</a></p>', 'Global Missons Group', NULL, NULL, NULL, 0, 1, NULL, 0, 11, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_editorgroups`
--

CREATE TABLE IF NOT EXISTS `sitetree_editorgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_imagetracking`
--

CREATE TABLE IF NOT EXISTS `sitetree_imagetracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `sitetree_imagetracking`
--

INSERT INTO `sitetree_imagetracking` (`ID`, `SiteTreeID`, `FileID`, `FieldName`) VALUES
(87, 41, 5, 'Content'),
(86, 41, 7, 'Content'),
(85, 41, 6, 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_linktracking`
--

CREATE TABLE IF NOT EXISTS `sitetree_linktracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `sitetree_linktracking`
--

INSERT INTO `sitetree_linktracking` (`ID`, `SiteTreeID`, `ChildID`, `FieldName`) VALUES
(1, 3, 9, 'Content'),
(23, 2, 24, 'Content'),
(18, 8, 44, 'Content'),
(24, 6, 45, 'Content'),
(25, 7, 46, 'Content'),
(30, 32, 47, 'Content'),
(34, 37, 9, 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_live`
--

CREATE TABLE IF NOT EXISTS `sitetree_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','MorePage','Page','HomePage','SplashPage','ErrorPage','RedirectorPage','VirtualPage','SectionPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ToDo` mediumtext CHARACTER SET utf8,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `sitetree_live`
--

INSERT INTO `sitetree_live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `Version`, `ParentID`) VALUES
(1, 'SplashPage', '2011-11-28 21:21:06', '2012-01-07 14:57:58', 'home', 'St Michael''s', NULL, NULL, 'St Michael''s', NULL, NULL, NULL, 0, 0, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 7, 0),
(6, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:48:09', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it — people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread … <a class="small" href="[sitetree_link id=45]">(more)</a></h5>\n<h6>Our services reflect the ‘mixed economy’ of our parish — the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 14, 0),
(8, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:39:49', 'following', 'Following', NULL, '<h5>‘Christianity without the living Jesus Christ remains necessarily a Christianity without discipleship; and a Christianity without discipleship is always just an idea, a myth.’ <a class="small" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">Dietrich Bonhoeffer</a></h5>\n<h6>On following the living Jesus, Bonhoeffer also wrote... (<a href="[sitetree_link id=44]">more</a>)</h6>', 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 11, 0),
(7, 'SectionPage', '2011-11-28 21:30:17', '2012-03-06 01:16:05', 'engaging', 'Engaging', NULL, '<h5>“The Church is the only cooperative society in the world that exists for the benefit of those who are not its members.” <a class="small" href="http://en.wikipedia.org/wiki/William_Temple_(bishop)">Archbishop William Temple</a></h5>\n<h6>St. Mic’s sees itself as very much part of its local community. We also see ourselves as citizens not just of our city and nation, but of God''s world… (<a href="[sitetree_link id=46]">more</a>)</h6>', 'Engaging', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 9, 0),
(2, 'HomePage', '2011-11-28 21:21:06', '2012-02-29 04:42:12', 'main', 'Home', NULL, '<h5>Welcome to <em>St Michael and All Angels</em> online.<br/>We think St Mic’s is a really <em>special place</em>.<br/>Have a browse around and <em>find out why</em>. If you want to know more don''t hesitate to <a href="[sitetree_link id=24]">get in touch</a>.</h5>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 6, 0),
(3, 'SectionPage', '2011-11-28 21:21:06', '2012-02-29 00:35:30', 'connecting', 'Connecting', NULL, '<h5>For general info about St. Mic''s have a good scroll throw below. Also don''t forget to check out our <a href="[sitetree_link id=9]">latest page</a> for current events.<br/>Contact us to find out more.</h5>', 'Connecting', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 0),
(9, 'SectionPage', '2011-11-28 21:31:27', '2012-02-29 00:35:30', 'latest', 'Latest', NULL, '<p style="text-align: right;"><a href="http://www.facebook.com/StMichaelsKelburn"><img class="left" src="themes/stmichaels/images/icon_facebook.png" width="21"/></a> Keep up to date with St Michaels on Facebook</p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 16, 0),
(4, 'ErrorPage', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 8, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, 0),
(5, 'ErrorPage', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 9, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, 0),
(10, 'Page', '2011-11-28 21:36:56', '2012-01-06 12:19:19', 'sunday-school', 'Sunday School', NULL, '<p>St Mic''s has a growing ministry among toddlers and children. In           addition to special programmes, the Sunday School meets every Sunday during           the 10am service. Lessons, music and activities follow the church year and           parallel the Gospel talks at the weekly services.</p>\n<p>Parent involvement is           encouraged.  Once a month (usually on the third Sunday), children stay in           church for a more informal family orientated service. Email <a href="mailto:info@stmichaels.org.nz">Barb</a> to find out more.</p>\n<h4>What''s the Story?</h4>\n<p>What''s the story? is our special Sunday School programme geared to children up           to five years (older children meet seperately). What''s the story? is based upon elements of           the Montessori method and has been primarily developed by Jerome Berryman.           You can find a good overview in the book Young Children in Worship, by           Jerome Berryman and Sonja M. Stewart (this is the book is also used to begin         the classes). There are several key elements to What''s the story?</p>\n<ul><li>An emphasis on the telling of Biblical stories, using             three-dimensional figures and materials, in a way that is engaging and             memorable for the children. </li>\n<li> Carefully worded questions to encourage even very young children in             thoughtful responses. </li>\n<li>Options for the creative response of the child at every lesson:             re-telling the story themselves, drawing, playing with carefully chosen             materials and other craft activities. </li>\n<li>An emphasis on having a respectful, ordered classroom, leaving room             for everyone to participate; the belief that every child has something to             contribute. </li>\n<li>An emphasis on the Church Year and the weekly use of brief             liturgical phrases for the children to learn along with a weekly song. </li>\n<li> Encouraging parents and other interested church members to be             involved in the teaching. </li>\n</ul><p>What''s the story? is best suited to children             aged 2 - 5.  Younger             children from about 18 months can attend with a parent if the parent feels             that the child will be able to give attention.</p>', 'Sunday Schools', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(11, 'Page', '2011-11-28 22:01:24', '2012-01-06 12:18:54', 'home-groups', 'Home groups', NULL, '<p>Home groups meet around the parish and across town. These are not           support groups. They are disciple groups whose goal is maturity in Christ.           By spending time together around the scriptures, by listening and sharing in           each others lives, we build our common life as a parish around being active           followers of Jesus. <a href="mailto:allangels@stmichaels.org.nz">Let us know</a> if you       would like to become part of such a group.</p>', 'Home groups', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 8),
(12, 'Page', '2011-11-28 22:01:46', '2012-01-06 12:19:43', 'bible-studies', 'Bible Studies', NULL, '<p>Studying the bible together is key to the formation of our world   view as a faith community. St Mic''s parish bible studies run in short series   throughout the year.</p>\n<p>These may be thematically based around the church   seasons (Lent, Easter, Pentecost, Advent), topically based (looking at how   the scriptures frame our thinking on issues of our day - such as   environment, wealth and poverty, sexuality and relationships, violence etc),   or working through books of the bible.</p>\n<p>Keep an eye on <a href="latest">latest</a> for the latest.</p>', 'Bible Studies', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(13, 'Page', '2011-11-28 22:01:54', '2012-01-06 12:20:01', 'student-discipleship', 'Student Discipleship', NULL, '<p>Situated in right next door to Victoria University, St. Mic''s has a special burden for discipling   students and graduates. Our ministry reflects this. As well as worship and   bible studies especially geared to this demographic, St. Mic''s also works   closely with AngChap (<a href="http://www.victoria.ac.nz/chaplains/angchap.html">the VUW Anglican Chaplaincy</a>) in its formational   ministry.</p>\n<p>This includes supporting AngChaps lectures, seminars, discussion evenings,   mini conferences, the <a href="http://www.victoria.ac.nz/chaplains/whatson/xnous.html">X NOUS</a> series and action   focussed programmes, such as <a href="http://www.victoria.ac.nz/chaplains/whatson/do-something.html">DO SOMETHING!</a> and <a href="http://www.victoria.ac.nz/chaplains/whatson/newswatch.html">NewsWatch</a>. The parish also owns and overseas student accommodation at <a href="http://www.victoria.ac.nz/chaplains/angchap.html#">Ramsey House</a>.</p>\n<p>These ministries are   all about helping students develop how they see the world and live within it   as followers of Jesus.</p>', 'Student Discipleship', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(14, 'Page', '2011-11-28 22:02:12', '2012-01-06 12:20:20', 'baptisms', 'Baptisms', NULL, '<p>Through baptism we enter into this company of fellow travellers   seeking to put Jesus at the centre of their lives. Baptisms at St Michael''s   are always a special event for the whole church as we celebrate God''s work   in that individual and welcome them into God''s family.</p>\n<p>People wanting to be   baptised, or parents wanting their children baptised, are expected receive   ''catechism'' (instruction), in the faith before they make their public   profession at baptism.</p>\n<p>Because baptism is about entering the faith community, all baptisms are conducted as part of   our main services of worship. See the <a href="mailto:vicar@stmichaels.org.nz">Vicar</a> if you want to find out more.</p>', 'Baptisms', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(15, 'Page', '2011-11-28 22:02:23', '2012-01-06 12:20:48', 'pastoral-care', 'Pastoral Care', NULL, '<p>"By this everyone will know that you are my disciples, if you have love for one another."  <span class="smallitalicp">Jesus - in John 13:35</span></p>\n<p>Caring for each other is at the core of what it means to be God''s   people. The goal of pastoral care is helping us become who God created us to   be. It''s about, wholeness, healing and redemption.</p>\n<p>Everyone is involved in   this ministry though presently we are developing a small team of trained   pastoral carers to give it impetus. The Vicar oversees and is especially   involved in this work. If you have a pastoral or practical need with which you   need help,  <a href="mailto:vicar@stmichaels.org.nz">do make contact</a>.</p>', 'Pastoral Care', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 8),
(16, 'Page', '2012-01-06 11:20:09', '2012-01-06 11:27:10', 'sunday-10am', 'Sunday 10am', NULL, '<p>This is a good time for the family to worship together. Sunday School and crèche run during the first           half of the service before we gather together around the Lord''s table. Services may be more or less formal depending on the           Sunday. Details are posted regularly on the outside noticeboard as well as           on this website. Catch up with others over a coffee afterwards.</p>', 'Sunday 10am', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 6),
(17, 'Page', '2012-01-06 11:21:35', '2012-01-06 11:27:23', 'sunday-7pm', 'Sunday 7 pm - ''Substance''', 'Sunday 7pm', '<p>Substance is a university orientated communion service.         Committed to formational worship among  future generation leadership of         our society, Substance seeks to  express an "ancient-future" faith, merging tradition with innovation. Services         include weightier sermons, an eclectic mix of music, interaction and open prayer. Though geared       to university students and staff, all are welcome.</p>', 'Sunday 7pm', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 6, 6),
(18, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:27:55', 'sunday-8am', 'Sunday 8am', NULL, '<p>The ''8 O''Clockers'' gather every Sunday for a prayer-book             communion service with a hymn and Gospel talk. The worship is characterised             by a reflective spirituality which gives space to those who attend.  At the             same time there is a closeness about this congregation which extends into             the week. Though many have been worshipping at this service for  a             considerable time, new worshippers are always warmly welcomed.</p>', 'Sunday 8am', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, 6),
(20, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:24:11', 'morning-prayer', 'Morning Prayer', NULL, '<p>St. Mic''s has a commitment to prayer as part of its life in             God. Each Tuesday, Wednesday and Thursday at 7:30am there is morning prayer             in the church. This is the unseen "engine room" of parish life where we give             thanks for God''s goodness, uphold and intercede for God''s mission and             ministry in Kelburn and beyond.</p>\n<p>On the first Tuesday of every month prayers begin at 7am when we especially             focus on the global mission of the church and our mission partners who serve             abroad. Normally these prayers are accompanied by coffee and croissant and           transport is provided for those who have to get down town by 8am.</p>\n<p>All are welcome at these prayer times.</p>', 'Morning Prayer', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, 6),
(19, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:25:13', 'occasional-services', 'Occasional Services', NULL, '<p>In addition to regular services, special services are held at Easter, Christmas, feast days and other great occasions, such as weddings and baptisms. Again, keep an eye on this site from time to time for details of what is happening week to week.</p>', 'Occasional Services', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 6),
(21, 'Page', '2012-01-06 11:22:23', '2012-01-06 11:25:30', 'music-at-st-mic-s', 'Music at St Mic''s', NULL, '<p>Traditionally a fairly "trad" style of music has characterised St Michael''s worship. In recent years we have evolved to a more eclectic mix. You won''t find rock ''n roll church when you visit us but you will find good music in a variety of styles.</p>', 'Music at St Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 6),
(24, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:18:10', 'get-in-touch', 'Get in Touch', NULL, '<p>Together the Vicar and Parish Vestry oversee the life of St. Michael''s.</p>\n<p>Our Vicar, David Newton, tries to be pastorally available to any who have           need. He can also refer you to others in the parish or beyond who may be           able to help. You can contact David at:          <a href="mailto:vicar@stmichaels.org.nz">vicar@stmichaels.org.nz</a> or through the church office: 04,9349338.</p>\n<p>The People’s Warden (Warick Dunn), especially represents the wider interests           of the parish. You can contact Warick at: <a href="mailto:allangels@stmichaels.org.nz">allangels@stmichaels.org.nz</a>.         Alternatively, leave a message on the parish voice mail.</p>', 'Get in Touch', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(25, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:18:24', 'finding-st-mic-s', 'Finding St. Mic''s', NULL, '<p>St Michael''s is found right in the heart of Kelburn Village at 81 Upland           Road, Wellington.</p>\n<p><a href="http://maps.google.co.nz/maps?q=81+Upland+Road,+Wellington&amp;ll=-41.289444,174.762783&amp;spn=0.001653,0.003455&amp;client=safari&amp;oe=UTF-8&amp;hnear=81+Upland+Rd,+Kelburn+6012,+Wellington&amp;gl=nz&amp;t=m&amp;z=19&amp;vpsrc=6">Click here</a> to see how you can get to St. Michael’s.</p>', 'Finding St. Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 8, 3),
(26, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:16:58', 'weddings-at-st-mic-s', 'Weddings at St. Mic''s', NULL, '<p>A wedding is one of life’s great moments, a time for good wishes, partying            and joy. Yet, marriage is also a serious undertaking “based upon a solemn,           public and life long covenant between a man and a woman” <span class="smallitalicp">New Zealand Prayer           Book ~ He Karakia Mihinare O Aotearoa</span>. As such it is to be entered into         thoughtfully and prayerfully before God.</p>\n<p>For these reasons all couples coming for marriage at St. Mic’s must commit           to pre-marriage preparation. We use an adapted version of<em> Prepare Enrich</em> for this         though we are open using other material.</p>\n<p>Since our tikanga is Anglican, we use the  Prayer Book as the           basis of our wedding ceremonies. Normally, it is the St. Michael’s Vicar who         takes the service as he represents the wider faith community.</p>\n<p>We see our church as a sacred space where the faith community gathers to           pray and worship together. The wedding service is one aspect of this. In           line with the policy of our wider church (<a href="http://wn.anglican.org.nz/">Diocese of Wellington</a>), we do not           hire our church as a venue. At least one of the couple should have a           tangible connection with St. Mic’s. If this connection is from the past you         may wish to renew it.</p>\n<p>There is no fee for the service or the Vicar’s           time though all donations are gratefully received. There is a fee for the organist and Verger.</p>\n<p>If you are in doubt about being married at St. Mic’s, feel free to email the <a href="mailto:vicar@stmichaels.org.nz">Vicar</a> to discuss things further.</p>', 'Weddings at St. Mic''s ', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(27, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:17:27', 'funerals', 'Funerals', NULL, '<p>If you are reading this it may be because you have lost a loved one and are           grieving. We would like to be there for you in this. Call or <a href="mailto:vicar@stmichaels.org.nz">email</a> the Vicar         to discuss: 04,9349338.</p>\n<p>To avoid embarrassment, please be aware that only licensed Anglican           celebrants can take funeral services in the church. While we try to remain           flexible and sensitive to each person’s needs, we also have certain           contraints around the form of the service and music.</p>\n<p><img class="logospace2" src="themes/stmichaels/images/Lychgate logo 2 2011.jpg" alt="Lychgate logo" width="78" height="31"/></p>', 'Funerals', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(28, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:16:11', 'parish-hall', 'Parish Hall', NULL, '<p>The St. Mic’s hall is a great community facility but is in high demand for           twenty-firsts, dances, community group events and other private functions.           The church also uses it for a variety of purposes. Weekday afternoons and           evenings are mostly taken up with ballet dancing. This means you will have           to book well ahead if you are to get the day or time you want.</p>\n<p>Hire rates depend on what you want to use the hall for. For more information           contact the parish admin person (in on Mondays and Thursdays and other           random days), email <a href="mailto:info@stmichaels.org.nz">info@stmichaels.org.nz</a>.</p>', 'Parish Hall', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(29, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:15:52', 'inside-st-mic-s', 'Inside St. Mic’s', NULL, '<p>Late 2010 Greg McKenzie happened by St. Mic’s while he was looking for a           coffee. He wondered inside and couldn''t resist taking some snaps with his           panorama kit. Use the controls on the photo above to have a look through our         church – scroll around, zoom in and out, look down and up. Take your time…</p>\n<p>While you’re looking around, <a href="history">click here</a> for more info on  stained glass and  banners.</p>', 'Inside St. Mic’s', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(22, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:13:20', 'taonga', 'Taonga', NULL, '<p>“…the kingdom of heaven is like the master of a household who brings out of           his treasure what is new and what is old." <span class="smallitalicp">Matthew 13:52</span></p>\n<h4>Enlightenment</h4>\n<p>In September 2010, local artist Lorraine Tarrant staged an exhibition <em>Enlightenment</em> in the church to celebrate St. Michael’s day. Lorraine           produced a delightful series of thirty paintings based around details from           the St. Michael’s leadlight windows and  Kelburn Village. With wit and           insight she explores the relationship between the transcendent and the           mundane. <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/church.jpg"> </a><a title="LORRAINE TARRANT THE ARTIST OF ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Lorraine.jpg"> Click</a> to view <em>Enlightenment</em>.</p>\n<div style="display:none;"><a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/church.jpg"> Church </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Juliette Florist.jpg"> Juliette Florist </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/4 Square.jpg"> 4 square </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/angel.jpg"> Angel </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/cablecar.jpg"> Cable Car </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/germanbakery.jpg"> German Bakery </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Glengarry.jpg"> Glengarry </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/telephone.jpg"> Holy Car </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/IMG_0102.jpg"> Village </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Kelburn Butchery.jpg"> Kelburn Butchery </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/kelburncafe.jpg"> Kelburn Cafe </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/kelburndeli.jpg"> Kelburn Deli </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/KElburnpharmacy.jpg"> Kelburn Pharmacy</a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Paradise Seafoods.jpg"> Paradise Seafoods </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/petdoctors.jpg"> Pet Docters </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/pratha2go.jpg"> Pratha 2 Go </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/quickcash.jpg"> Quick Cash </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/redtomatos.jpg"> Red Tomatos </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/terise.jpg"> Terise </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/trees.jpg"> Trees </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/watchmaker.jpg"> Watchmaker </a></div>\n<h4>A Wintery Spirituality</h4>\n<p>Over 2006 / 2007 St. Michael’s celebrated it’s centenary. It was a cold           winter though the early signs of the church’s new spring were just beginning           to show. <a href="http://www.craigthomson.co.nz/">Craig Thomson</a> documented the life of the parish over the wintery centenary.         <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/1.jpg">Click</a> to view his photo essay.</p>\n<div style="display:none;"><a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/2.jpg">Image 2</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/3-Bishop.jpg">Image 3</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/4.jpg">Image 4</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/5-communion.jpg">Image 5</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/6-organ.jpg">Image 6</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/prayerbook.jpg">Image 8</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/wordbeingread.jpg">Image 9</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/recievingcommunion.tif">Image 10</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/8.jpg">Image 11</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/9.jpg">Image 12</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/10.jpg">Image 13</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/11.jpg">Image 14</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/12.jpg">Image 15</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/13.jpg">Image 16</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/ladiescuppa.jpg">Image 17</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/kids.jpg">Image 18</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/kirstydishes.jpg">Image 19</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/17.jpg">Image 20</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/18.jpg">Image 21</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/19.jpg">Image 22</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/20.jpg">Image 23</a></div>', 'Taonga', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 3),
(30, 'Page', '2012-01-06 12:09:33', '2012-01-06 12:12:38', 'friends', 'Friends', NULL, '<p>People who enjoy worshipping at St. Mic''s also have           connections with others on a similar journey. You might try browsing one of           these...</p>\n<p><a href="http://publicchristianity.org/"><img class="logos" src="themes/stmichaels/images/connecting/logos/CPClogo.jpg" alt="Centre of Public Christianity" width="200" height="43"/></a><a href="http://www.nzcms.org.nz/"><img class="logos" src="themes/stmichaels/images/connecting/logos/nzcmslogo.jpg" alt="NZ Church Missionary Society" width="114" height="42"/></a></p>\n<p><a href="http://www.ship-of-fools.com/"><img class="logospace" src="themes/stmichaels/images/connecting/logos/shipoffoolslogo.jpg" alt="ship of fools" width="151" height="27"/></a></p>', 'Friends', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, 3),
(23, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:11:57', 'parish-registry', 'Parish Registry', NULL, '<p>The Parish Registry link is below. You will need a password to open the           registry. Please email <a href="mailto:info@stmichaels.org.nz">info@stmichaels.org.nz</a> if you wish to have access.           Proof of identity will be required and a referee. Please be aware that we           retain the right to withhold information that may be requested without         explanation.</p>\n<h3><a href="baptisms, weddings &amp; funerals from old website.pdf">Registry of Babtisms, Weddings and Funerals</a></h3>', 'Parish Registry', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 3),
(31, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:28:03', 'windmill-songs', 'Windmill Songs', NULL, '<p>Windmill Songs meets every Friday in the church hall. There are two (separate) sessions - 9:30am and 10:30am. Morning tea for both groups is  at 10:00am.</p>\n<p>Windmill Songs is an  interactive and varied music and movement           experience geared to           parents and care givers with babies and tots, it''s an opportunity to meet           and socialise with other families in the area. It also encourages valuable           one-on-one time between adults and children...</p>\n<p>Sessions are led           live from the piano, and feature a variety of orchestral, jazz, and folk           instruments, as well as songs, poems, stories and actions. The sessions are           relaxed and fun, with an emphasis on quality musicianship and a variety of         musical experiences for the children.</p>\n<p>All are welcome - just turn           up and join in!          <strong>$4.00 child / $2.00 sibling / babies under 4 months free. </strong></p>\n<p><a href="PDFs/windmillsongs.pdf"><img class="logoallign" src="themes/stmichaels/images/windmill.jpg" alt="Windmill Songs PDF" width="43" height="44"/></a></p>', 'Windmill Songs', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(32, 'Page', '2012-01-06 12:26:04', '2012-03-06 01:35:47', 'global-mission-group', 'Global Mission Group', NULL, '<p>''From everywhere to everywhere'', the title of Nazir  Ali''s great little <a href="http://www.amazon.com/Everywhere-World-View-Christian-Mission/dp/1606082965 /ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1310387561&amp;sr=1-1">book</a> sums up what the St. Mic''s Global Mission Group is on about. Global Mission is the calling of the whole church to proclaim the whole gospel throughout the whole world.</p>\n<p>The Global Mission Group  fosters this understanding of the church’s task within our parish and beyond. <a href="[sitetree_link id=47]">Read more…</a></p>', 'Global Mission Group', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 7),
(33, 'Page', '2012-01-06 12:26:04', '2012-02-27 03:46:25', 'going-up-country', 'Going Up Country', NULL, '<h1>In 2006, the Vicar and three young people from our parish (Ben Sando, Harry Newton and Miriam Plume),  went on a         Mission Discovery Trip to Tanzania.</h1>\n<p>''Going Up Country'' records the agony and the           ecstasy, the challenge and the hope of the indigenous church they         encountered there. <a rel="prettyPhoto" href="http://vimeo.com/33102231">Click</a> here to watch the movie.</p>\n<p>These days Ben is working as an architect in Melbourne           and retains an active interest in the global Christian movement. Harry is           training for ordination and intends to return to Tanzania as a mission           partner. Miriam stayed on to work in Tanzania at the end of the trip and now heads up the Global Mission Group. Click here to see an interview of Miriam as she reflects on her time away.</p>\n<p>St. Mic''s commitment to Global           Mission continues.</p>\n<p><img class="logoallign" src="themes/stmichaels/images/goingupcountrylogo.png" alt="Going Up Country" width="65" height="27"/></p>', 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 9, 7),
(34, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:30:11', 'angchap-and-human-fm', 'AngChap and Human FM', NULL, '<p>The <a href="http://www.victoria.ac.nz/chaplains/angchap.html">VUW Chaplaincy</a> and its short reach           radio station <a href="http://www.humanfm.co.nz">Human FM</a>, are sister ministries           that we support in lots of ways. We share resources and people and get           involved in each others outreach programmes - especially to students.</p>\n<p>To hear Human FM check           out the links on this page. Also have a read of the article in the <a href="mikel news spring 2009.pdf">spring 2009           edition</a> of MiKel News. Interesting...</p>\n<p><a href="http://www.humanfm.co.nz"><img class="logoallign" src="themes/stmichaels/images/humanFM.png" alt="humanFM" width="59" height="31"/></a><a href="http://www.victoria.ac.nz/chaplains/angchap.html"><img class="logoallign" src="themes/stmichaels/images/AngChap.jpg" alt="AngChap" width="63" height="34"/></a></p>', 'AngChap and Human FM', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(35, 'Page', '2012-01-06 12:26:05', '2012-01-06 12:30:50', 'classroom-assist-and-disaster-preparedness', 'Classroom Assist and Disaster Preparedness', NULL, '<p>Helping in our local           primary school and helping our community to prepare for an event we all hope           won''t happen are two initiatives we began in 2009. There good articles on           both these programmes in the <a href="mikel news spring 2009.pdf">2009 Spring edition</a> of MiKel News archived at           the bottom of this page. Click and scroll through to have a read.</p>\n<p>At the           moment we''re looking for two volunteer coordinators to take this work           forward. If that might be you do get in touch        with the <a href="mailto:vicar@stmichaels.org.nz">vicar</a>.</p>', 'Classroom Assist and Disaster Preparedness', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(36, 'Page', '2012-01-06 12:26:05', '2012-03-06 01:38:54', 'wellington-city-mission', 'Wellington City Mission', NULL, '<p><a href="http://www.wellingtoncitymission.org.nz/"><img src="themes/stmichaels/images/wcmlogo.jpg" alt="Wellington City Mission" width="84" height="43" align="right"/></a> The Wellington City Mission does great work among Wellingtonians  who need special assistance in some way. We''re grateful to be part of this work through our           food bank, street collections, giving money and prayer. Keep and eye on our <a href="latest.html">latest</a> page for appeals and other ways you can become involved.</p>\n<p>Meantime, also have a look at the City Mission''s own <a href="http://www.wellingtoncitymission.org.nz">website</a> for a full description of           their fantastic work.</p>', 'Wellington City Mission', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 6, 7),
(37, 'Page', '2012-01-06 12:26:58', '2012-03-06 01:42:29', 'kelburn-fair', 'Kelburn Fair', NULL, '<p>Every year St. Mic''s organises the St. Michael''s and           Kelburn Village Fair. Usually held  on the third Saturday in March, over the years it''s become a landmark community           event.</p>\n<p><span style="color: #a4998c; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: left;">All sorts of people from across town and within Kelburn get involved. Maybe you could be one of them? Check <a href="[sitetree_link id=9]">Latest</a> for more info. </span></p>\n<p>Proceeds from the fair           typically go to supporting community outreach programmes in Kelburn,           maintaining the church (community) hall and supporting the <a href="http://www.carpenterskids.net/">Carpenter''s Kids programme</a> in Tanzania.</p>', 'v', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 7),
(39, 'Page', '2012-01-06 12:26:59', '2012-01-06 12:32:28', 'mikel-news', 'MiKel News', NULL, '<p>Our parish broadsheet, MiKel News goes out to around 1200 homes,           plus around 100 individuals and other outlets. Each issue is a combo of           news, adverts and something to challenge. Both issues linked at the bottom of           this page are good examples of MiKel News and tell you a lot about our           community and who we are.</p>\n<p>We''re always looking for stories and we''re           especially looking for someone to put issues together. Have a read and if           you''re inspired <a href="mailto:allangels@stmichaels.org.nz">get   in touch.</a></p>\n<p><a href="PDFs/mikelnews_xmas2010.pdf"><img class="logoallign" src="themes/stmichaels/images/miklnewsxmas10logo.png" alt="Mikel News Xmas20110" width="89" height="32"/></a><a href="PDFs/mikelnews-easter2011.pdf"><img class="logoallign" src="themes/stmichaels/images/mikelnewsspringlogo.png" alt="Mikel News Spring 2011" width="89" height="33"/></a></p>', 'MiKel News', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, 7),
(38, 'Page', '2012-01-06 12:26:58', '2012-01-06 12:33:01', 'guess-who-s-coming-for-dinner', 'Guess who''s coming for dinner?', NULL, '<p>One of the great things about being part of God’s family is celebrating its unity in diversity —“There is no longer Jew or Greek, there is no longer slave or free, there is no longer male and female; for all of you are one in Christ Jesus.” <span class="smallitalicp">Saint Paul writing to the Galatian Christians</span></p>\n<p>St Mic’s is a very diverse parish. We enjoy this and like to celebrate it. Different St. Mic’s congregations get to meet each other at parish events throughout the year (bible studies, dances, home groups, movie nights, the fair etc. etc). <em>Guess who’s coming to dinner?</em> is an initiative aimed at extending these contacts by getting to know each other better in each other’s homes. These meals are usually run two or three times a year. If you want to find out when the next <em>Guess Who’s coming to dinner</em> is happening, email <a href="mailto:info@stmichaels.org.nz">info@stmichaels.org.nz</a> — or call 04,934 9338 and leave a message.</p>', 'Guess who''s coming for dinner?', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(40, 'Page', '2012-02-28 23:38:09', '2012-02-29 00:46:13', 'sermons', 'Sermons', NULL, '<p><a href="#"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Sermon #1</a></p>\n<p><a href="#"> </a></p>\n<p><a href="#"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Sermon #2</a></p>\n<p><a href="#"> </a></p>\n<p><a href="#"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Sermon #3</a></p>', 'Sermons', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 9),
(41, 'Page', '2012-02-28 23:48:24', '2012-02-28 23:48:55', 'mikel-news', 'MiKel News', NULL, NULL, 'MiKel News', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 9),
(44, 'MorePage', '2012-02-29 04:07:13', '2012-02-29 04:22:19', 'bonhoeffer', 'Thus spake Bonhoeffer', 'Bonhoeffer', '<p>‘A Christianity in which there is only God the Father, but not Christ as a living Son actually cancels discipleship. In that case there will be trust in God, but not discipleship … Discipleship is a commitment to following Christ. Because Christ exists, he must be followed. An idea about Christ, a doctrinal system, a general religious recognition of grace or forgiveness of sins does not require discipleship. In truth, it even excludes discipleship; it is inimical to it. One enters into a relationship with an idea by way of knowledge, enthusiasm, perhaps even by carrying it out, but it is by personal obedient discipleship [that we enter into a relationship with the living Jesus].’</p>\n<p>From <em>The Cost of Discipleship</em>, p.59</p>', 'Bonhoeffer', NULL, NULL, NULL, 0, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 6, 8),
(45, 'MorePage', '2012-02-29 04:46:11', '2012-02-29 04:47:53', 'worship', 'Worship', NULL, '<p>According to Romans 12 verses 1 and 2, worship is about offering up the whole of our lives to God. The language here is about temple sacrifice but Paul locates our ‘true spiritual worship’, outside the temple in everyday life.</p>\n<p>So what are we doing each Sunday when we assemble together? Why is it important? One writer has summed it up as ‘parable and encounter’ — telling the story and meeting God together... Why not come to one of our services and find out for yourself?</p>', 'Worship', NULL, NULL, NULL, 0, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 6),
(46, 'MorePage', '2012-03-06 01:14:17', '2012-03-06 01:15:36', 'citizens-of-god-s-world', 'Citizens of God''s world', NULL, '<p>…That’s why we do stuff that serves our community in different ways. It is also why we support organisations and people around the globe who are doing the same. We encourage all our parishioners to take the good news about Jesus into their everyday lives - telling of God''s reconciling love and working for God’s justice however they can.</p>\n<p>Have a browse through just some of our activities. Maybe you could become involved. Maybe there is something you are interested in starting up. Let us know.</p>', 'Citizens of God''s world', NULL, NULL, NULL, 0, 1, NULL, 0, 10, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, 7),
(47, 'MorePage', '2012-03-06 01:33:07', '2012-03-06 01:35:47', 'global-misson-group', 'Global Misson Group', 'Global Misson Group (more)', '<p>''From everywhere to everywhere'', the title of Nazir Ali''s great little <a href="http://www.amazon.com/Everywhere-World-View-Christian-Mission/dp/1606082965 /ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1310387561&amp;sr=1-1">book</a> sums up what the St. Mic''s Global Mission Group is on about. Global Mission is the calling of the whole church to proclaim the whole gospel throughout the whole world.</p>\n<p>The Global Mission Group fosters this understanding of the church''s task within our parish and beyond. It does this by...</p>\n<ul><li>Praying for our mission partners serving Christ throughout the world (especially at the GMG''s Coffee, Croissant and Prayer Breakfast on the first Tuesday of every month)</li>\n<li>Organising visits by mission partners from abroad, seminars, bible studies and a yearly Global Mission Month to both educate parishioners about the global mission task of our church and encourage their active support of this work.</li>\n<li>Raising money (social events, auctions, personal giving etc.), for the direct support of individual global mission partners, the wider work of the Anglican Mission Board and the Church Missionary Society.</li>\n<li>Identifying potential mission partners from within our own congregations and encouraging them to consider God''s call on their lives.</li>\n</ul><p>Presently, St Mic''s is especially supporting Rosie Fyfe who is working with the church in Cairo. Rosie''s task is to find partners from around the world to help in the church''s outreach programme (health, education, pastoral care, refugee work etc). Have a read of one of <a href="PDFs/RosieLetter - July 2010.pdf">Rosie''s letters</a>.</p>\n<p>If you would like to find out more about GMG events or how you could help promote global mission interest, email <a href="mailto:mission@stmichaels.org.nz ">mission@stmichaels.org.nz</a></p>', 'Global Missons Group', NULL, NULL, NULL, 0, 1, NULL, 0, 11, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_versions`
--

CREATE TABLE IF NOT EXISTS `sitetree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','MorePage','Page','HomePage','SplashPage','ErrorPage','RedirectorPage','VirtualPage','SectionPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ToDo` mediumtext CHARACTER SET utf8,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=219 ;

--
-- Dumping data for table `sitetree_versions`
--

INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(2, 2, 1, 1, 0, 0, 'Page', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br/></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(3, 3, 1, 1, 0, 0, 'Page', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br/></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2011-11-28 21:21:06', '2011-11-28 21:21:06', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 5, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0),
(6, 1, 2, 0, 1, 0, 'Page', '2011-11-28 21:21:06', '2011-11-28 21:29:14', 'home', 'Home', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(7, 1, 3, 1, 1, 1, 'SplashPage', '2011-11-28 21:21:06', '2011-11-28 21:29:21', 'home', 'Home', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(8, 2, 2, 1, 1, 1, 'Page', '2011-11-28 21:21:06', '2011-11-28 21:29:56', 'main', 'Home', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(9, 3, 2, 1, 1, 1, 'Page', '2011-11-28 21:21:06', '2011-11-28 21:30:08', 'connecting', 'Connecting', NULL, NULL, 'Connecting', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(10, 6, 1, 0, 1, 0, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:17', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1),
(11, 7, 1, 0, 1, 0, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:17', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1),
(12, 8, 1, 0, 1, 0, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:17', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 6),
(13, 7, 2, 0, 1, 0, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:21', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(14, 7, 3, 0, 1, 0, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:21', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(15, 8, 2, 0, 1, 0, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:22', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(16, 8, 3, 0, 1, 0, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:22', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(17, 2, 3, 0, 1, 0, 'Page', '2011-11-28 21:21:06', '2011-11-28 21:30:24', 'main', 'Home', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(18, 6, 2, 0, 1, 0, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:28', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(19, 6, 3, 0, 1, 0, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:28', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(20, 1, 4, 1, 1, 1, 'SplashPage', '2011-11-28 21:21:06', '2011-11-28 21:30:41', 'home', 'St Michael''s', NULL, NULL, 'St Michael''s', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(21, 6, 4, 1, 1, 1, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:30:54', 'honouring', 'Honouring', NULL, NULL, 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(22, 8, 4, 1, 1, 1, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:31:04', 'following', 'Following', NULL, NULL, 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(23, 7, 4, 1, 1, 1, 'Page', '2011-11-28 21:30:17', '2011-11-28 21:31:12', 'engaging', 'Engaging', NULL, NULL, 'Engaging', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(24, 9, 1, 0, 1, 0, 'ErrorPage', '2011-11-28 21:31:27', '2011-11-28 21:31:27', 'new-errorpage', 'New ErrorPage', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 9, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0),
(25, 9, 2, 1, 1, 1, 'Page', '2011-11-28 21:31:27', '2011-11-28 21:31:38', 'latest', 'Latest', NULL, NULL, 'Latest', NULL, NULL, NULL, 0, 0, NULL, 0, 9, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 0),
(26, 9, 3, 0, 1, 0, 'Page', '2011-11-28 21:31:27', '2011-11-28 21:31:42', 'latest', 'Latest', NULL, NULL, 'Latest', NULL, NULL, NULL, 0, 0, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(27, 10, 1, 0, 1, 0, 'Page', '2011-11-28 21:36:56', '2011-11-28 21:36:56', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8),
(28, 10, 2, 1, 1, 1, 'Page', '2011-11-28 21:36:56', '2011-11-28 21:37:10', 'sunday-school', 'Sunday School', NULL, NULL, 'Sunday Schools', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 8),
(29, 11, 1, 0, 1, 0, 'Page', '2011-11-28 22:01:24', '2011-11-28 22:01:24', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8),
(30, 11, 2, 0, 1, 0, 'Page', '2011-11-28 22:01:24', '2011-11-28 22:01:31', 'home-groups', 'Home groups', NULL, NULL, 'Home groups', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 8),
(31, 11, 3, 1, 1, 1, 'Page', '2011-11-28 22:01:24', '2011-11-28 22:01:34', 'home-groups', 'Home groups', NULL, NULL, 'Home groups', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8),
(32, 12, 1, 0, 1, 0, 'Page', '2011-11-28 22:01:46', '2011-11-28 22:01:46', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8),
(33, 12, 2, 1, 1, 1, 'Page', '2011-11-28 22:01:46', '2011-11-28 22:01:51', 'bible-studies', 'Bible Studies', NULL, NULL, 'Bible Studies', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 8),
(34, 13, 1, 0, 1, 0, 'Page', '2011-11-28 22:01:54', '2011-11-28 22:01:54', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8),
(35, 13, 2, 1, 1, 1, 'Page', '2011-11-28 22:01:54', '2011-11-28 22:02:06', 'student-discipleship', 'Student Discipleship', NULL, NULL, 'Student Discipleship', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 8),
(36, 14, 1, 0, 1, 0, 'Page', '2011-11-28 22:02:12', '2011-11-28 22:02:12', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8),
(37, 14, 2, 1, 1, 1, 'Page', '2011-11-28 22:02:12', '2011-11-28 22:02:17', 'baptisms', 'Baptisms', NULL, NULL, 'Baptisms', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 8),
(38, 15, 1, 0, 1, 0, 'Page', '2011-11-28 22:02:23', '2011-11-28 22:02:23', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8),
(39, 15, 2, 1, 1, 1, 'Page', '2011-11-28 22:02:23', '2011-11-28 22:02:28', 'pastoral-care', 'Pastoral Care', NULL, NULL, 'Pastoral Care', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 8),
(40, 16, 1, 0, 1, 0, 'Page', '2012-01-06 11:20:09', '2012-01-06 11:20:09', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 6),
(41, 16, 2, 1, 1, 1, 'Page', '2012-01-06 11:20:09', '2012-01-06 11:21:20', 'sunday-10am', 'Sunday 10am', NULL, '<h2>Sunday 10 am</h2>\n<p>This is a good time for the family to worship together. Sunday School and crèche run during the first           half of the service before we gather together around the Lord''s table. Services may be more or less formal depending on the           Sunday. Details are posted regularly on the outside noticeboard as well as           on this website. Catch up with others over a coffee afterwards.</p>', 'Sunday 10am', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 6),
(42, 17, 1, 0, 1, 0, 'Page', '2012-01-06 11:21:35', '2012-01-06 11:21:35', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 6),
(43, 18, 1, 0, 1, 0, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:21:39', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 6),
(44, 19, 1, 0, 1, 0, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:21:39', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 6),
(45, 20, 1, 0, 1, 0, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:21:39', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18),
(46, 17, 2, 1, 1, 1, 'Page', '2012-01-06 11:21:35', '2012-01-06 11:21:50', 'sunday-7pm', 'Sunday 7pm', NULL, NULL, 'Sunday 7pm', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 6),
(47, 18, 2, 1, 1, 1, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:21:57', 'sunday-8am', 'Sunday 8am', NULL, NULL, 'Sunday 8am', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 6),
(48, 20, 2, 0, 1, 0, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:22:04', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(49, 20, 3, 0, 1, 0, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:22:04', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(50, 20, 4, 1, 1, 1, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:22:11', 'morning-prayer', 'Morning Prayer', NULL, NULL, 'Morning Prayer', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(51, 19, 2, 1, 1, 1, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:22:21', 'occasional-services', 'Occasional Services', NULL, NULL, 'Occasional Services', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 6),
(52, 21, 1, 0, 1, 0, 'Page', '2012-01-06 11:22:23', '2012-01-06 11:22:23', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 6),
(53, 21, 2, 1, 1, 1, 'Page', '2012-01-06 11:22:23', '2012-01-06 11:22:34', 'music-at-st-mic-s', 'Music at St Mic''s', NULL, NULL, 'Music at St Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 6),
(54, 17, 3, 1, 1, 1, 'Page', '2012-01-06 11:21:35', '2012-01-06 11:23:08', 'sunday-7pm', 'Sunday 7pm', NULL, '<h2>Sunday 7 pm - ''Substance''</h2>\n<p>Substance is a university orientated communion service.         Committed to formational worship among  future generation leadership of         our society, Substance seeks to  express an "ancient-future" faith, merging tradition with innovation. Services         include weightier sermons, an eclectic mix of music, interaction and open prayer. Though geared       to university students and staff, all are welcome.</p>', 'Sunday 7pm', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(55, 18, 3, 1, 1, 1, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:23:36', 'sunday-8am', 'Sunday 8am', NULL, '<h2>Sunday 8am</h2>\n<p>The ''8 O''Clockers'' gather every Sunday for a prayer-book             communion service with a hymn and Gospel talk. The worship is characterised             by a reflective spirituality which gives space to those who attend.  At the             same time there is a closeness about this congregation which extends into             the week. Though many have been worshipping at this service for  a             considerable time, new worshippers are always warmly welcomed.</p>', 'Sunday 8am', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(56, 20, 5, 1, 1, 1, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:24:11', 'morning-prayer', 'Morning Prayer', NULL, '<p>St. Mic''s has a commitment to prayer as part of its life in             God. Each Tuesday, Wednesday and Thursday at 7:30am there is morning prayer             in the church. This is the unseen "engine room" of parish life where we give             thanks for God''s goodness, uphold and intercede for God''s mission and             ministry in Kelburn and beyond.</p>\n<p>On the first Tuesday of every month prayers begin at 7am when we especially             focus on the global mission of the church and our mission partners who serve             abroad. Normally these prayers are accompanied by coffee and croissant and           transport is provided for those who have to get down town by 8am.</p>\n<p>All are welcome at these prayer times.</p>', 'Morning Prayer', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(57, 18, 4, 1, 1, 1, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:24:18', 'sunday-8am', 'Sunday 8am', NULL, '<h2><span style="font-size: 10px; font-weight: normal;">The ''8 O''Clockers'' gather every Sunday for a prayer-book             communion service with a hymn and Gospel talk. The worship is characterised             by a reflective spirituality which gives space to those who attend.  At the             same time there is a closeness about this congregation which extends into             the week. Though many have been worshipping at this service for  a             considerable time, new worshippers are always warmly welcomed.</span></h2>', 'Sunday 8am', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(58, 17, 4, 1, 1, 1, 'Page', '2012-01-06 11:21:35', '2012-01-06 11:24:38', 'Sunday-7pm', 'Sunday 7 pm - ''Substance''', 'Sunday 7pm', '<h2><span style="font-size: 10px; font-weight: normal;">Substance is a university orientated communion service.         Committed to formational worship among  future generation leadership of         our society, Substance seeks to  express an "ancient-future" faith, merging tradition with innovation. Services         include weightier sermons, an eclectic mix of music, interaction and open prayer. Though geared       to university students and staff, all are welcome.</span></h2>', 'Sunday 7pm', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(59, 17, 5, 1, 1, 1, 'Page', '2012-01-06 11:21:35', '2012-01-06 11:24:43', 'sunday-7pm', 'Sunday 7 pm - ''Substance''', 'Sunday 7pm', '<h2><span style="font-size: 10px; font-weight: normal;">Substance is a university orientated communion service.         Committed to formational worship among  future generation leadership of         our society, Substance seeks to  express an "ancient-future" faith, merging tradition with innovation. Services         include weightier sermons, an eclectic mix of music, interaction and open prayer. Though geared       to university students and staff, all are welcome.</span></h2>', 'Sunday 7pm', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(60, 16, 3, 1, 1, 1, 'Page', '2012-01-06 11:20:09', '2012-01-06 11:24:50', 'sunday-10am', 'Sunday 10am', NULL, '<h2><span style="font-size: 10px; font-weight: normal;">This is a good time for the family to worship together. Sunday School and crèche run during the first           half of the service before we gather together around the Lord''s table. Services may be more or less formal depending on the           Sunday. Details are posted regularly on the outside noticeboard as well as           on this website. Catch up with others over a coffee afterwards.</span></h2>', 'Sunday 10am', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(61, 19, 3, 1, 1, 1, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:25:13', 'occasional-services', 'Occasional Services', NULL, '<p>In addition to regular services, special services are held at Easter, Christmas, feast days and other great occasions, such as weddings and baptisms. Again, keep an eye on this site from time to time for details of what is happening week to week.</p>', 'Occasional Services', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(62, 21, 3, 1, 1, 1, 'Page', '2012-01-06 11:22:23', '2012-01-06 11:25:30', 'music-at-st-mic-s', 'Music at St Mic''s', NULL, '<p>Traditionally a fairly "trad" style of music has characterised St Michael''s worship. In recent years we have evolved to a more eclectic mix. You won''t find rock ''n roll church when you visit us but you will find good music in a variety of styles.</p>', 'Music at St Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(63, 16, 4, 1, 1, 1, 'Page', '2012-01-06 11:20:09', '2012-01-06 11:27:10', 'sunday-10am', 'Sunday 10am', NULL, '<p>This is a good time for the family to worship together. Sunday School and crèche run during the first           half of the service before we gather together around the Lord''s table. Services may be more or less formal depending on the           Sunday. Details are posted regularly on the outside noticeboard as well as           on this website. Catch up with others over a coffee afterwards.</p>', 'Sunday 10am', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(64, 17, 6, 1, 1, 1, 'Page', '2012-01-06 11:21:35', '2012-01-06 11:27:23', 'sunday-7pm', 'Sunday 7 pm - ''Substance''', 'Sunday 7pm', '<p>Substance is a university orientated communion service.         Committed to formational worship among  future generation leadership of         our society, Substance seeks to  express an "ancient-future" faith, merging tradition with innovation. Services         include weightier sermons, an eclectic mix of music, interaction and open prayer. Though geared       to university students and staff, all are welcome.</p>', 'Sunday 7pm', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(65, 18, 5, 1, 1, 1, 'Page', '2012-01-06 11:21:39', '2012-01-06 11:27:55', 'sunday-8am', 'Sunday 8am', NULL, '<p>The ''8 O''Clockers'' gather every Sunday for a prayer-book             communion service with a hymn and Gospel talk. The worship is characterised             by a reflective spirituality which gives space to those who attend.  At the             same time there is a closeness about this congregation which extends into             the week. Though many have been worshipping at this service for  a             considerable time, new worshippers are always warmly welcomed.</p>', 'Sunday 8am', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 6),
(66, 1, 5, 1, 1, 1, 'SplashPage', '2011-11-28 21:21:06', '2012-01-06 11:45:37', 'home', 'St Michael''s', 'Latest', NULL, 'St Michael''s', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(67, 6, 5, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-01-06 12:04:07', 'honouring', 'Honouring', NULL, NULL, 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(68, 8, 5, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-01-06 12:04:14', 'following', 'Following', NULL, NULL, 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(69, 7, 5, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-01-06 12:04:20', 'engaging', 'Engaging', NULL, NULL, 'Engaging', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(70, 3, 3, 1, 1, 1, 'SectionPage', '2011-11-28 21:21:06', '2012-01-06 12:04:26', 'connecting', 'Connecting', NULL, NULL, 'Connecting', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(71, 22, 1, 0, 1, 0, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:09:31', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 3),
(72, 23, 1, 0, 1, 0, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:09:31', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 3),
(73, 24, 1, 0, 1, 0, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:09:31', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 22),
(74, 25, 1, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:32', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 22),
(75, 26, 1, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:32', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 22),
(76, 27, 1, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:32', 'new-page-4', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 22),
(77, 28, 1, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:32', 'new-page-5', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 22),
(78, 29, 1, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:32', 'new-page-6', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 22),
(79, 30, 1, 0, 1, 0, 'Page', '2012-01-06 12:09:33', '2012-01-06 12:09:33', 'new-page-7', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 22),
(80, 24, 2, 0, 1, 0, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:09:37', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(81, 25, 2, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:39', 'new-page-4', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(82, 26, 2, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:41', 'new-page-5', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(83, 27, 2, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:43', 'new-page-6', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(84, 28, 2, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:45', 'new-page-7', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(85, 29, 2, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:09:47', 'new-page-8', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(86, 30, 2, 0, 1, 0, 'Page', '2012-01-06 12:09:33', '2012-01-06 12:09:49', 'new-page-7', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 22),
(87, 30, 3, 0, 1, 0, 'Page', '2012-01-06 12:09:33', '2012-01-06 12:09:49', 'new-page-9', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(88, 24, 3, 1, 1, 1, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:10:01', 'get-in-touch', 'Get in Touch', NULL, NULL, 'Get in Touch', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(89, 25, 3, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:10:12', 'finding-st-mic-s', 'Finding St. Mic''s', NULL, NULL, 'Finding St. Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(90, 26, 3, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:10:34', 'weddings-at-st-mic-s', 'Weddings at St. Mic''s', NULL, NULL, 'Weddings at St. Mic''s ', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(91, 27, 3, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:10:46', 'funerals', 'Funerals', NULL, NULL, 'Funerals', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(92, 28, 3, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:10:53', 'parish-hall', 'Parish Hall', NULL, NULL, 'Parish Hall', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(93, 29, 3, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:11:03', 'inside-st-mic-s', 'Inside St. Mic’s', NULL, NULL, 'Inside St. Mic’s', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(94, 22, 2, 1, 1, 1, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:11:10', 'taonga', 'Taonga', NULL, NULL, 'Taonga', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 3),
(95, 30, 4, 1, 1, 1, 'Page', '2012-01-06 12:09:33', '2012-01-06 12:11:22', 'friends', 'Friends', NULL, NULL, 'Friends', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(96, 23, 2, 1, 1, 1, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:11:33', 'parish-registry', 'Parish Registry', NULL, NULL, 'Parish Registry', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 3),
(97, 23, 3, 1, 1, 1, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:11:57', 'parish-registry', 'Parish Registry', NULL, '<p>The Parish Registry link is below. You will need a password to open the           registry. Please email <a href="mailto:info@stmichaels.org.nz">info@stmichaels.org.nz</a> if you wish to have access.           Proof of identity will be required and a referee. Please be aware that we           retain the right to withhold information that may be requested without         explanation.</p>\n<h3><a href="baptisms, weddings &amp; funerals from old website.pdf">Registry of Babtisms, Weddings and Funerals</a></h3>', 'Parish Registry', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(98, 30, 5, 1, 1, 1, 'Page', '2012-01-06 12:09:33', '2012-01-06 12:12:38', 'friends', 'Friends', NULL, '<p>People who enjoy worshipping at St. Mic''s also have           connections with others on a similar journey. You might try browsing one of           these...</p>\n<p><a href="http://publicchristianity.org/"><img class="logos" src="themes/stmichaels/images/connecting/logos/CPClogo.jpg" alt="Centre of Public Christianity" width="200" height="43"/></a><a href="http://www.nzcms.org.nz/"><img class="logos" src="themes/stmichaels/images/connecting/logos/nzcmslogo.jpg" alt="NZ Church Missionary Society" width="114" height="42"/></a></p>\n<p><a href="http://www.ship-of-fools.com/"><img class="logospace" src="themes/stmichaels/images/connecting/logos/shipoffoolslogo.jpg" alt="ship of fools" width="151" height="27"/></a></p>', 'Friends', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(99, 22, 3, 1, 1, 1, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:13:20', 'taonga', 'Taonga', NULL, '<p>“…the kingdom of heaven is like the master of a household who brings out of           his treasure what is new and what is old." <span class="smallitalicp">Matthew 13:52</span></p>\n<h4>Enlightenment</h4>\n<p>In September 2010, local artist Lorraine Tarrant staged an exhibition <em>Enlightenment</em> in the church to celebrate St. Michael’s day. Lorraine           produced a delightful series of thirty paintings based around details from           the St. Michael’s leadlight windows and  Kelburn Village. With wit and           insight she explores the relationship between the transcendent and the           mundane. <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/church.jpg"> </a><a title="LORRAINE TARRANT THE ARTIST OF ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Lorraine.jpg"> Click</a> to view <em>Enlightenment</em>.</p>\n<div style="display:none;"><a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/church.jpg"> Church </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Juliette Florist.jpg"> Juliette Florist </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/4 Square.jpg"> 4 square </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/angel.jpg"> Angel </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/cablecar.jpg"> Cable Car </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/germanbakery.jpg"> German Bakery </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Glengarry.jpg"> Glengarry </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/telephone.jpg"> Holy Car </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/IMG_0102.jpg"> Village </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Kelburn Butchery.jpg"> Kelburn Butchery </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/kelburncafe.jpg"> Kelburn Cafe </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/kelburndeli.jpg"> Kelburn Deli </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/KElburnpharmacy.jpg"> Kelburn Pharmacy</a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/Paradise Seafoods.jpg"> Paradise Seafoods </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/petdoctors.jpg"> Pet Docters </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/pratha2go.jpg"> Pratha 2 Go </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/quickcash.jpg"> Quick Cash </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/redtomatos.jpg"> Red Tomatos </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/terise.jpg"> Terise </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/trees.jpg"> Trees </a> <a title="ENLIGHTENMENT" rel="lightbox[Enlightenment]" href="images/connecting/taonga/Enlightenment/watchmaker.jpg"> Watchmaker </a></div>\n<h4>A Wintery Spirituality</h4>\n<p>Over 2006 / 2007 St. Michael’s celebrated it’s centenary. It was a cold           winter though the early signs of the church’s new spring were just beginning           to show. <a href="http://www.craigthomson.co.nz/">Craig Thomson</a> documented the life of the parish over the wintery centenary.         <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/1.jpg">Click</a> to view his photo essay.</p>\n<div style="display:none;"><a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/2.jpg">Image 2</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/3-Bishop.jpg">Image 3</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/4.jpg">Image 4</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/5-communion.jpg">Image 5</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/6-organ.jpg">Image 6</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/prayerbook.jpg">Image 8</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/wordbeingread.jpg">Image 9</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/recievingcommunion.tif">Image 10</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/8.jpg">Image 11</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/9.jpg">Image 12</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/10.jpg">Image 13</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/11.jpg">Image 14</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/12.jpg">Image 15</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/13.jpg">Image 16</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/ladiescuppa.jpg">Image 17</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/kids.jpg">Image 18</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/kirstydishes.jpg">Image 19</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/17.jpg">Image 20</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/18.jpg">Image 21</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/19.jpg">Image 22</a> <a title="A WINTERY SPIRITUALITY" rel="lightbox[WinterySpirituality]" href="images/connecting/taonga/CraigT/20.jpg">Image 23</a></div>', 'Taonga', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(100, 29, 4, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:15:52', 'inside-st-mic-s', 'Inside St. Mic’s', NULL, '<p>Late 2010 Greg McKenzie happened by St. Mic’s while he was looking for a           coffee. He wondered inside and couldn''t resist taking some snaps with his           panorama kit. Use the controls on the photo above to have a look through our         church – scroll around, zoom in and out, look down and up. Take your time…</p>\n<p>While you’re looking around, <a href="history">click here</a> for more info on  stained glass and  banners.</p>', 'Inside St. Mic’s', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(101, 28, 4, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:16:11', 'parish-hall', 'Parish Hall', NULL, '<p>The St. Mic’s hall is a great community facility but is in high demand for           twenty-firsts, dances, community group events and other private functions.           The church also uses it for a variety of purposes. Weekday afternoons and           evenings are mostly taken up with ballet dancing. This means you will have           to book well ahead if you are to get the day or time you want.</p>\n<p>Hire rates depend on what you want to use the hall for. For more information           contact the parish admin person (in on Mondays and Thursdays and other           random days), email <a href="mailto:info@stmichaels.org.nz">info@stmichaels.org.nz</a>.</p>', 'Parish Hall', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(102, 26, 4, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:16:58', 'weddings-at-st-mic-s', 'Weddings at St. Mic''s', NULL, '<p>A wedding is one of life’s great moments, a time for good wishes, partying            and joy. Yet, marriage is also a serious undertaking “based upon a solemn,           public and life long covenant between a man and a woman” <span class="smallitalicp">New Zealand Prayer           Book ~ He Karakia Mihinare O Aotearoa</span>. As such it is to be entered into         thoughtfully and prayerfully before God.</p>\n<p>For these reasons all couples coming for marriage at St. Mic’s must commit           to pre-marriage preparation. We use an adapted version of<em> Prepare Enrich</em> for this         though we are open using other material.</p>\n<p>Since our tikanga is Anglican, we use the  Prayer Book as the           basis of our wedding ceremonies. Normally, it is the St. Michael’s Vicar who         takes the service as he represents the wider faith community.</p>\n<p>We see our church as a sacred space where the faith community gathers to           pray and worship together. The wedding service is one aspect of this. In           line with the policy of our wider church (<a href="http://wn.anglican.org.nz/">Diocese of Wellington</a>), we do not           hire our church as a venue. At least one of the couple should have a           tangible connection with St. Mic’s. If this connection is from the past you         may wish to renew it.</p>\n<p>There is no fee for the service or the Vicar’s           time though all donations are gratefully received. There is a fee for the organist and Verger.</p>\n<p>If you are in doubt about being married at St. Mic’s, feel free to email the <a href="mailto:vicar@stmichaels.org.nz">Vicar</a> to discuss things further.</p>', 'Weddings at St. Mic''s ', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(103, 27, 4, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:17:27', 'funerals', 'Funerals', NULL, '<p>If you are reading this it may be because you have lost a loved one and are           grieving. We would like to be there for you in this. Call or <a href="mailto:vicar@stmichaels.org.nz">email</a> the Vicar         to discuss: 04,9349338.</p>\n<p>To avoid embarrassment, please be aware that only licensed Anglican           celebrants can take funeral services in the church. While we try to remain           flexible and sensitive to each person’s needs, we also have certain           contraints around the form of the service and music.</p>\n<p><img class="logospace2" src="themes/stmichaels/images/Lychgate logo 2 2011.jpg" alt="Lychgate logo" width="78" height="31"/></p>', 'Funerals', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(104, 25, 4, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:17:41', 'finding-st-mic-s', 'Finding St. Mic''s', NULL, NULL, 'Finding St. Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 26),
(105, 25, 5, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:17:41', 'finding-st-mic-s', 'Finding St. Mic''s', NULL, NULL, 'Finding St. Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 26),
(106, 25, 6, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:17:44', 'finding-st-mic-s', 'Finding St. Mic''s', NULL, NULL, 'Finding St. Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(107, 25, 7, 0, 1, 0, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:17:45', 'finding-st-mic-s', 'Finding St. Mic''s', NULL, NULL, 'Finding St. Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(108, 24, 4, 1, 1, 1, 'Page', '2012-01-06 12:09:31', '2012-01-06 12:18:10', 'get-in-touch', 'Get in Touch', NULL, '<p>Together the Vicar and Parish Vestry oversee the life of St. Michael''s.</p>\n<p>Our Vicar, David Newton, tries to be pastorally available to any who have           need. He can also refer you to others in the parish or beyond who may be           able to help. You can contact David at:          <a href="mailto:vicar@stmichaels.org.nz">vicar@stmichaels.org.nz</a> or through the church office: 04,9349338.</p>\n<p>The People’s Warden (Warick Dunn), especially represents the wider interests           of the parish. You can contact Warick at: <a href="mailto:allangels@stmichaels.org.nz">allangels@stmichaels.org.nz</a>.         Alternatively, leave a message on the parish voice mail.</p>', 'Get in Touch', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(109, 25, 8, 1, 1, 1, 'Page', '2012-01-06 12:09:32', '2012-01-06 12:18:24', 'finding-st-mic-s', 'Finding St. Mic''s', NULL, '<p>St Michael''s is found right in the heart of Kelburn Village at 81 Upland           Road, Wellington.</p>\n<p><a href="http://maps.google.co.nz/maps?q=81+Upland+Road,+Wellington&amp;ll=-41.289444,174.762783&amp;spn=0.001653,0.003455&amp;client=safari&amp;oe=UTF-8&amp;hnear=81+Upland+Rd,+Kelburn+6012,+Wellington&amp;gl=nz&amp;t=m&amp;z=19&amp;vpsrc=6">Click here</a> to see how you can get to St. Michael’s.</p>', 'Finding St. Mic''s', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 3),
(110, 11, 4, 1, 1, 1, 'Page', '2011-11-28 22:01:24', '2012-01-06 12:18:54', 'home-groups', 'Home groups', NULL, '<p>Home groups meet around the parish and across town. These are not           support groups. They are disciple groups whose goal is maturity in Christ.           By spending time together around the scriptures, by listening and sharing in           each others lives, we build our common life as a parish around being active           followers of Jesus. <a href="mailto:allangels@stmichaels.org.nz">Let us know</a> if you       would like to become part of such a group.</p>', 'Home groups', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8),
(111, 10, 3, 1, 1, 1, 'Page', '2011-11-28 21:36:56', '2012-01-06 12:19:18', 'sunday-school', 'Sunday School', NULL, '<p>St Mic''s has a growing ministry among toddlers and children. In           addition to special programmes, the Sunday School meets every Sunday during           the 10am service. Lessons, music and activities follow the church year and           parallel the Gospel talks at the weekly services.</p>\n<p>Parent involvement is           encouraged.  Once a month (usually on the third Sunday), children stay in           church for a more informal family orientated service. Email <a href="mailto:info@stmichaels.org.nz">Barb</a> to find out more.</p>\n<h4>What''s the Story?</h4>\n<p>What''s the story? is our special Sunday School programme geared to children up           to five years (older children meet seperately). What''s the story? is based upon elements of           the Montessori method and has been primarily developed by Jerome Berryman.           You can find a good overview in the book Young Children in Worship, by           Jerome Berryman and Sonja M. Stewart (this is the book is also used to begin         the classes). There are several key elements to What''s the story?</p>\n<ul><li>An emphasis on the telling of Biblical stories, using             three-dimensional figures and materials, in a way that is engaging and             memorable for the children. </li>\n<li> Carefully worded questions to encourage even very young children in             thoughtful responses. </li>\n<li>Options for the creative response of the child at every lesson:             re-telling the story themselves, drawing, playing with carefully chosen             materials and other craft activities. </li>\n<li>An emphasis on having a respectful, ordered classroom, leaving room             for everyone to participate; the belief that every child has something to             contribute. </li>\n<li>An emphasis on the Church Year and the weekly use of brief             liturgical phrases for the children to learn along with a weekly song. </li>\n<li> Encouraging parents and other interested church members to be             involved in the teaching. </li>\n</ul><p>What''s the story? is best suited to children             aged 2 - 5.  Younger             children from about 18 months can attend with a parent if the parent feels             that the child will be able to give attention.</p>', 'Sunday Schools', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8),
(112, 12, 3, 1, 1, 1, 'Page', '2011-11-28 22:01:46', '2012-01-06 12:19:42', 'bible-studies', 'Bible Studies', NULL, '<p>Studying the bible together is key to the formation of our world   view as a faith community. St Mic''s parish bible studies run in short series   throughout the year.</p>\n<p>These may be thematically based around the church   seasons (Lent, Easter, Pentecost, Advent), topically based (looking at how   the scriptures frame our thinking on issues of our day - such as   environment, wealth and poverty, sexuality and relationships, violence etc),   or working through books of the bible.</p>\n<p>Keep an eye on <a href="latest">latest</a> for the latest.</p>', 'Bible Studies', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8),
(113, 13, 3, 1, 1, 1, 'Page', '2011-11-28 22:01:54', '2012-01-06 12:20:01', 'student-discipleship', 'Student Discipleship', NULL, '<p>Situated in right next door to Victoria University, St. Mic''s has a special burden for discipling   students and graduates. Our ministry reflects this. As well as worship and   bible studies especially geared to this demographic, St. Mic''s also works   closely with AngChap (<a href="http://www.victoria.ac.nz/chaplains/angchap.html">the VUW Anglican Chaplaincy</a>) in its formational   ministry.</p>\n<p>This includes supporting AngChaps lectures, seminars, discussion evenings,   mini conferences, the <a href="http://www.victoria.ac.nz/chaplains/whatson/xnous.html">X NOUS</a> series and action   focussed programmes, such as <a href="http://www.victoria.ac.nz/chaplains/whatson/do-something.html">DO SOMETHING!</a> and <a href="http://www.victoria.ac.nz/chaplains/whatson/newswatch.html">NewsWatch</a>. The parish also owns and overseas student accommodation at <a href="http://www.victoria.ac.nz/chaplains/angchap.html#">Ramsey House</a>.</p>\n<p>These ministries are   all about helping students develop how they see the world and live within it   as followers of Jesus.</p>', 'Student Discipleship', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8);
INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`) VALUES
(114, 14, 3, 1, 1, 1, 'Page', '2011-11-28 22:02:12', '2012-01-06 12:20:20', 'baptisms', 'Baptisms', NULL, '<p>Through baptism we enter into this company of fellow travellers   seeking to put Jesus at the centre of their lives. Baptisms at St Michael''s   are always a special event for the whole church as we celebrate God''s work   in that individual and welcome them into God''s family.</p>\n<p>People wanting to be   baptised, or parents wanting their children baptised, are expected receive   ''catechism'' (instruction), in the faith before they make their public   profession at baptism.</p>\n<p>Because baptism is about entering the faith community, all baptisms are conducted as part of   our main services of worship. See the <a href="mailto:vicar@stmichaels.org.nz">Vicar</a> if you want to find out more.</p>', 'Baptisms', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8),
(115, 15, 3, 1, 1, 1, 'Page', '2011-11-28 22:02:23', '2012-01-06 12:20:48', 'pastoral-care', 'Pastoral Care', NULL, '<p>"By this everyone will know that you are my disciples, if you have love for one another."  <span class="smallitalicp">Jesus - in John 13:35</span></p>\n<p>Caring for each other is at the core of what it means to be God''s   people. The goal of pastoral care is helping us become who God created us to   be. It''s about, wholeness, healing and redemption.</p>\n<p>Everyone is involved in   this ministry though presently we are developing a small team of trained   pastoral carers to give it impetus. The Vicar oversees and is especially   involved in this work. If you have a pastoral or practical need with which you   need help,  <a href="mailto:vicar@stmichaels.org.nz">do make contact</a>.</p>', 'Pastoral Care', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8),
(116, 31, 1, 0, 1, 0, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:26:04', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(117, 32, 1, 0, 1, 0, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:26:04', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(118, 33, 1, 0, 1, 0, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:26:04', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(119, 34, 1, 0, 1, 0, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:26:04', 'new-page-4', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(120, 35, 1, 0, 1, 0, 'Page', '2012-01-06 12:26:05', '2012-01-06 12:26:05', 'new-page-5', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(121, 36, 1, 0, 1, 0, 'Page', '2012-01-06 12:26:05', '2012-01-06 12:26:05', 'new-page-6', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(122, 31, 2, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:26:10', 'windmill-songs', 'Windmill Songs', NULL, NULL, 'Windmill Songs', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(123, 32, 2, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:26:18', 'global-mission-group', 'Global Mission Group', NULL, NULL, 'Global Mission Group', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(124, 33, 2, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:26:26', 'going-up-country', 'Going Up Country', NULL, NULL, 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(125, 34, 2, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:26:37', 'angchap-and-human-fm', 'AngChap and Human FM', NULL, NULL, 'AngChap and Human FM', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(126, 35, 2, 1, 1, 1, 'Page', '2012-01-06 12:26:05', '2012-01-06 12:26:45', 'classroom-assist-and-disaster-preparedness', 'Classroom Assist and Disaster Preparedness', NULL, NULL, 'Classroom Assist and Disaster Preparedness', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(127, 36, 2, 1, 1, 1, 'Page', '2012-01-06 12:26:05', '2012-01-06 12:26:53', 'wellington-city-mission', 'Wellington City Mission', NULL, NULL, 'Wellington City Mission', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(128, 37, 1, 0, 1, 0, 'Page', '2012-01-06 12:26:58', '2012-01-06 12:26:58', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(129, 38, 1, 0, 1, 0, 'Page', '2012-01-06 12:26:58', '2012-01-06 12:26:58', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(130, 39, 1, 0, 1, 0, 'Page', '2012-01-06 12:26:59', '2012-01-06 12:26:59', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 37),
(131, 39, 2, 0, 1, 0, 'Page', '2012-01-06 12:26:59', '2012-01-06 12:27:05', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(132, 39, 3, 0, 1, 0, 'Page', '2012-01-06 12:26:59', '2012-01-06 12:27:05', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(133, 37, 2, 1, 1, 1, 'Page', '2012-01-06 12:26:58', '2012-01-06 12:27:15', 'kelburn-fair', 'Kelburn Fair', NULL, NULL, 'v', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(134, 39, 4, 1, 1, 1, 'Page', '2012-01-06 12:26:59', '2012-01-06 12:27:23', 'mikel-news', 'MiKel News', NULL, NULL, 'MiKel News', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(135, 38, 2, 1, 1, 1, 'Page', '2012-01-06 12:26:58', '2012-01-06 12:27:34', 'guess-who-s-coming-for-dinner', 'Guess who''s coming for dinner?', NULL, NULL, 'Guess who''s coming for dinner?', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(136, 31, 3, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:28:03', 'windmill-songs', 'Windmill Songs', NULL, '<p>Windmill Songs meets every Friday in the church hall. There are two (separate) sessions - 9:30am and 10:30am. Morning tea for both groups is  at 10:00am.</p>\n<p>Windmill Songs is an  interactive and varied music and movement           experience geared to           parents and care givers with babies and tots, it''s an opportunity to meet           and socialise with other families in the area. It also encourages valuable           one-on-one time between adults and children...</p>\n<p>Sessions are led           live from the piano, and feature a variety of orchestral, jazz, and folk           instruments, as well as songs, poems, stories and actions. The sessions are           relaxed and fun, with an emphasis on quality musicianship and a variety of         musical experiences for the children.</p>\n<p>All are welcome - just turn           up and join in!          <strong>$4.00 child / $2.00 sibling / babies under 4 months free. </strong></p>\n<p><a href="PDFs/windmillsongs.pdf"><img class="logoallign" src="themes/stmichaels/images/windmill.jpg" alt="Windmill Songs PDF" width="43" height="44"/></a></p>', 'Windmill Songs', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(137, 32, 3, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:28:22', 'global-mission-group', 'Global Mission Group', NULL, '<p>''From everywhere to everywhere'', the title           of Nazir  Ali''s great little <a href="http://www.amazon.com/Everywhere-World-View-Christian-Mission/dp/1606082965 /ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1310387561&amp;sr=1-1">book</a> sums up what the St. Mic''s Global Mission Group is on about. Global Mission           is the calling of the whole church to proclaim the whole gospel throughout           the whole world.</p>\n<p>The Global Mission Group  fosters this understanding of the church''s           task within our parish and beyond. It does this by...</p>\n<ul><li> Praying for our mission partners serving Christ throughout the             world (especially at the GMG''s Coffee, Croissant and Prayer Breakfast on the           first Tuesday of every month) </li>\n<li>Organising visits by mission partners from abroad, seminars, bible             studies and a yearly Global Mission Month to both educate parishioners about             the global mission task of our church and encourage their active support of           this work.</li>\n<li>Raising money (social events, auctions, personal giving etc.), for             the direct support of individual global mission partners, the wider work of           the Anglican Mission Board and the Church Missionary Society. </li>\n<li>Identifying potential mission partners from within our own             congregations and encouraging them to consider God''s call on their lives. </li>\n</ul><p>Presently, St Mic''s is especially supporting Rosie Fyfe who is working with the             church in Cairo. Rosie''s task is to find partners from around the world to             help in the church''s outreach programme (health, education, pastoral care,             refugee work etc).  Have a read of one of <a href="PDFs/RosieLetter - July 2010.pdf">Rosie''s letters</a>.</p>\n<p>If you would like to find out more about GMG events or how you could help             promote global mission interest, email <a href="mailto:mission@stmichaels.org.nz ">mission@stmichaels.org.nz </a></p>', 'Global Mission Group', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(138, 33, 3, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:29:28', 'going-up-country', 'Going Up Country', NULL, '<p>In 2006, the Vicar and three young people from our parish (Ben Sando, Harry Newton and Miriam Plume),  went on a         Mission Discovery Trip to Tanzania.</p>\n<p>''Going Up Country'' records the agony and the           ecstasy, the challenge and the hope of the indigenous church they         encountered there. <a href="vidoe">Click</a> here to watch the movie.</p>\n<p>These days Ben is working as an architect in Melbourne           and retains an active interest in the global Christian movement. Harry is           training for ordination and intends to return to Tanzania as a mission           partner. Miriam stayed on to work in Tanzania at the end of the trip and now heads up the Global Mission Group. <a href="video">Click</a> here to see an interview of Miriam as she reflects on her time away.</p>\n<p>St. Mic''s commitment to Global           Mission continues.</p>\n<p><img class="logoallign" src="themes/stmichaels/images/goingupcountrylogo.png" alt="Going Up Country" width="65" height="27"/></p>', 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(139, 34, 3, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-01-06 12:30:11', 'angchap-and-human-fm', 'AngChap and Human FM', NULL, '<p>The <a href="http://www.victoria.ac.nz/chaplains/angchap.html">VUW Chaplaincy</a> and its short reach           radio station <a href="http://www.humanfm.co.nz">Human FM</a>, are sister ministries           that we support in lots of ways. We share resources and people and get           involved in each others outreach programmes - especially to students.</p>\n<p>To hear Human FM check           out the links on this page. Also have a read of the article in the <a href="mikel news spring 2009.pdf">spring 2009           edition</a> of MiKel News. Interesting...</p>\n<p><a href="http://www.humanfm.co.nz"><img class="logoallign" src="themes/stmichaels/images/humanFM.png" alt="humanFM" width="59" height="31"/></a><a href="http://www.victoria.ac.nz/chaplains/angchap.html"><img class="logoallign" src="themes/stmichaels/images/AngChap.jpg" alt="AngChap" width="63" height="34"/></a></p>', 'AngChap and Human FM', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(140, 35, 3, 1, 1, 1, 'Page', '2012-01-06 12:26:05', '2012-01-06 12:30:50', 'classroom-assist-and-disaster-preparedness', 'Classroom Assist and Disaster Preparedness', NULL, '<p>Helping in our local           primary school and helping our community to prepare for an event we all hope           won''t happen are two initiatives we began in 2009. There good articles on           both these programmes in the <a href="mikel news spring 2009.pdf">2009 Spring edition</a> of MiKel News archived at           the bottom of this page. Click and scroll through to have a read.</p>\n<p>At the           moment we''re looking for two volunteer coordinators to take this work           forward. If that might be you do get in touch        with the <a href="mailto:vicar@stmichaels.org.nz">vicar</a>.</p>', 'Classroom Assist and Disaster Preparedness', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(141, 36, 3, 1, 1, 1, 'Page', '2012-01-06 12:26:05', '2012-01-06 12:31:22', 'wellington-city-mission', 'Wellington City Mission', NULL, '<p>The Wellington City Mission does great           work among Wellingtonians  who need special assistance in some way. We''re grateful to be part of this work through our           food bank, street collections, giving money and prayer. Keep and eye on our <a href="latest.html">latest</a> page for appeals and other ways you can become involved.</p>\n<p>Meantime, also have a look at the City Mission''s own <a href="http://www.wellingtoncitymission.org.nz">website</a> for a full description of           their fantastic work.</p>\n<p><a href="http://www.wellingtoncitymission.org.nz/"><img class="logoallign" src="themes/stmichaels/images/wcmlogo.jpg" alt="Wellington City Mission" width="84" height="43"/></a></p>', 'Wellington City Mission', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(142, 37, 3, 1, 1, 1, 'Page', '2012-01-06 12:26:58', '2012-01-06 12:31:44', 'kelburn-fair', 'Kelburn Fair', NULL, '<p>Every year St. Mic''s organises the St. Michael''s and           Kelburn Village Fair. Usually held  on the third Saturday in March, over the years it''s become a landmark community           event.</p>\n<p>Proceeds from the fair           typically go to supporting community outreach programmes in Kelburn,           maintaining the church (community) hall and supporting the <a href="http://www.carpenterskids.net/">Carpenter''s Kids programme</a> in Tanzania.</p>\n<p>All sorts of           people from across town and within Kelburn get involved. Maybe you could be           one of them? Watch this space...</p>', 'v', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(143, 39, 5, 1, 1, 1, 'Page', '2012-01-06 12:26:59', '2012-01-06 12:32:28', 'mikel-news', 'MiKel News', NULL, '<p>Our parish broadsheet, MiKel News goes out to around 1200 homes,           plus around 100 individuals and other outlets. Each issue is a combo of           news, adverts and something to challenge. Both issues linked at the bottom of           this page are good examples of MiKel News and tell you a lot about our           community and who we are.</p>\n<p>We''re always looking for stories and we''re           especially looking for someone to put issues together. Have a read and if           you''re inspired <a href="mailto:allangels@stmichaels.org.nz">get   in touch.</a></p>\n<p><a href="PDFs/mikelnews_xmas2010.pdf"><img class="logoallign" src="themes/stmichaels/images/miklnewsxmas10logo.png" alt="Mikel News Xmas20110" width="89" height="32"/></a><a href="PDFs/mikelnews-easter2011.pdf"><img class="logoallign" src="themes/stmichaels/images/mikelnewsspringlogo.png" alt="Mikel News Spring 2011" width="89" height="33"/></a></p>', 'MiKel News', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(144, 38, 3, 1, 1, 1, 'Page', '2012-01-06 12:26:58', '2012-01-06 12:33:01', 'guess-who-s-coming-for-dinner', 'Guess who''s coming for dinner?', NULL, '<p>One of the great things about being part of God’s family is celebrating its unity in diversity —“There is no longer Jew or Greek, there is no longer slave or free, there is no longer male and female; for all of you are one in Christ Jesus.” <span class="smallitalicp">Saint Paul writing to the Galatian Christians</span></p>\n<p>St Mic’s is a very diverse parish. We enjoy this and like to celebrate it. Different St. Mic’s congregations get to meet each other at parish events throughout the year (bible studies, dances, home groups, movie nights, the fair etc. etc). <em>Guess who’s coming to dinner?</em> is an initiative aimed at extending these contacts by getting to know each other better in each other’s homes. These meals are usually run two or three times a year. If you want to find out when the next <em>Guess Who’s coming to dinner</em> is happening, email <a href="mailto:info@stmichaels.org.nz">info@stmichaels.org.nz</a> — or call 04,934 9338 and leave a message.</p>', 'Guess who''s coming for dinner?', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(145, 6, 6, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-01-06 12:38:09', 'honouring', 'Honouring', NULL, '<h4>What a strange thing worship is when you think about it - people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread... (more)</h4>\n<h5>Our services reflect the "mixed economy" of our parish - the diversity of where we live and who we are. Check out below whats on offer and try one out...</h5>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(146, 6, 7, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-01-06 12:40:27', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it - people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread... (more)</h5>\n<h6>Our services reflect the "mixed economy" of our parish - the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(147, 8, 6, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-01-06 13:13:31', 'following', 'Following', NULL, '<h5>"Christianity without the living Jesus Christ remains necessarily a Christianity without discipleship; and a Christianity without disciplechip is always just an idea, a myth." <a href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">Dietrich Bonhoeffer</a></h5>\n<h6>On following the living Jesus, Bonhoeffer also wrote... (<a style="color: #a4998c;" href="http://www.lilyemo.co.nz/work/popup">more</a>)</h6>', 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(148, 8, 7, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-01-06 13:15:38', 'following', 'Following', NULL, '<h5>"Christianity without the living Jesus Christ remains necessarily a Christianity without discipleship; and a Christianity without disciplechip is always just an idea, a myth." <a class="small" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">Dietrich Bonhoeffer</a></h5>\n<h6>On following the living Jesus, Bonhoeffer also wrote... (<a style="color: #a4998c;" href="http://www.lilyemo.co.nz/work/popup">more</a>)</h6>', 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(149, 7, 6, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-01-06 13:19:22', 'engaging', 'Engaging', NULL, '<h5>"The Church is the only cooperative society in the world that exists for the benefit of those who are not its members." <a class="small" href="http://en.wikipedia.org/wiki/William_Temple_(bishop)">Archbishop William Temple</a></h5>\n<h6>St. Mic''s sees itself as very much part of its local community. We also see ourselves as citizens not just of our city and nation, but of God''s world...(more)</h6>', 'Engaging', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(150, 3, 4, 1, 1, 1, 'SectionPage', '2011-11-28 21:21:06', '2012-01-06 13:22:29', 'connecting', 'Connecting', NULL, '<h5>For general info about St. Mic''s have a good scroll throw below. Also don''t forget to check out our <a href="[sitetree_link id=9]">latest page</a> for current events.<br/>Contact us to find out more.</h5>', 'Connecting', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(151, 2, 4, 1, 1, 1, 'HomePage', '2011-11-28 21:21:06', '2012-01-07 14:22:20', 'main', 'Home', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(152, 2, 5, 1, 1, 1, 'HomePage', '2011-11-28 21:21:06', '2012-01-07 14:28:27', 'main', 'Home', NULL, '<h5>Welcome to <em>St Michael and All Angels</em> online.<br/>We think St Mic''s is a really <em>special place</em>.<br/>Have a browse around and <em>find out why</em>. If you want to know more don''t hesitate to <a href="[sitetree_link id=24]">get in touch</a>.</h5>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(153, 1, 6, 1, 1, 1, 'SplashPage', '2011-11-28 21:21:06', '2012-01-07 14:57:44', 'home', 'St Michael''s', 'Latest', NULL, 'St Michael''s', NULL, NULL, NULL, 0, 0, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(154, 9, 4, 1, 1, 1, 'Page', '2011-11-28 21:31:27', '2012-01-07 14:57:49', 'latest', 'Latest', NULL, NULL, 'Latest', NULL, NULL, NULL, 0, 0, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(155, 1, 7, 1, 1, 1, 'SplashPage', '2011-11-28 21:21:06', '2012-01-07 14:57:58', 'home', 'St Michael''s', NULL, NULL, 'St Michael''s', NULL, NULL, NULL, 0, 0, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(156, 1, 8, 0, 1, 0, 'SplashPage', '2011-11-28 21:21:06', '2012-01-07 14:58:01', 'home', 'St Michael''s', NULL, NULL, 'St Michael''s', NULL, NULL, NULL, 0, 0, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(157, 9, 5, 1, 1, 1, 'Page', '2011-11-28 21:31:27', '2012-01-07 14:59:51', 'latest', 'Latest', NULL, NULL, 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(158, 7, 7, 0, 1, 0, 'SectionPage', '2011-11-28 21:30:17', '2012-01-17 15:20:30', 'engaging', 'Engaging', NULL, '<h5>"The Church is the only cooperative society in the world <em>that</em> exists for the benefit of those who are not its members." <a class="small" href="http://en.wikipedia.org/wiki/William_Temple_(bishop)">Archbishop William Temple</a></h5>\n<h6>St. Mic''s sees itself as very much part of its local community. We also see ourselves as citizens not just of our city and nation, but of God''s world...(more)</h6>', 'Engaging', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(159, 9, 6, 0, 1, 0, 'Page', '2011-11-28 21:31:27', '2012-02-27 00:56:40', 'latest', 'Latest', NULL, '<p><a href="http://www.facebook.com/Kelburn.Wellington">Kelburn Community on Facebook</a></p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(160, 9, 7, 1, 1, 1, 'Page', '2011-11-28 21:31:27', '2012-02-27 01:04:05', 'latest', 'Latest', NULL, '<p><a href="http://www.facebook.com/Kelburn.Wellington">Kelburn Community on Facebook</a></p>\n<h4>MiKel news:</h4>\n<p>\n</p><ul><li><a href="assets/pdfs/mikel news spring 2009.pdf" target="_blank">Spring 2009 edition</a></li>\n<li><a href="assets/pdfs/mikelnews_xmas2010.pdf" target="_blank">Christmas 2010 edition</a></li>\n<li><a href="assets/pdfs/mikelnews-easter2011.pdf" target="_blank">Easter 2011 edition</a></li>\n</ul>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(161, 33, 4, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-02-27 01:56:04', 'going-up-country', 'Going Up Country', NULL, '<p>In 2006, the Vicar and three young people from our parish (Ben Sando, Harry Newton and Miriam Plume),  went on a         Mission Discovery Trip to Tanzania.</p>\n<p>''Going Up Country'' records the agony and the           ecstasy, the challenge and the hope of the indigenous church they         encountered there. <a href="vidoe">Click</a> here to watch the movie.</p>\n<p>These days Ben is working as an architect in Melbourne           and retains an active interest in the global Christian movement. Harry is           training for ordination and intends to return to Tanzania as a mission           partner. Miriam stayed on to work in Tanzania at the end of the trip and now heads up the Global Mission Group. <a href="video">Click</a> here to see an interview of Miriam as she reflects on her time away.</p>\n<p>St. Mic''s commitment to Global           Mission continues.</p>\n<p><img class="logoallign" src="themes/stmichaels/images/goingupcountrylogo.png" alt="Going Up Country" width="65" height="27"/></p>\n<p> </p>\n<pre style="margin-top: 1.5em; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding-top: 10px; padding-right: 0px; padding-bottom: 10px; padding-left: 10px; width: 500px; border-image: initial; line-height: 1em; color: #333333; overflow-x: auto; overflow-y: auto; text-align: left; border: 1px solid #cccccc;">&lt;a href="http://www.digitalia.be/images/25t.jpg" rel="lightbox" title="my caption"&gt;image #1&lt;/a&gt;</pre>', 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(162, 33, 5, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-02-27 01:57:36', 'going-up-country', 'Going Up Country', NULL, '<p>In 2006, the Vicar and three young people from our parish (Ben Sando, Harry Newton and Miriam Plume),  went on a         Mission Discovery Trip to Tanzania.</p>\n<p>''Going Up Country'' records the agony and the           ecstasy, the challenge and the hope of the indigenous church they         encountered there. <a href="vidoe">Click</a> here to watch the movie.</p>\n<p>These days Ben is working as an architect in Melbourne           and retains an active interest in the global Christian movement. Harry is           training for ordination and intends to return to Tanzania as a mission           partner. Miriam stayed on to work in Tanzania at the end of the trip and now heads up the Global Mission Group. <a href="video">Click</a> here to see an interview of Miriam as she reflects on her time away.</p>\n<p>St. Mic''s commitment to Global           Mission continues.</p>\n<p><img class="logoallign" src="themes/stmichaels/images/goingupcountrylogo.png" alt="Going Up Country" width="65" height="27"/></p>\n<p><a title="my caption" rel="lightbox" href="http://www.digitalia.be/images/25t.jpg">image #1</a></p>', 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(163, 33, 6, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-02-27 01:58:59', 'going-up-country', 'Going Up Country', NULL, '<p>In 2006, the Vicar and three young people from our parish (Ben Sando, Harry Newton and Miriam Plume),  went on a         Mission Discovery Trip to Tanzania.</p>\n<p>''Going Up Country'' records the agony and the           ecstasy, the challenge and the hope of the indigenous church they         encountered there. <a href="vidoe">Click</a> here to watch the movie.</p>\n<p>These days Ben is working as an architect in Melbourne           and retains an active interest in the global Christian movement. Harry is           training for ordination and intends to return to Tanzania as a mission           partner. Miriam stayed on to work in Tanzania at the end of the trip and now heads up the Global Mission Group. <a href="video">Click</a> here to see an interview of Miriam as she reflects on her time away.</p>\n<p>St. Mic''s commitment to Global           Mission continues.</p>\n<p><img class="logoallign" src="themes/stmichaels/images/goingupcountrylogo.png" alt="Going Up Country" width="65" height="27"/></p>\n<p><a title="my caption" rel="lightbox" href="http://www.digitalia.be/images/25.jpg"><img src="http://www.digitalia.be/images/25t.jpg"/></a></p>', 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(164, 33, 7, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-02-27 02:06:24', 'going-up-country', 'Going Up Country', NULL, '<p>In 2006, the Vicar and three young people from our parish (Ben Sando, Harry Newton and Miriam Plume),  went on a         Mission Discovery Trip to Tanzania.</p>\n<p>''Going Up Country'' records the agony and the           ecstasy, the challenge and the hope of the indigenous church they         encountered there. <a rel="lightbox" href="http://vimeo.com/33102231">Click</a> here to watch the movie.</p>\n<p>These days Ben is working as an architect in Melbourne           and retains an active interest in the global Christian movement. Harry is           training for ordination and intends to return to Tanzania as a mission           partner. Miriam stayed on to work in Tanzania at the end of the trip and now heads up the Global Mission Group. <a href="video">Click</a> here to see an interview of Miriam as she reflects on her time away.</p>\n<p>St. Mic''s commitment to Global           Mission continues.</p>\n<p><img class="logoallign" src="themes/stmichaels/images/goingupcountrylogo.png" alt="Going Up Country" width="65" height="27"/></p>', 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(165, 33, 8, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-02-27 02:47:18', 'going-up-country', 'Going Up Country', NULL, '<p>In 2006, the Vicar and three young people from our parish (Ben Sando, Harry Newton and Miriam Plume),  went on a         Mission Discovery Trip to Tanzania.</p>\n<p>''Going Up Country'' records the agony and the           ecstasy, the challenge and the hope of the indigenous church they         encountered there. <a rel="prettyPhoto" href="http://arlingtonfriendshouse.org/house1.jpg">Click</a> here to watch the movie.</p>\n<p>These days Ben is working as an architect in Melbourne           and retains an active interest in the global Christian movement. Harry is           training for ordination and intends to return to Tanzania as a mission           partner. Miriam stayed on to work in Tanzania at the end of the trip and now heads up the Global Mission Group. <a href="video">Click</a> here to see an interview of Miriam as she reflects on her time away.</p>\n<p>St. Mic''s commitment to Global           Mission continues.</p>\n<p><img class="logoallign" src="themes/stmichaels/images/goingupcountrylogo.png" alt="Going Up Country" width="65" height="27"/></p>\n<p>http://vimeo.com/33102231</p>', 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(166, 33, 9, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-02-27 03:46:24', 'going-up-country', 'Going Up Country', NULL, '<h1>In 2006, the Vicar and three young people from our parish (Ben Sando, Harry Newton and Miriam Plume),  went on a         Mission Discovery Trip to Tanzania.</h1>\n<p>''Going Up Country'' records the agony and the           ecstasy, the challenge and the hope of the indigenous church they         encountered there. <a rel="prettyPhoto" href="http://vimeo.com/33102231">Click</a> here to watch the movie.</p>\n<p>These days Ben is working as an architect in Melbourne           and retains an active interest in the global Christian movement. Harry is           training for ordination and intends to return to Tanzania as a mission           partner. Miriam stayed on to work in Tanzania at the end of the trip and now heads up the Global Mission Group. Click here to see an interview of Miriam as she reflects on her time away.</p>\n<p>St. Mic''s commitment to Global           Mission continues.</p>\n<p><img class="logoallign" src="themes/stmichaels/images/goingupcountrylogo.png" alt="Going Up Country" width="65" height="27"/></p>', 'Going Up Country', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(167, 9, 8, 1, 1, 1, 'Page', '2011-11-28 21:31:27', '2012-02-27 20:55:54', 'latest', 'Latest', NULL, '<p><a href="http://www.facebook.com/Kelburn.Wellington">Kelburn Community on Facebook</a></p>\n<h4>Sermons</h4>\n<p><img class="left" src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/></p>\n<h4>MiKel news:</h4>\n<ul><li><a href="assets/pdfs/mikel news spring 2009.pdf" target="_blank">Spring 2009 edition</a></li>\n<li><a href="assets/pdfs/mikelnews_xmas2010.pdf" target="_blank">Christmas 2010 edition</a></li>\n<li><a href="assets/pdfs/mikelnews-easter2011.pdf" target="_blank">Easter 2011 edition</a></li>\n</ul>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(168, 9, 9, 1, 1, 1, 'Page', '2011-11-28 21:31:27', '2012-02-27 21:07:53', 'latest', 'Latest', NULL, '<p><a href="http://www.facebook.com/Kelburn.Wellington">Kelburn Community on Facebook</a></p>\n<h4 class="highlight"><span style="font-weight: normal;"><a href="http://www.facebook.com/Kelburn.Wellington"><img src="themes/stmichaels/images/fb_icon.jpg" width="48" height="48"/></a></span></h4>\n<h4 class="highlight"><span style="font-weight: normal;">Sermons</span></h4>\n<p><img class="left" src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/></p>\n<h4>Roster</h4>\n<p><img src="themes/stmichaels/images/xls_icon.gif" width="51" height="51"/></p>\n<h4>MiKel news:</h4>\n<p><a href="assets/pdfs/mikel news spring 2009.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Spring 2009 edition</a> </p>\n<p><a href="assets/pdfs/mikelnews_xmas2010.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Christmas 2010 edition</a></p>\n<p><a href="assets/pdfs/mikelnews-easter2011.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Easter 2011 edition</a></p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(169, 8, 8, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-28 08:59:38', 'following', 'Following', NULL, '<h5>"Christianity without the living Jesus Christ remains necessarily a Christianity without discipleship; and a Christianity without disciplechip is always just an idea, a myth." <a class="small" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">Dietrich Bonhoeffer</a></h5>\n<h6>On following the living Jesus, Bonhoeffer also wrote... (<a style="color: #a4998c;" href="http://www.lilyemo.co.nz/work/popup">more</a>)</h6>', 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(170, 8, 9, 0, 1, 0, 'SectionPage', '2011-11-28 21:30:17', '2012-02-28 23:15:52', 'following', 'Following', NULL, '<h5>"Christianity without the living Jesus Christ remains necessarily a Christianity without discipleship; and a Christianity without discipleship is always just an idea, a myth." <a class="small" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">Dietrich Bonhoeffer</a></h5>\n<h6>On following the living Jesus, Bonhoeffer also wrote... (<a style="color: #a4998c;" href="http://www.lilyemo.co.nz/work/popup">more</a>)</h6>', 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(171, 9, 10, 1, 1, 1, 'Page', '2011-11-28 21:31:27', '2012-02-28 23:17:17', 'latest', 'Latest', NULL, '<p>\n</p><p style="display: inline !important;">St Michaels on Facebook</p>\n\n<h4 class="highlight"><span style="font-weight: normal;"><a href="http://www.facebook.com/StMichaelsKelburn">\n<h1 style="font-weight: normal;"><span style="font-weight: normal;"><img src="themes/stmichaels/images/fb_icon.jpg" width="48" height="48"/></span></h1>\n</a></span></h4>\n<h4 class="highlight"><span style="font-weight: normal;">Sermons</span></h4>\n<p><img class="left" src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/></p>\n<h4>Roster</h4>\n<p><img src="themes/stmichaels/images/xls_icon.gif" width="51" height="51"/></p>\n<h4>MiKel news:</h4>\n<p><a href="assets/pdfs/mikel news spring 2009.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Spring 2009 edition</a> </p>\n<p><a href="assets/pdfs/mikelnews_xmas2010.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Christmas 2010 edition</a></p>\n<p><a href="assets/pdfs/mikelnews-easter2011.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Easter 2011 edition</a></p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(172, 9, 11, 1, 1, 1, 'Page', '2011-11-28 21:31:27', '2012-02-28 23:30:38', 'latest', 'Latest', NULL, '<p> </p>\n<p style="display: inline !important;">St Michaels on Facebook</p>\n<h4 class="highlight"><span style="font-weight: normal;"><a href="http://www.facebook.com/StMichaelsKelburn">\n<h1 style="font-weight: normal;"><span style="font-weight: normal;"><img src="themes/stmichaels/images/fb_icon.jpg" width="48" height="48"/></span></h1>\n</a></span></h4>\n<h4 class="highlight"><span style="font-weight: normal;">Sermons</span></h4>\n<p><img class="left" src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/></p>\n<h4>MiKel news:</h4>\n<p><a href="assets/pdfs/mikel news spring 2009.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Spring 2009 edition</a> </p>\n<p><a href="assets/pdfs/mikelnews_xmas2010.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Christmas 2010 edition</a></p>\n<p><a href="assets/pdfs/mikelnews-easter2011.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Easter 2011 edition</a></p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(173, 9, 12, 0, 1, 0, 'Page', '2011-11-28 21:31:27', '2012-02-28 23:37:48', 'latest', 'Latest', NULL, '<p> </p>\n<p style="display: inline !important;">St Michaels on Facebook:</p>\n<p><a href="http://www.facebook.com/StMichaelsKelburn"> <img src="themes/stmichaels/images/icon_facebook.png" width="32" height="32"/></a></p>\n<h4 class="highlight"><span style="font-weight: normal;">Sermons</span></h4>\n<p><img class="left" src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/><img src="themes/stmichaels/images/pdf_icon.png" width="50" height="50"/></p>\n<h4>MiKel news:</h4>\n<p><a href="assets/pdfs/mikel news spring 2009.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Spring 2009 edition</a> </p>\n<p><a href="assets/pdfs/mikelnews_xmas2010.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Christmas 2010 edition</a></p>\n<p><a href="assets/pdfs/mikelnews-easter2011.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Easter 2011 edition</a></p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(174, 40, 1, 0, 1, 0, 'Page', '2012-02-28 23:38:09', '2012-02-28 23:38:09', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 9),
(175, 40, 2, 1, 1, 1, 'Page', '2012-02-28 23:38:09', '2012-02-28 23:38:50', 'sermons', 'Sermons', NULL, '<p>Back arrow</p>\n<p>List of Sermon PDFs</p>\n<p> </p>', 'Sermons', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 9),
(176, 41, 1, 0, 1, 0, 'Page', '2012-02-28 23:48:24', '2012-02-28 23:48:24', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 40),
(177, 41, 2, 1, 1, 1, 'Page', '2012-02-28 23:48:24', '2012-02-28 23:48:55', 'mikel-news', 'MiKel News', NULL, NULL, 'MiKel News', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 9),
(178, 42, 1, 0, 1, 0, 'Page', '2012-02-28 23:49:56', '2012-02-28 23:49:56', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 9),
(179, 43, 1, 0, 1, 0, 'Page', '2012-02-28 23:50:03', '2012-02-28 23:50:03', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 42),
(180, 42, 2, 1, 1, 1, 'Page', '2012-02-28 23:49:56', '2012-02-28 23:50:45', 'archive', 'Archive', NULL, '<p>Archive of old news coming soon...</p>', 'Archive', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 9),
(181, 41, 3, 0, 1, 0, 'Page', '2012-02-28 23:48:24', '2012-02-28 23:52:39', 'mikel-news', 'MiKel News', NULL, '<p><a style="text-decoration: underline; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: left;" href="assets/pdfs/mikelnews-easter2011.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Easter 2011 edition</a></p>\n<p><a style="font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: left;" href="assets/pdfs/mikelnews_xmas2010.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Christmas 2010 editio</a>n</p>\n<p><a href="assets/pdfs/mikel news spring 2009.pdf" target="_blank"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Spring 2009 edition</a> </p>\n<p> </p>\n<p> </p>', 'MiKel News', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 9),
(182, 40, 3, 1, 1, 1, 'Page', '2012-02-28 23:38:09', '2012-02-28 23:54:15', 'sermons', 'Sermons', NULL, '<p><a href="#"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Sermon #1</a></p>\n<p><a href="#"> </a></p>\n<p><a href="#"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Sermon #2</a></p>\n<p><a href="#"> </a></p>\n<p><a href="#"><img src="themes/stmichaels/images/pdf_icon.png" width="21" height="21"/> Sermon #3</a></p>', 'Sermons', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 9),
(183, 9, 13, 1, 1, 1, 'Page', '2011-11-28 21:31:27', '2012-02-28 23:55:15', 'latest', 'Latest', NULL, '<p>St Michaels on Facebook:</p>\n<p><a href="http://www.facebook.com/StMichaelsKelburn"> <img src="themes/stmichaels/images/icon_facebook.png" width="32" height="32"/></a></p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(184, 9, 14, 1, 1, 1, 'SectionPage', '2011-11-28 21:31:27', '2012-02-29 00:30:58', 'latest', 'Latest', NULL, '<p>St Michaels on Facebook:</p>\n<p><a href="http://www.facebook.com/StMichaelsKelburn"> <img src="themes/stmichaels/images/icon_facebook.png" width="32" height="32"/></a></p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(185, 9, 15, 0, 1, 0, 'SectionPage', '2011-11-28 21:31:27', '2012-02-29 00:33:50', 'latest', 'Latest', NULL, '<p><a href="http://www.facebook.com/StMichaelsKelburn"><img class="left" src="themes/stmichaels/images/icon_facebook.png" width="21"/></a> Keep up to date with St Michaels on Facebook</p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(186, 9, 16, 1, 1, 1, 'SectionPage', '2011-11-28 21:31:27', '2012-02-29 00:35:30', 'latest', 'Latest', NULL, '<p style="text-align: right;"><a href="http://www.facebook.com/StMichaelsKelburn"><img class="left" src="themes/stmichaels/images/icon_facebook.png" width="21"/></a> Keep up to date with St Michaels on Facebook</p>', 'Latest', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(187, 6, 8, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 03:58:10', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it - people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread...</h5>\n<h6>Our services reflect the ''mixed economy'' of our parish – the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(188, 6, 9, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 03:58:48', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it — people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread...</h5>\n<h6>Our services reflect the ''mixed economy'' of our parish — the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(189, 6, 10, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:00:46', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it — people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread...</h5>\n<h6>Our services reflect the ‘mixed economy’ of our parish — the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(190, 6, 11, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:03:25', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it — people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread …</h5>\n<h6>Our services reflect the ‘mixed economy’ of our parish — the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(191, 44, 1, 0, 1, 0, 'Page', '2012-02-29 04:07:13', '2012-02-29 04:07:13', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8);
INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`) VALUES
(192, 44, 2, 1, 1, 1, 'Page', '2012-02-29 04:07:13', '2012-02-29 04:08:05', 'bonhoeffer', 'Bonhoeffer', NULL, '<p>‘A Christianity in which there is only God the Father, but not Christ as a living Son actually cancels discipleship. In that case there will be trust in God, but not discipleship … Discipleship is a commitment to following Christ. Because Christ exists, he must be followed. An idea about Christ, a doctrinal system, a general religious recognition of grace or forgiveness of sins does not require discipleship. In truth, it even excludes discipleship; it is inimical to it. One enters into a relationship with an idea by way of knowledge, enthusiasm, perhaps even by carrying it out, but it is by personal obedient discipleship [that we enter into a relationship with the living Jesus].’</p>', 'Bonhoeffer', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 8),
(193, 44, 3, 1, 1, 1, 'Page', '2012-02-29 04:07:13', '2012-02-29 04:08:41', 'bonhoeffer', 'Bonhoeffer', NULL, '<p>‘A Christianity in which there is only God the Father, but not Christ as a living Son actually cancels discipleship. In that case there will be trust in God, but not discipleship … Discipleship is a commitment to following Christ. Because Christ exists, he must be followed. An idea about Christ, a doctrinal system, a general religious recognition of grace or forgiveness of sins does not require discipleship. In truth, it even excludes discipleship; it is inimical to it. One enters into a relationship with an idea by way of knowledge, enthusiasm, perhaps even by carrying it out, but it is by personal obedient discipleship [that we enter into a relationship with the living Jesus].’</p>', 'Bonhoeffer', NULL, NULL, NULL, 0, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(194, 8, 10, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:09:38', 'following', 'Following', NULL, '<h5>"Christianity without the living Jesus Christ remains necessarily a Christianity without discipleship; and a Christianity without discipleship is always just an idea, a myth." <a class="small" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">Dietrich Bonhoeffer</a></h5>\n<h6>On following the living Jesus, Bonhoeffer also wrote... (<a href="[sitetree_link id=44]">more</a>)</h6>', 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(195, 44, 4, 1, 1, 1, 'Page', '2012-02-29 04:07:13', '2012-02-29 04:09:55', 'bonhoeffer', 'Bonhoeffer', NULL, '<p>‘A Christianity in which there is only God the Father, but not Christ as a living Son actually cancels discipleship. In that case there will be trust in God, but not discipleship … Discipleship is a commitment to following Christ. Because Christ exists, he must be followed. An idea about Christ, a doctrinal system, a general religious recognition of grace or forgiveness of sins does not require discipleship. In truth, it even excludes discipleship; it is inimical to it. One enters into a relationship with an idea by way of knowledge, enthusiasm, perhaps even by carrying it out, but it is by personal obedient discipleship [that we enter into a relationship with the living Jesus].’</p>', 'Bonhoeffer', NULL, NULL, NULL, 0, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8),
(196, 44, 5, 1, 1, 1, 'Page', '2012-02-29 04:07:13', '2012-02-29 04:14:06', 'bonhoeffer', 'Thus spake Bonhoeffer', 'Bonhoeffer', '<p>‘A Christianity in which there is only God the Father, but not Christ as a living Son actually cancels discipleship. In that case there will be trust in God, but not discipleship … Discipleship is a commitment to following Christ. Because Christ exists, he must be followed. An idea about Christ, a doctrinal system, a general religious recognition of grace or forgiveness of sins does not require discipleship. In truth, it even excludes discipleship; it is inimical to it. One enters into a relationship with an idea by way of knowledge, enthusiasm, perhaps even by carrying it out, but it is by personal obedient discipleship [that we enter into a relationship with the living Jesus].’</p>\n<p>From <em>The Cost of Discipleship</em>, p.59</p>', 'Bonhoeffer', NULL, NULL, NULL, 0, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8),
(197, 44, 6, 1, 1, 1, 'MorePage', '2012-02-29 04:07:13', '2012-02-29 04:22:19', 'bonhoeffer', 'Thus spake Bonhoeffer', 'Bonhoeffer', '<p>‘A Christianity in which there is only God the Father, but not Christ as a living Son actually cancels discipleship. In that case there will be trust in God, but not discipleship … Discipleship is a commitment to following Christ. Because Christ exists, he must be followed. An idea about Christ, a doctrinal system, a general religious recognition of grace or forgiveness of sins does not require discipleship. In truth, it even excludes discipleship; it is inimical to it. One enters into a relationship with an idea by way of knowledge, enthusiasm, perhaps even by carrying it out, but it is by personal obedient discipleship [that we enter into a relationship with the living Jesus].’</p>\n<p>From <em>The Cost of Discipleship</em>, p.59</p>', 'Bonhoeffer', NULL, NULL, NULL, 0, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 8),
(198, 8, 11, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:39:49', 'following', 'Following', NULL, '<h5>‘Christianity without the living Jesus Christ remains necessarily a Christianity without discipleship; and a Christianity without discipleship is always just an idea, a myth.’ <a class="small" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">Dietrich Bonhoeffer</a></h5>\n<h6>On following the living Jesus, Bonhoeffer also wrote... (<a href="[sitetree_link id=44]">more</a>)</h6>', 'Following', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(199, 2, 6, 1, 1, 1, 'HomePage', '2011-11-28 21:21:06', '2012-02-29 04:42:12', 'main', 'Home', NULL, '<h5>Welcome to <em>St Michael and All Angels</em> online.<br/>We think St Mic’s is a really <em>special place</em>.<br/>Have a browse around and <em>find out why</em>. If you want to know more don''t hesitate to <a href="[sitetree_link id=24]">get in touch</a>.</h5>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(200, 6, 12, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:45:29', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it — people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread … (<a class="small" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">more</a>)</h5>\n<h6>Our services reflect the ‘mixed economy’ of our parish — the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(201, 6, 13, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:45:57', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it — people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread … <a class="small" href="http://en.wikipedia.org/wiki/Dietrich_Bonhoeffer">(more)</a></h5>\n<h6>Our services reflect the ‘mixed economy’ of our parish — the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(202, 45, 1, 0, 1, 0, 'Page', '2012-02-29 04:46:11', '2012-02-29 04:46:11', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 6),
(203, 45, 2, 1, 1, 1, 'MorePage', '2012-02-29 04:46:11', '2012-02-29 04:47:38', 'worship', 'Worship', NULL, '<p>According to Romans 12 verses 1 and 2, worship is about offering up the whole of our lives to God. The language here is about temple sacrifice but Paul locates our ‘true spiritual worship’, outside the temple in everyday life.</p>\n<p>So what are we doing each Sunday when we assemble together? Why is it important? One writer has summed it up as ‘parable and encounter’ — telling the story and meeting God together... Why not come to one of our services and find out for yourself?</p>', 'Worship', NULL, NULL, NULL, 0, 1, NULL, 0, 7, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 6),
(204, 6, 14, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-02-29 04:48:09', 'honouring', 'Honouring', NULL, '<h5>What a strange thing worship is when you think about it — people standing up and sitting down, throwing their arms around, saying things together, listening, singing, shaking hands, drinking wine, eating bread … <a class="small" href="[sitetree_link id=45]">(more)</a></h5>\n<h6>Our services reflect the ‘mixed economy’ of our parish — the diversity of where we live and who we are. Check out below whats on offer and try one out...</h6>', 'Honouring', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(205, 7, 8, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-03-06 01:14:13', 'engaging', 'Engaging', NULL, '<h5>“The Church is the only cooperative society in the world that exists for the benefit of those who are not its members.” <a class="small" href="http://en.wikipedia.org/wiki/William_Temple_(bishop)">Archbishop William Temple</a></h5>\n<h6>St. Mic’s sees itself as very much part of its local community. We also see ourselves as citizens not just of our city and nation, but of God''s world… (more)</h6>', 'Engaging', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(206, 46, 1, 0, 1, 0, 'Page', '2012-03-06 01:14:17', '2012-03-06 01:14:17', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(207, 46, 2, 1, 1, 1, 'MorePage', '2012-03-06 01:14:17', '2012-03-06 01:15:31', 'citizens-of-god-s-world', 'Citizens of God''s world', NULL, '<p>…That’s why we do stuff that serves our community in different ways. It is also why we support organisations and people around the globe who are doing the same. We encourage all our parishioners to take the good news about Jesus into their everyday lives - telling of God''s reconciling love and working for God’s justice however they can.</p>\n<p>Have a browse through just some of our activities. Maybe you could become involved. Maybe there is something you are interested in starting up. Let us know.</p>', 'Citizens of God''s world', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(208, 46, 3, 1, 1, 1, 'MorePage', '2012-03-06 01:14:17', '2012-03-06 01:15:36', 'citizens-of-god-s-world', 'Citizens of God''s world', NULL, '<p>…That’s why we do stuff that serves our community in different ways. It is also why we support organisations and people around the globe who are doing the same. We encourage all our parishioners to take the good news about Jesus into their everyday lives - telling of God''s reconciling love and working for God’s justice however they can.</p>\n<p>Have a browse through just some of our activities. Maybe you could become involved. Maybe there is something you are interested in starting up. Let us know.</p>', 'Citizens of God''s world', NULL, NULL, NULL, 0, 1, NULL, 0, 10, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 7),
(209, 7, 9, 1, 1, 1, 'SectionPage', '2011-11-28 21:30:17', '2012-03-06 01:16:05', 'engaging', 'Engaging', NULL, '<h5>“The Church is the only cooperative society in the world that exists for the benefit of those who are not its members.” <a class="small" href="http://en.wikipedia.org/wiki/William_Temple_(bishop)">Archbishop William Temple</a></h5>\n<h6>St. Mic’s sees itself as very much part of its local community. We also see ourselves as citizens not just of our city and nation, but of God''s world… (<a href="[sitetree_link id=46]">more</a>)</h6>', 'Engaging', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 1, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(210, 47, 1, 0, 1, 0, 'Page', '2012-03-06 01:33:07', '2012-03-06 01:33:07', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 11, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 7),
(211, 47, 2, 1, 1, 1, 'MorePage', '2012-03-06 01:33:07', '2012-03-06 01:33:30', 'global-missons-group', 'Global Missons Group', 'Global Missons Group (more)', '<p>''From everywhere to everywhere'', the title of Nazir Ali''s great little <a href="http://www.amazon.com/Everywhere-World-View-Christian-Mission/dp/1606082965 /ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1310387561&amp;sr=1-1">book</a> sums up what the St. Mic''s Global Mission Group is on about. Global Mission is the calling of the whole church to proclaim the whole gospel throughout the whole world.</p>\n<p>The Global Mission Group fosters this understanding of the church''s task within our parish and beyond. It does this by...</p>\n<ul><li>Praying for our mission partners serving Christ throughout the world (especially at the GMG''s Coffee, Croissant and Prayer Breakfast on the first Tuesday of every month)</li>\n<li>Organising visits by mission partners from abroad, seminars, bible studies and a yearly Global Mission Month to both educate parishioners about the global mission task of our church and encourage their active support of this work.</li>\n<li>Raising money (social events, auctions, personal giving etc.), for the direct support of individual global mission partners, the wider work of the Anglican Mission Board and the Church Missionary Society.</li>\n<li>Identifying potential mission partners from within our own congregations and encouraging them to consider God''s call on their lives.</li>\n</ul><p>Presently, St Mic''s is especially supporting Rosie Fyfe who is working with the church in Cairo. Rosie''s task is to find partners from around the world to help in the church''s outreach programme (health, education, pastoral care, refugee work etc). Have a read of one of<a href="PDFs/RosieLetter - July 2010.pdf">Rosie''s letters</a>.</p>\n<p>If you would like to find out more about GMG events or how you could help promote global mission interest, email <a href="mailto:mission@stmichaels.org.nz ">mission@stmichaels.org.nz</a></p>', 'Global Missons Group', NULL, NULL, NULL, 0, 1, NULL, 0, 11, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 7),
(212, 47, 3, 1, 1, 1, 'MorePage', '2012-03-06 01:33:07', '2012-03-06 01:33:58', 'global-misson-group', 'Global Misson Group', 'Global Misson Group (more)', '<p>''From everywhere to everywhere'', the title of Nazir Ali''s great little <a href="http://www.amazon.com/Everywhere-World-View-Christian-Mission/dp/1606082965 /ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1310387561&amp;sr=1-1">book</a> sums up what the St. Mic''s Global Mission Group is on about. Global Mission is the calling of the whole church to proclaim the whole gospel throughout the whole world.</p>\n<p>The Global Mission Group fosters this understanding of the church''s task within our parish and beyond. It does this by...</p>\n<ul><li>Praying for our mission partners serving Christ throughout the world (especially at the GMG''s Coffee, Croissant and Prayer Breakfast on the first Tuesday of every month)</li>\n<li>Organising visits by mission partners from abroad, seminars, bible studies and a yearly Global Mission Month to both educate parishioners about the global mission task of our church and encourage their active support of this work.</li>\n<li>Raising money (social events, auctions, personal giving etc.), for the direct support of individual global mission partners, the wider work of the Anglican Mission Board and the Church Missionary Society.</li>\n<li>Identifying potential mission partners from within our own congregations and encouraging them to consider God''s call on their lives.</li>\n</ul><p>Presently, St Mic''s is especially supporting Rosie Fyfe who is working with the church in Cairo. Rosie''s task is to find partners from around the world to help in the church''s outreach programme (health, education, pastoral care, refugee work etc). Have a read of one of<a href="PDFs/RosieLetter - July 2010.pdf">Rosie''s letters</a>.</p>\n<p>If you would like to find out more about GMG events or how you could help promote global mission interest, email <a href="mailto:mission@stmichaels.org.nz ">mission@stmichaels.org.nz</a></p>', 'Global Missons Group', NULL, NULL, NULL, 0, 1, NULL, 0, 11, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 7),
(213, 32, 4, 1, 1, 1, 'Page', '2012-01-06 12:26:04', '2012-03-06 01:35:00', 'global-mission-group', 'Global Mission Group', NULL, '<p>''From everywhere to everywhere'', the title of Nazir  Ali''s great little <a href="http://www.amazon.com/Everywhere-World-View-Christian-Mission/dp/1606082965 /ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1310387561&amp;sr=1-1">book</a> sums up what the St. Mic''s Global Mission Group is on about. Global Mission is the calling of the whole church to proclaim the whole gospel throughout the whole world.</p>\n<p>The Global Mission Group  fosters this understanding of the church’s task within our parish and beyond. <a href="[sitetree_link id=47]">Read more…</a></p>', 'Global Mission Group', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(214, 47, 4, 1, 1, 1, 'MorePage', '2012-03-06 01:33:07', '2012-03-06 01:35:47', 'global-misson-group', 'Global Misson Group', 'Global Misson Group (more)', '<p>''From everywhere to everywhere'', the title of Nazir Ali''s great little <a href="http://www.amazon.com/Everywhere-World-View-Christian-Mission/dp/1606082965 /ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1310387561&amp;sr=1-1">book</a> sums up what the St. Mic''s Global Mission Group is on about. Global Mission is the calling of the whole church to proclaim the whole gospel throughout the whole world.</p>\n<p>The Global Mission Group fosters this understanding of the church''s task within our parish and beyond. It does this by...</p>\n<ul><li>Praying for our mission partners serving Christ throughout the world (especially at the GMG''s Coffee, Croissant and Prayer Breakfast on the first Tuesday of every month)</li>\n<li>Organising visits by mission partners from abroad, seminars, bible studies and a yearly Global Mission Month to both educate parishioners about the global mission task of our church and encourage their active support of this work.</li>\n<li>Raising money (social events, auctions, personal giving etc.), for the direct support of individual global mission partners, the wider work of the Anglican Mission Board and the Church Missionary Society.</li>\n<li>Identifying potential mission partners from within our own congregations and encouraging them to consider God''s call on their lives.</li>\n</ul><p>Presently, St Mic''s is especially supporting Rosie Fyfe who is working with the church in Cairo. Rosie''s task is to find partners from around the world to help in the church''s outreach programme (health, education, pastoral care, refugee work etc). Have a read of one of <a href="PDFs/RosieLetter - July 2010.pdf">Rosie''s letters</a>.</p>\n<p>If you would like to find out more about GMG events or how you could help promote global mission interest, email <a href="mailto:mission@stmichaels.org.nz ">mission@stmichaels.org.nz</a></p>', 'Global Missons Group', NULL, NULL, NULL, 0, 1, NULL, 0, 11, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 7),
(215, 36, 4, 1, 1, 1, 'Page', '2012-01-06 12:26:05', '2012-03-06 01:38:19', 'wellington-city-mission', 'Wellington City Mission', NULL, '<p><a href="http://www.wellingtoncitymission.org.nz/"><img src="themes/stmichaels/images/wcmlogo.jpg" alt="Wellington City Mission" width="84" height="43"/></a> The Wellington City Mission does great work among Wellingtonians  who need special assistance in some way. We''re grateful to be part of this work through our           food bank, street collections, giving money and prayer. Keep and eye on our <a href="latest.html">latest</a> page for appeals and other ways you can become involved.</p>\n<p>Meantime, also have a look at the City Mission''s own <a href="http://www.wellingtoncitymission.org.nz">website</a> for a full description of           their fantastic work.</p>\n<p> </p>', 'Wellington City Mission', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(216, 36, 5, 1, 1, 1, 'Page', '2012-01-06 12:26:05', '2012-03-06 01:38:43', 'wellington-city-mission', 'Wellington City Mission', NULL, '<p><a href="http://www.wellingtoncitymission.org.nz/"><img src="themes/stmichaels/images/wcmlogo.jpg" alt="Wellington City Mission" width="84" height="43" align="right"/></a> The Wellington City Mission does great work among Wellingtonians  who need special assistance in some way. We''re grateful to be part of this work through our           food bank, street collections, giving money and prayer. Keep and eye on our <a href="latest.html">latest</a> page for appeals and other ways you can become involved.</p>\n<p>Meantime, also have a look at the City Mission''s own <a href="http://www.wellingtoncitymission.org.nz">website</a> for a full description of           their fantastic work.</p>\n<p> </p>', 'Wellington City Mission', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(217, 36, 6, 1, 1, 1, 'Page', '2012-01-06 12:26:05', '2012-03-06 01:38:54', 'wellington-city-mission', 'Wellington City Mission', NULL, '<p><a href="http://www.wellingtoncitymission.org.nz/"><img src="themes/stmichaels/images/wcmlogo.jpg" alt="Wellington City Mission" width="84" height="43" align="right"/></a> The Wellington City Mission does great work among Wellingtonians  who need special assistance in some way. We''re grateful to be part of this work through our           food bank, street collections, giving money and prayer. Keep and eye on our <a href="latest.html">latest</a> page for appeals and other ways you can become involved.</p>\n<p>Meantime, also have a look at the City Mission''s own <a href="http://www.wellingtoncitymission.org.nz">website</a> for a full description of           their fantastic work.</p>', 'Wellington City Mission', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7),
(218, 37, 4, 1, 1, 1, 'Page', '2012-01-06 12:26:58', '2012-03-06 01:42:29', 'kelburn-fair', 'Kelburn Fair', NULL, '<p>Every year St. Mic''s organises the St. Michael''s and           Kelburn Village Fair. Usually held  on the third Saturday in March, over the years it''s become a landmark community           event.</p>\n<p><span style="color: #a4998c; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: left;">All sorts of people from across town and within Kelburn get involved. Maybe you could be one of them? Check <a href="[sitetree_link id=9]">Latest</a> for more info. </span></p>\n<p>Proceeds from the fair           typically go to supporting community outreach programmes in Kelburn,           maintaining the church (community) hall and supporting the <a href="http://www.carpenterskids.net/">Carpenter''s Kids programme</a> in Tanzania.</p>', 'v', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_viewergroups`
--

CREATE TABLE IF NOT EXISTS `sitetree_viewergroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage`
--

CREATE TABLE IF NOT EXISTS `virtualpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_live`
--

CREATE TABLE IF NOT EXISTS `virtualpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_versions`
--

CREATE TABLE IF NOT EXISTS `virtualpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Widget') CHARACTER SET utf8 DEFAULT 'Widget',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `widgetarea`
--

CREATE TABLE IF NOT EXISTS `widgetarea` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('WidgetArea') CHARACTER SET utf8 DEFAULT 'WidgetArea',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
