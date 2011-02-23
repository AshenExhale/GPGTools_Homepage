<?php echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"; ?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:atom="http://www.w3.org/2005/Atom">
<channel>
		<title>GPGTools - Changelog</title>
		<link>http://www.gpgtools.org/appcast.xml</link>
		<description>Visit http://www.gpgtools.org/ for further information.</description>
		<language>en</language>
		<docs>http://sparkle.andymatuschak.org/documentation</docs>
		<atom:link href="http://www.gpgtools.org/appcast.xml" rel="self" type="application/rss+xml" />
<?php
/*fileExtension=xml*/
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

require('installer.php.conf');
$theSite->display('templates/appcast_core.tpl');
require('macgpg2.php.conf');
$theSite->display('templates/appcast_core.tpl');
require('gpgmail.php.conf');
$theSite->display('templates/appcast_core.tpl');
require('keychain.php.conf');
$theSite->display('templates/appcast_core.tpl');
?>
</channel>
</rss>
