<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Thank you');
$theSite->display('templates/donated.tpl');

?>
