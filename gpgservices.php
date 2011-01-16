<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'GPGServices');
$theSite->display('templates/gpgservices.tpl');

?>
