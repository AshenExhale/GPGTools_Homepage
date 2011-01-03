<?php
require('libs/Smarty.class.php');

$theSite = new Smarty;

$theSite->assign('title', 'Official Homepage');
$theSite->display('templates/start.tpl');

?>
