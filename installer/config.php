<?php /*compileIgnore*/

	
$version="20110302";
$release['20110302'] = mktime(11, 28, 0, 03, 02, 2011);
$release['20110214'] = mktime(17, 10, 0, 02, 14, 2011);
$release['2011.02.01'] = mktime(12, 0, 0, 02, 01, 2011);
$release['2011.01.25'] = mktime(12, 0, 0, 01, 25, 2011);
$release['2011.01.18beta1'] = mktime(12, 0, 0, 01, 18, 2011);
$release['2011.01.05_1'] = mktime(13, 0, 0, 01, 05, 2011);
$release['2011.01.05'] = mktime(12, 0, 0, 01, 05, 2011);
$release['2011.01.03'] = mktime(12, 0, 0, 01, 23, 2011);
$current = $release[$version];

$theSite->assign('title',    'Installer');
$theSite->assign('name', 'installer');
$theSite->assign('img_logo', 'images/logo-128px.png');
$theSite->assign('url_base', 'GPGTools/GPGTools');
$theSite->assign('url_dl',   "GPGTools-$version.dmg");
$theSite->assign('url_sig',  "GPGTools-$version.dmg.sig");
$theSite->assign('url_beta',  "");
$theSite->assign('url_wiki', '');
$theSite->assign('date',     date("d. F Y", $current));
$theSite->assign('version',  date("Y.m.d", $current));
$theSite->assign('month',  date("m", $current));
$theSite->assign('day',  date("d", $current));
$theSite->assign('year',  date("Y", $current));
$theSite->assign('reqs',     'OS X 10.6');

$theSite->assign('overview', '
	<p>The GPGTools are a collection of open source tools for encryption on Mac OS X, gathered in an all-in-one-Installer solution.
	It installs all related OpenPGP applications, plugins and dependencies. You can choose which components to install.</p>
');
$theSite->assign('short_description', 'The GPGTools are a collection of open source tools for encryption on Mac OS X, gathered in an all-in-one-Installer solution. It installs all related OpenPGP applications, plugins and dependencies. You can choose which components to install.');

$theSite->assign('lighthouse', '65162');
$theSite->assign('macupdate', "9417");
$theSite->assign('iusethis', "gpgtools");
$theSite->assign('heise', "78714");
$theSite->assign('cnet', "3000-2092_4-75335253");

$limitations = array(
'36' => 'System wide installation of GPGMail not possible, yet',
);
$theSite->assign('limitations', $limitations);

$features = array(
'/macgpg2/images/logo-35px.png' => array('Integrated <a href="/macgpg2/index.php">MacGPG2</a> (does not break your gpg1 installation, if there is one)', 'gpg2, gpg-agent, pinentry-mac'),
'/gpgmail/images/logo-35px.png' => array('Integrated <a href="/gpgmail/index.php">GPGMail</a> (with <a href="/faq.php#3.2">OS update auto-fix</a>)', 'GPGMail'),
'/keychain/images/logo-35px.png' => array('Integrated <a href="/keychain/index.php">GPG Keychain Access</a>', 'GPG Keychain Access'),
'/gpgservices/images/logo.png' => array('Integrated <a href="/gpgservices/index.php">GPGServices</a>', 'GPGServices'),
'/gpgpreferences/images/logo-35px.png' => array('Integrated <a href="/gpgpreferences/index.php">GPGPreferences</a> (initial version, GPG and GPGMail auto-fix only)', 'GPGPreferences'),
'/images/enigmail.png' => array('Integrated <a href="http://enigmail.mozdev.org/">Enigmail</a>', 'Mozilla Enigmail'),
'/images/64bit.jpg' => array('The application is 64-bit and Snow Leopard ready', 'Snow Leopard')
);
$theSite->assign('features', $features);

$screenshots = array(
'images/volume.png' => 'The installation volume',
'images/installer.png' => 'List of components you can choose from'
);
$theSite->assign('screenshots', $screenshots);

$screencasts = array(
'install_gpgtools.m4v' => 'Install GPGTools'
);
$theSite->assign('screencasts', $screencasts);

$changelog = array(
    '20110302' => array(date("d. F Y", $release['20110302']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['20110302']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGTools/GPGTools-20110302.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "19174951",
        'c' => 'Enhancement: now compatible with Snow Leopard 10.6.7',
        'a' => 'Update: GPGMail 1.3.2',
        'b' => 'Update: GPG Keychain Access 0.8.4',
        '51' => 'Enhancement: Remove "no-use-standard-socket" from gpg-agent.conf',
        '52' => 'Enhancement: Add a key server if none exists',
        'sha' => "Checksum: 446559bba04ab5c4704b9942d4179da8ab0f56ee (SHA-1)",
        )),
    '20110214' => array(date("d. F Y", $release['20110214']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['20110214']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGTools/GPGTools-20110214.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "19043995",
        'a' => 'Update: MacGPG2.0.17-9',
        '51' => 'Enhancement: automatically removing no-use-standard-socket from gpg-agent.conf',
        'sha' => "Checksum: 59b3aa790803a8f678842e5ee3ae6d4c4ba5fc55 (SHA-1)",
        )),
    '2011.02.01' => array(date("d. F Y", $release['2011.02.01']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['2011.02.01']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGTools/GPGTools-20110201.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "30086116",
        '19' => 'Highlight: automatically add new UUIDs (so already compatible with 10.6.7)',
        '38' => 'Enhancement: the user is now forced to close Mail.app',
        '47' => 'Enhancement: removing old pinentry configurations from gpg.conf',
        '49' => 'Fixed: issues on clean OS X installations',
        '46' => 'Fixed: issues updating old preference panes',
        '43' => 'Fixed: issues with users in OpenDirectory folders',
        '42' => 'Fixed: issues with the uninstaller when gpg is not installed',
        )),
    '2011.01.25' => array(date("d. F Y", $release['2011.01.25']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['2011.01.25']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGTools/GPGTools-20110125.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "29573564",
        'a' => 'MacGPG: 2.0.17',
        'b' => 'GPGMail: 1.3.2rc1',
        'c' => 'GPG Keychain Access: 0.8.3b',
        'd' => 'GPGServices: 1.3',
        'e' => 'GPGPreferences: 0.4 (GPGMail autofix only)',
        'f' => 'Enigmail: 1.1.2',
        'g' => 'Many other small bug fixes',
        )),
    '2011.01.18beta1' => array('18. January 2011', array(
        'sparkle_date' => date(DATE_RFC2822, $release['2011.01.18beta1']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGTools/GPGTools-20110118_beta1.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "27150208",
        'a' => 'Update: GPGMail 1.3.2rc1',
        'b' => 'Update: GPG Keychain Access 0.8.0b',
        '37' => 'Does not break GPG2 anymore',
        '9' => 'Now based on MacGPG2 2.0.17rc3',
        '34' => 'Added GPGServices',
        '28' => 'Updated uninstaller',
        '13' => 'Added pka support',
        '12' => 'Remove start-gpg-agent',
        '29' => 'Updated icons',
        )),
    '2011.01.05_1' => array('15. January 2011', array(
        'sparkle_date' => date(DATE_RFC2822, $release['2011.01.05_1']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGTools/GPGTools-20110105_1.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "12205736",
        'a' => 'Update: GPGMail 1.3.2beta',
        '15' => 'Fixed check for OS requirements',
        '26' => 'Fixed permission issues',
        '27' => 'Added check for GPG2',
        )),
    '2011.01.05' => array('15. January 2011', array(
        'sparkle_date' => date(DATE_RFC2822, $release['2011.01.05']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGTools/GPGTools-20110105.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "11519130",
        '15' => 'Fixed check for OS requirements',
        '26' => 'Fixed permission issues',
        '27' => 'Added check for GPG2',
        )),
    '2011.01.03' => array('03. January 2011', array(
        'sparkle_date' => date(DATE_RFC2822, $release['2011.01.03']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGTools/GPGTools-20110103.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "11518950",
        'a' => 'no release notes',
        )),
);
$theSite->assign('changelog', $changelog);
$theSite->assign('changelogfile', 'changelog.php');

?>
