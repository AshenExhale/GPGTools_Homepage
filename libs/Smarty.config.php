<?php
$theSite = new Smarty;
$theSite->assign('IDSITE', '1');
$theSite->assign('PIWIK_URL', 'www.gpgtools.org/piwik/');
error_reporting(0); // date_default_timezone issues on OS X
?>
