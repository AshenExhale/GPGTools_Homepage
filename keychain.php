<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'GPG Keychain Access');
$theSite->assign('img_logo', 'gpgkeychain.png');
$theSite->assign('url_base', 'GPGTools/GPGKeychainAccess');
$theSite->assign('url_dl', 'GPGKeychainAccess-0_8_0b.tar.bz2');
$theSite->assign('url_sig', 'GPGKeychainAccess-0_8_0b.tar.bz2.asc');
$theSite->assign('version', '0.8.0b');
$theSite->assign('date', '16. January 2011');
$theSite->assign('reqs', 'OS X >= 10.5');

$theSite->assign('overview', 'GPG Keychain Access is an open source application for Apple OS X. It brings the functionality to manage OpenPGP keys. Please have a look at the <a href="https://github.com/GPGTools/GPGKeychainAccess/wiki/Getting-started">getting started</a> wiki.');
$theSite->assign('lighthouse', '65684');

$theSite->assign('limitations', "");

$features = array(
'installericon.png' => array('Is part of the <a href="installer.html" title="our main project: the installer">GPGTools Installer</a>', 'Installer'),
"secure.jpg" => array("Create, delete, find, sign, and verify all your keys", "key management"),
"64bit.jpg" => array("The bundle is 64-bit and Snow Leopard ready", "Snow Leopard"),
);
$theSite->assign('features', $features);

$screenshots = array(
"gpgkeychain_keys.png" => "List of installed keys"
);
$theSite->assign('screenshots', $screenshots);

$screencasts = array(
'create_key.m4v' => 'Create a private key'
);
$theSite->assign('screencasts', $screencasts);

$theSite->assign('macupdate', "17201");
$theSite->assign('iusethis', "gpgkeychainaccess");

$changelog = array(
"Added support for MacGPG2-2.0.17"
);
$theSite->assign('changelog', $changelog);

$theSite->display('templates/project.tpl');

?>
