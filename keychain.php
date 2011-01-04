<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'GPG Keychain Access');
$theSite->display('templates/keychain.tpl');

?>