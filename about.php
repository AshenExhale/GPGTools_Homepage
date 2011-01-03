<?php
require('libs/Smarty.class.php');

$theSite = new Smarty;

$theSite->assign('title', 'About');
$theSite->display('templates/about.tpl');

?>