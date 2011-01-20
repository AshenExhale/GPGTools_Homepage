<?php
require('libs/Smarty.class.php');
require('libs/Smarty.config.php');

$theSite->assign('title', 'MacGPG2');
$theSite->assign('img_logo', 'macgpg2.png');
$theSite->assign('url_base', 'GPGTools/MacGPG2');
$theSite->assign('url_dl', 'MacGPG2-2.0.16.zip');
$theSite->assign('url_sig', 'MacGPG2-2.0.16.zip.sig');
$theSite->assign('url_beta', 'MacGPG2-2.0.17RC3.zip');
$theSite->assign('version', '2.0.16');
$theSite->assign('date', '31. October 2010');
$theSite->assign('reqs', 'OS X >= 10.4');

$theSite->assign('overview', 'MacGPG2 is the Mac OS X port of GnuPG, licensed under the GNU GPL. The aims of the project are to make GnuPG easy to install, provide a native MacOSX pinentry utility and interact with existing GnuPG tools for MacOSX.');
$theSite->assign('lighthouse', '66001');

$theSite->assign('limitations', "");

$features = array(
'installericon.png' => array('Is part of the <a href="installer.html" title="our main project: the installer">GPGTools Installer</a>', 'Installer'),
);
$theSite->assign('features', $features);
$theSite->assign('screenshots', "");
$theSite->assign('screencasts', "");

$theSite->assign('macupdate', "11136");
$theSite->assign('iusethis', "macgnuprivacyguard2");

$changelog = array(
"Last version to support PPC and MacOSX Tiger",
"Maximum key size increased to 8192 bits; recommended for expert users only",
"Core upgraded to GnuPG v2.0.16",
"Configured to use standard socket and daemonise gpg agent on the fly if required",
"Libassuan upgraded to v2.0.2-svn389",
"Libgpg-error updated to v1.9",
"Libgcrypt updated to v1.4.6",
"If the agent's --use-standard-socket option is active, all tools try to start and daemonize the agent on the fly. In the past this was only supported on W32; on non-W32 systems the new configure option --use-standard-socket may now be used to use this feature by default",
"The gpg-agent commands KILLAGENT and RELOADAGENT are now available on all platforms"
);
$theSite->assign('changelog', $changelog);

$theSite->display('templates/project.tpl');
?>
