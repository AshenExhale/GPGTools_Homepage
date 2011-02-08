<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Introduction');
$theSite->display('templates/intro.tpl');

?>
