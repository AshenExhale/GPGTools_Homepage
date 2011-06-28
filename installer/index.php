<?php
require('../libs/Smarty.class.php');
require('../libs/Smarty_subdir.config.php');
require('config.php');

$theSite->assign('prefetch', '../projects.html');
$theSite->display('project.tpl');
?>
