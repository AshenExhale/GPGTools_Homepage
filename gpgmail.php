<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'GPGMail');
$theSite->display('templates/gpgmail.tpl');

?>