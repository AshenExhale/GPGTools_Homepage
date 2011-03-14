<?php echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"; ?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:atom="http://www.w3.org/2005/Atom">
<channel>
<?php
/*fileExtension=xml*/

require('../libs/Smarty.class.php');
require('../libs/Smarty_subdir.config.php');
require('config.php');

$theSite->display('changelog.tpl');
?>
</channel>
</rss>
