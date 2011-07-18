<?php /*compileIgnore*/


$version="0.6";
$release['0.6'] = mktime(11, 28, 0, 01, 27, 2011);
$current = $release[$version];

$theSite->assign('title', 'GPGPreferences');
$theSite->assign('name', 'gpgpreferences');
$theSite->assign('img_logo', 'images/logo-128px.png');
$theSite->assign('url_base', 'GPGTools/GPGTools_Preferences');
$theSite->assign('url_dl', "GPGPreferences-$version.dmg");
$theSite->assign('url_sig', "GPGPreferences-$version.dmg.sig");
$theSite->assign('url_beta', '');
$theSite->assign('url_wiki', '');
$theSite->assign('date',     date("d. F Y", $current));
$theSite->assign('version',  "$version");
$theSite->assign('month',  date("m", $current));
$theSite->assign('day',  date("d", $current));
$theSite->assign('year',  date("Y", $current));
$theSite->assign('reqs', 'OS X 10.5');

$theSite->assign('overview', '
	<p>The GPGTools preferences pane will replace the old GPGPreferences pane in the future.
	By now you can fix broken GPG and GPGMail installations (e.g. after an OS X update).</p>
');
$theSite->assign('short_description', 'The GPGTools preferences pane will replace the old GPGPreferences pane in the future. By now you can fix broken GPG and GPGMail installations (e.g. after an OS X update).');

$theSite->assign('lighthouse', '66966');
$theSite->assign('macupdate', "");
$theSite->assign('iusethis', "");
$theSite->assign('heise', "");
$theSite->assign('cnet', "3000-2092_4-25028");

$limitations = array(
'1' => 'The old GPGPreferences are not included, yet',
);
$theSite->assign('limitations', $limitations);


$features = array(
    "$root/images/installericon.png" => array("Is part of the <a href='$root/installer/index.php' title='our main project: the installer'>GPGTools Installer</a>", 'Installer'),
    "$root/images/update.png" => array("Can <a href='$root/faq.php#3.2'>auto-fix GPGMail after an OS update</a>", 'auto-fix'),

);
$theSite->assign('features', $features);

$screenshots = array(
'images/gpg.png' => array('images/gpg-small.png', 'Fix GPG installations'),
'images/gpgmail.png' => array('images/gpgmail-small.png', 'Fix GPGMail (e.g. after an OS update)')
);
$theSite->assign('screenshots', $screenshots);
$theSite->assign('screencasts', "");

$changelog = array(
    '0.6' => array(date("d. F Y", $release['0.6']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['0.6']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGTools_Preferences/GPGPreferences-0.6.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "656746",
        "a" => "Updates for OS X 10.6.7",
        "b" => "Added uninstaller",
        "c" => "Updated DMG generation script",
        'sha' => "Checksum: 93f076f06561dbfdc7a7d1f5c680d899d8667f5a (SHA-1)",
    )),
    '0.5' => array('26. January 2011', array(
        "a" => "Added GPG fix",
    )),
    '0.4' => array('24. January 2011', array(
        "a" => "Initial update for GPGTools integration"
    ))
);
$theSite->assign('changelog', $changelog);
$theSite->assign('changelogfile', 'changelog.php');

?>
