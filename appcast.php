<?php

/*fileExtension=xml*/
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$header = <<<EOD
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:atom="http://www.w3.org/2005/Atom">
    <channel>
		<title>GPGTools - Release Notes</title>
		<link>http://www.gpgtools.org/appcast.xml</link>
		<description>Visit http://www.gpgtools.org/ for further information.</description>
		<language>en</language>
		<docs>http://sparkle.andymatuschak.org/documentation</docs>
		<atom:link href="http://www.gpgtools.org/appcast.xml" rel="self" type="application/rss+xml" />
		<image>
			<url>http://www.gpgtools.org/images/rss_icon.png</url>
			<link>http://www.gpgtools.org/appcast.xml</link>
			<title>GPGTools</title>
		</image>

EOD;

$body = "";
require('installer/config.php');
$body .= $theSite->fetch('templates/appcast_core.tpl');
require('macgpg1/config.php');
$body .= $theSite->fetch('templates/appcast_core.tpl');
require('macgpg2/config.php');
$body .= $theSite->fetch('templates/appcast_core.tpl');
require('gpgmail/config.php');
$body .= $theSite->fetch('templates/appcast_core.tpl');
require('keychain/config.php');
$body .= $theSite->fetch('templates/appcast_core.tpl');

$footer = "    </channel>\n</rss>\n";

$obj = simplexml_load_string($header . $body . $footer);
$entries = $obj->xpath('/rss//item');
usort($entries, function ($x, $y) {
    return strtotime($y->pubDate) - strtotime($x->pubDate);
});

echo $header;
foreach ($entries as $entry) {
    echo $entry->asXml()."\n";
}
echo $footer;
?>
