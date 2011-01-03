<?php
require('libs/Smarty.class.php');

$theSite = new Smarty;

$theSite->assign('title', 'MacGPG2');
$theSite->display('templates/macgpg2.tpl');

?>
