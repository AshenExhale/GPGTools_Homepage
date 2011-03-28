<?php
	date_default_timezone_set('Europe/Berlin'); // date_default_timezone issues on OS X

        require('libs/Minify_HTML.class.php');
        function minifyHTML ($output, $smarty) {
            $html = new Minify_HTML($output);
            return $html->process();
        }

	$theSite = new Smarty;
	$theSite->assign('IDSITE', '1');
	$theSite->assign('PIWIK_URL', 'www.gpgtools.org/piwik/');
	$root = '.';
	$theSite->assign('root', $root);
        $theSite->registerFilter('output', 'minifyHTML');
?>
