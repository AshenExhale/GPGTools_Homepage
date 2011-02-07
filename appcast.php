<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/">
<channel>
<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

require('installer.php.conf');
$theSite->display('templates/appcast.tpl');
require('macgpg2.php.conf');
$theSite->display('templates/appcast.tpl');
require('gpgmail.php.conf');
$theSite->display('templates/appcast.tpl');
?>
</channel>
</rss>
