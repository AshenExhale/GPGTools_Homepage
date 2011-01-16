<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'GPGServices');
$theSite->assign('img_logo', 'gpgservices.png');
$theSite->assign('url_base', 'GPGTools/GPGServices');
$theSite->assign('url_dl', 'GPGServices-1.1a1.dmg');
$theSite->assign('url_sig', 'GPGServices-1.1a1.dmg.sig');
$theSite->assign('version', '1.1a1');
$theSite->assign('date', '14. January 2011');
$theSite->assign('reqs', 'OS X 10.6');
$theSite->assign('overview', 'The GPGServices service plugin adds to the global Services menu (in the Application menu) the facility to sign and verify plain text in any application that supports text services. The plugin also provides convenience facilities to import an ascii-armoured key from text in any application as well as return your default key, in ascii armoured format, and the keys fingerprint.</p><p>Signing and pasting your key or fingerprint require the host application to support pasting of text (so you will not be able to sign text highlighted in a pdf file in Preview, for instance). Verifying a signature and importing a key only require that you can highlight the text.</p><p>Here you can find the <a href="http://www.far-blue.co.uk/projects/gpgservices.html">discontinued original version</a>.');
$theSite->assign('support', 'Please have a look at the <a href="http://gpgtools.lighthouseapp.com/projects/67607/tickets">issue section</a> and ask <a href="mailto:gpgtools-users@lists.gpgtools.org">the mailing list</a> for further support.');

$features = array(
'installericon.png' => array('Will be part of the <a href="installer.html" title="our main project: the installer">GPGTools Installer</a> some day', 'Installer')
);
$theSite->assign('features', $features);

$theSite->assign('screenshots', "");
$theSite->assign('screencasts', "");
$theSite->assign('macupdate', "");
$theSite->assign('iusethis', "");

$changelog = array(
"Initial port from the old sources to Snow Leopard"
);
$theSite->assign('changelog', $changelog);

$theSite->display('templates/project.tpl');

?>
