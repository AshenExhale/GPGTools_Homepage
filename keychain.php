<?php
require('libs/Smarty.class.php');

$theSite = new Smarty;

$theSite->assign('title', 'GPG Keychain Access');
$theSite->display('templates/keychain.tpl');

?>