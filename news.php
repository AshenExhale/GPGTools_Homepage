<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'News');
$theSite->display('templates/news.tpl');

?>