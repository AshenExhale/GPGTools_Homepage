<?php
require('libs/Smarty.class.php');

$theSite = new Smarty;

$theSite->assign('title', 'GPGMail');
$theSite->display('templates/gpgmail.tpl');

?>