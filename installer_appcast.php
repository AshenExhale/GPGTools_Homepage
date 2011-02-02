<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/">
<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');
require('installer.php.conf');
$theSite->display('templates/appcast.tpl');
?>
</rss>
