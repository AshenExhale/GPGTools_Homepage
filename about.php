<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'About');
$theSite->display('templates/about.tpl');

?>