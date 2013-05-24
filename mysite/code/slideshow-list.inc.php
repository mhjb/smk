<?php
switch($this->URLSegment){
default:
case "Security":
  $files = array(
    "connecting/churchpainting.jpg");
  break;
case "main":
  $files = array(
    "main/homephoto(John).jpg",
     "main/homephoto(Joel&amp;Mamaari).jpg",
     "main/james.jpg",
     "main/homephoto(pagent).jpg",
     "main/geoff.jpg",
     "main/Lisa&amp;Jenny.jpg");
  break;

case "get-in-touch":
case "connect-with-st-mic-s-people":
case "friends":
case "parish-registry":

  $files = array(
    "connecting/connecting(NatandBrock).png",
    "connecting/ben.jpg",
    "connecting/Connecting(Farmer Maori).jpg",
    "connecting/connecting(girlwithcake).jpg");
  break;
case "finding-st-mic-s":
  $files = array(
    "connecting/smk-satellite.jpg");
  break;
case "weddings-at-st-mic-s":
  $files = array(
    "connecting/Ben &amp; Pam Sando.jpg",
    "connecting/Lucy&amp;Nick2.jpg",
    "connecting/loren-cam.jpg",
    "connecting/Lucy&amp;Nick.jpg");
  break;
case "funerals":

  $files = array("connecting/casketcolour.jpg");
  break;
case "parish-hall":
  $files = array(
    "connecting/connecting(NatandBrock).png",
    "connecting/women-at-snacks.jpg",
    "following/followingphoto(meredith&roger).jpg",
    "connecting/connecting(girlwithcake).jpg",
    "connecting/clare-group.jpg");
  break;
case "taonga":
  $files = array(
    "connecting/churchpainting.jpg",
    "connecting/Centennial 2006.jpg",
    "connecting/stained-glass.jpg");
  break;
case "mikel-news":
  $files = array(
    "engaging/Engagephoto(WMSongs).jpg",
    "engaging/Engagephoto(WCMcollect).jpg",
    "engaging/Engagephoto(joel).jpg",
    "engaging/Engagephoto(faircontainer).jpg");
  break;
  case "global-mission-partnership":
case "going-up-country":
  $files = array(
    "engaging/global-mission-group/world-in-your-hands.jpg",
    "engaging/global-mission-group/Bishoponphone.jpg",
    "engaging/global-mission-group/RosieandKids.jpg",
    "engaging/global-mission-group/engage(carpenters-kids).jpg");
  break;
case "angchap-and-human-fm":
case "classroom-assist-and-disaster-preparedness":
case "wellington-city-mission":
  $files = array(
    "engaging/Engagephoto(joel).jpg",
    "engaging/Engagephoto(WMSongs).jpg",
    "engaging/global-mission-group/RosieandKids.jpg",
    "engaging/Engagephoto(WCMcollect).jpg",
    "engaging/engage(classroomassist).jpg");
  break;
case "windmill-songs":
  $files = array(
    "engaging/Engagephoto(WMSongs).jpg",
    "engaging/engage(wmsongs2).jpg",
    "engaging/engage(wmsongs3).jpg",
    "engaging/Engagephoto(WCMcollect).jpg",
    "engaging/engage(classroomassist).jpg");
  break;
case "local-connections":
  $files = array(
    "engaging/Engagephoto(WCMcollect).jpg",
	  "engaging/engage(classroomassist).jpg",
    "engaging/Engagephoto(WMSongs).jpg",
    "engaging/Engagephoto(faircontainer).jpg",
    "engaging/Engagephoto(joel).jpg");
  break;
case "kelburn-fair":
  $files = array(
    "engaging/FairHall.jpg",
    "engaging/Engagephoto(faircontainer).jpg",
    "engaging/GretaFairstall.jpg",
    "engaging/engage(fairbargain).jpg",
    "engaging/Engagephoto(facepaint).jpg");
  break;
  case "life-groups":
case "student-discipleship":
  $files = array(
    "following/followingphoto(meredith&amp;roger).jpg",
    "following/followingphoto(wgroup).jpg",
    "following/followingphoto(Sundayschool).jpg",
    "following/followingphoto(baptism).jpg",
    "following/followingphoto(ramseyhomegroup).jpg",
    "following/followingphoto(homeC).jpg");
  break;

  case "bible-studies":
  $files = array(
    "following/followingphoto(wgroup).jpg",
    "following/followingphoto(Sundayschool).jpg",
    "following/followingphoto(baptism).jpg",
    "following/followingphoto(ramseyhomegroup).jpg",
    "following/followingphoto(homeC).jpg",
    "following/followingphoto(meredith&amp;roger).jpg");
  break;

  case "guess-who-s-coming-for-dinner":
  $files = array(
    "following/followingphoto(dinner).jpg");
  break;
case "children-s-ministry":
  $files = array(
    "following/followingphoto(Sundayschool).jpg",
    "following/followingphoto(baptism).jpg",
    "following/followingphoto(ramseyhomegroup).jpg",
    "following/followingphoto(homeC).jpg",
    "following/followingphoto(meredith&amp;roger).jpg",
    "following/followingphoto(wgroup).jpg");
  break;
 case "baptisms":
  $files = array(
    "following/followingphoto(baptism).jpg",
    "following/followingphoto(ramseyhomegroup).jpg",
    "following/followingphoto(homeC).jpg",
    "following/followingphoto(meredith&amp;roger).jpg",
    "following/followingphoto(wgroup).jpg",
    "following/followingphoto(Sundayschool).jpg");
  break;
 case "pastoral-care":
  $files = array(
    "following/followingphoto(homeC).jpg",
    "following/followingphoto(meredith&amp;roger).jpg",
    "following/followingphoto(wgroup).jpg",
    "following/followingphoto(Sundayschool).jpg",
    "following/followingphoto(baptism).jpg",
    "following/followingphoto(ramseyhomegroup).jpg");
  break;
 case "family-worship-sunday-10-30am":
  $files = array(
    "honouring/Honourphoto(Communion).jpg",
    "honouring/Honourphoto(preaching).jpg",
    "honouring/Honourphoto(singing).jpg",
    "honouring/communion2.jpg",
    "honouring/Honourphoto(musictrio).jpg");
  break;
case "substance-sunday-at-noon":
  $files = array(
    "honouring/substance1.jpg",
    "honouring/substance2.jpg",
    "honouring/substance3.jpg",
    "honouring/substance4.jpg");
  break;
case "holy-communion-sunday-9am":
  $files = array(
    "honouring/Hannahleadingworship.jpg",
    "honouring/morning-prayer.jpg");

break;
case "morning-prayer":
  $files = array(
    "honouring/Honourphoto(Lizpraying).jpg");
  break;

  case "occasional-services":
  $files = array(
    "following/followingphoto(baptism).jpg",
    "honouring/Honourphoto(Communion).jpg",
    "honouring/Honourphoto(preaching).jpg",
    "honouring/Honourphoto(singing).jpg",
    "honouring/communion2.jpg",
    "honouring/Hannahleadingworship.jpg",
    "honouring/Honourphoto(musictrio).jpg");
  break;

  case "music-at-st-mic-s":
  $files = array(
    "honouring/organplay.jpg",
    "honouring/erinsinging.jpg",
	"honouring/Honourphoto(musictrio).jpg");
  break;

  case "mainly-music":
  $files = array("engaging/Engagephoto(WMSongs).jpg");
  break;


} ?>

