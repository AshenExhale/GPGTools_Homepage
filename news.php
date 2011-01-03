<?php
require('libs/Smarty.class.php');

$theSite = new Smarty;

$theSite->assign('title', 'News');
$theSite->display('templates/news.tpl');

?>