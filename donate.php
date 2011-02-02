<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Donate');
$theSite->display('templates/donate.tpl');

?>
