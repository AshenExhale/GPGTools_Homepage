<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'GPGMail');
$theSite->assign('img_logo', 'gpgmail.png');
$theSite->assign('url_base', 'GPGMail/GPGMail');
$theSite->assign('url_dl', 'GPGMail-1.3.1.pkg');
$theSite->assign('url_sig', 'GPGMail-1.3.1.pkg.sig');
$theSite->assign('version', '1.3.1');
$theSite->assign('date', '11. November 2011');
$theSite->assign('reqs', 'OS X 10.6');
$theSite->display('templates/gpgmail.tpl');

?>
