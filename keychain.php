<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'GPG Keychain Access');
$theSite->assign('img_logo', 'gpgkeychain.png');
$theSite->assign('url_base', 'GPGTools/GPGKeychainAccess');
$theSite->assign('url_dl', 'GPGKeychainAccess-0_8_0b.tar.bz2');
$theSite->assign('url_sig', 'GPGKeychainAccess-0_8_0b.tar.bz2.asc');
$theSite->assign('version', '0.8.0b');
$theSite->assign('date', '16. January 2011');
$theSite->assign('reqs', 'OS X >= 10.5');
$theSite->display('templates/keychain.tpl');

?>
