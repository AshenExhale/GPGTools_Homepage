<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Official Homepage');
$theSite->display('templates/start.tpl');
?>
