<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Installer');
$theSite->display('templates/installer.tpl');

?>