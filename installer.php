<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Installer');
$theSite->assign('img_logo', 'gpginstaller.png');
$theSite->assign('url_base', 'GPGTools/GPGTools');
$theSite->assign('url_dl', 'GPGTools-20110105_1.dmg');
$theSite->assign('url_sig', 'GPGTools-20110105_1.dmg.sig');
$theSite->assign('version', '2011.01.05_1');
$theSite->assign('date', '05. January 2011');
$theSite->assign('reqs', 'OS X 10.6');
$theSite->display('templates/installer.tpl');

?>
