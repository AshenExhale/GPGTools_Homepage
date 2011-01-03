<?php
require('libs/Smarty.class.php');

$theSite = new Smarty;

$theSite->assign('title', 'Projects');
$theSite->display('templates/projects.tpl');

?>
