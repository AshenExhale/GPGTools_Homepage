<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'MacGPG2');
$theSite->assign('img_logo', 'macgpg2.png');
$theSite->assign('url_base', 'GPGTools/MacGPG2');
$theSite->assign('url_dl', 'MacGPG2-2.0.16.zip');
$theSite->assign('url_sig', 'MacGPG2-2.0.16.zip.sig');
$theSite->assign('version', '2.0.16');
$theSite->assign('date', '31. October 2010');
$theSite->assign('reqs', 'OS X >= 10.4');
$theSite->display('templates/macgpg2.tpl');
?>
