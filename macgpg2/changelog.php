<?php
require('../libs/Smarty.class.php');
require('../libs/Smarty_subdir.config.php');
require('config.php');

$theSite->assign('title', 'MacGPG2 Changelog');
$theSite->display('changelog.tpl');
?>
