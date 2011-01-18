<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'GPGServices');
$theSite->assign('img_logo', 'gpgservices.png');
$theSite->assign('url_base', 'GPGTools/GPGServices');
$theSite->assign('url_dl', 'GPGServices-20110117.dmg');
$theSite->assign('url_sig', 'GPGServices-20110117.dmg.sig');
$theSite->assign('version', '1.2b');
$theSite->assign('date', '17. January 2011');
$theSite->assign('reqs', 'OS X 10.6');

$theSite->assign('overview', 'The GPGServices service plugin adds to the global Services menu (in the Application menu) the facility to sign and verify plain text in any application that supports text services. The plugin also provides convenience facilities to import an ascii-armoured key from text in any application as well as return your default key, in ascii armoured format, and the keys fingerprint.</p><p>Signing and pasting your key or fingerprint require the host application to support pasting of text (so you will not be able to sign text highlighted in a pdf file in Preview, for instance). Verifying a signature and importing a key only require that you can highlight the text.</p><p>Here you can find the <a href="http://www.far-blue.co.uk/projects/gpgservices.html">discontinued original version</a>.');
$theSite->assign('lighthouse', '67607');

$limitations = array(
'4' => 'Services are not automatically enabled',
'10' => 'Encryption and decryption is not implemented'
);
$theSite->assign('limitations', $limitations);


$features = array(
'installericon.png' => array('Will be part of the <a href="installer.html" title="our main project: the installer">GPGTools Installer</a> some day', 'Installer')
);
$theSite->assign('features', $features);

$screenshots = array(
'gpgservices_prefs.png' => 'Enable the services in the preferences',
'gpgservices_verify.png' => 'Verify a text selection',
'gpgservices_insert.png' => 'Insert your own key',
);
$theSite->assign('screenshots', $screenshots);
$theSite->assign('screencasts', "");
$theSite->assign('macupdate', "");
$theSite->assign('iusethis', "");

$changelog = array(
"Now compatible with MacGPG 2.0.17",
"<a href='http://gpgtools.lighthouseapp.com/projects/67607/tickets/5'>Issue 5</a>: logout/login not needed anymore",
"<a href='http://gpgtools.lighthouseapp.com/projects/67607/tickets/3'>Issue 3</a>: renamed context menu",
"<a href='http://gpgtools.lighthouseapp.com/projects/67607/tickets/11'>Issue 11</a>: better feedback when importing existing keys",
"<a href='http://gpgtools.lighthouseapp.com/projects/67607/tickets/13'>Issue 13</a>: changed product the identifier",
"<a href='http://gpgtools.lighthouseapp.com/projects/67607/tickets/14'>Issue 14</a>: updated version information"
);
$theSite->assign('changelog', $changelog);

$theSite->display('templates/project.tpl');

?>
