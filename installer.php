<?php
require('libs/Smarty.class.php');

$theSite = new Smarty;

$theSite->assign('title', 'Installer');
$theSite->display('templates/installer.tpl');

?>