<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'Installer');
$theSite->assign('img_logo', 'gpginstaller.png');
$theSite->assign('url_base', 'GPGTools/GPGTools');
$theSite->assign('url_dl', 'GPGTools-20110105_1.dmg');
$theSite->assign('url_sig', 'GPGTools-20110105_1.dmg.sig');
$theSite->assign('version', '2011.01.05_1');
$theSite->assign('date', '05. January 2011');
$theSite->assign('reqs', 'OS X 10.6');

$theSite->assign('overview', 'GPGTools Installer is an open source installer for Apple OS X. It installs all related OpenPGP applications, plugins and dependencies. This is a BETA version so use at your own risk - also currently you cannot use the installer when you have GnuPG2 already installed. But we are working on it.');
$theSite->assign('lighthouse', '65162');

$limitations = array(
'36' => 'System wide installation not possible',
'37' => 'Installer breaks GPG2 installations (solved in the next release)',
);
$theSite->assign('limitations', $limitations);

$features = array(
'macgpg2.png' => array('Integrated GnuPG1 (<a href="macgpg2.html">GnuPG2</a> will be added very soon), gpg-agent, and pinentry-mac', 'gpg1, gpg-agent, pinentry-mac'),
'gpgmail.png' => array('Integrated <a href="gpgmail.html">GPGMail</a>', 'GPGMail'),
'gpgkeychain.png' => array('Integrated <a href="keychain.html">GPG Keychain Access</a>', 'GPG Keychain Access'),
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

$theSite->assign('macupdate', "");
$theSite->assign('iusethis', "gpgtools");

$changelog = array(
'Update: GPGMail 1.3.2beta',
'<a href="http://gpgtools.lighthouseapp.com/projects/65162/tickets/15">Issue 15</a>: Fixed check for OS requirements',
'<a href="http://gpgtools.lighthouseapp.com/projects/65162/tickets/26">Issue 26</a>: Fixed permission issues',
'<a href="http://gpgtools.lighthouseapp.com/projects/65162/tickets/16">Issue 27</a>: Added check for GPG2'
);
$theSite->assign('changelog', $changelog);

$theSite->display('templates/project.tpl');

?>
