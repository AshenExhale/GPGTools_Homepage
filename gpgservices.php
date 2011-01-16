<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'GPGServices');
$theSite->assign('img_logo', 'gpgservices.png');
$theSite->assign('url_base', 'GPGTools/GPGServices');
$theSite->assign('url_dl', 'GPGServices-1.1a1.dmg');
$theSite->assign('url_sig', 'GPGServices-1.1a1.dmg.sig');
$theSite->assign('version', '1.1a1');
$theSite->assign('date', '14. January 2011');
$theSite->assign('reqs', 'OS X 10.6');
$theSite->display('templates/gpgservices.tpl');

?>
