<?php
require('../libs/Smarty.class.php');
require('../libs/Smarty_subdir.config.php');
require('config.php');

$theSite->assign('title', 'GPGTools Installer Changelog');
$theSite->display('changelog.tpl');
?>
