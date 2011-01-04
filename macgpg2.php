<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'MacGPG2');
$theSite->display('templates/macgpg2.tpl');

?>
