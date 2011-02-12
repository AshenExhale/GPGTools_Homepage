<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Contact');
$theSite->display('templates/about.tpl');

?>
