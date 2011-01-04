<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Projects');
$theSite->display('templates/projects.tpl');

?>
