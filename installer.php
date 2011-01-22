<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Installer');
$theSite->assign('img_logo', 'gpginstaller.png');
$theSite->assign('url_base', 'GPGTools/GPGTools');
$theSite->assign('url_dl', 'GPGTools-20110118_beta1.dmg');
$theSite->assign('url_beta', '');
$theSite->assign('url_sig', 'GPGTools-20110118_beta1.dmg.sig');
$theSite->assign('version', '2011.01.18beta1');
$theSite->assign('date', '18. January 2011');
$theSite->assign('reqs', 'OS X 10.6');

$theSite->assign('overview', 'GPGTools Installer is an open source installer for Apple OS X. It installs all related OpenPGP applications, plugins and dependencies.');
$theSite->assign('lighthouse', '65162');

$limitations = array(
'36' => 'System wide installation not possible',
);
$theSite->assign('limitations', $limitations);

$features = array(
'macgpg2.png' => array('Integrated <a href="macgpg2.html">MacGPG2</a>', 'gpg2, gpg-agent, pinentry-mac'),
'gpgmail.png' => array('Integrated <a href="gpgmail.html">GPGMail</a>', 'GPGMail'),
'gpgkeychain.png' => array('Integrated <a href="keychain.html">GPG Keychain Access</a>', 'GPG Keychain Access'),
'gpgservices.png' => array('Integrated <a href="gpgservices.html">GPGServices</a>', 'GPGServices'),
'enigmail.png' => array('Integrated <a href="http://enigmail.mozdev.org/">Enigmail</a>', 'Mozilla Enigmail'),
'64bit.jpg' => array('The application is 64-bit and Snow Leopard ready', 'Snow Leopard')
);
$theSite->assign('features', $features);

$screenshots = array(
'installer_dmg.png' => 'The installation volume',
'installer.png' => 'List of components in the installer'
);
$theSite->assign('screenshots', $screenshots);

$screencasts = array(
'install_gpgtools.m4v' => 'Install GPGTools'
);
$theSite->assign('screencasts', $screencasts);

$theSite->assign('macupdate', "9417");
$theSite->assign('iusethis', "gpgtools");

$changelog = array(
    '2011.01.18beta1' => array('18. January 2011', array(
        'a' => 'Update: GPGMail 1.3.2rc1',
        'b' => 'Update: GPG Keychain Access 0.8.0b',
        '37' => 'Does not break GPG2 anymore',
        '9' => 'Now based on MacGPG2 2.0.17rc3',
        '34' => 'Added GPGServices',
        '28' => 'Updated uninstaller',
        '13' => 'Added pka support',
        '12' => 'Remove start-gpg-agent',
        '29' => 'Updated icons',
        ))
);
$theSite->assign('changelog', $changelog);

$theSite->display('templates/project.tpl');

?>
