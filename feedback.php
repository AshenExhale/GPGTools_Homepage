<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Feedback');
$theSite->display('templates/feedback.tpl');

?>
