<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

require(basename(__FILE__) . '.conf');
$theSite->display('templates/faq.tpl');
?>
