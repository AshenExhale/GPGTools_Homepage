<?php /*compileIgnore*/

	
$version="1.4";
$release['1.4'] = mktime(12, 0, 0, 01, 26, 2011);
$release['1.3'] = mktime(12, 0, 0, 01, 23, 2011);
$release['1.2'] = mktime(12, 0, 0, 01, 17, 2011);
$release['1.1'] = mktime(12, 0, 0, 01, 24, 2011);
$current = $release[$version];

$theSite->assign('title', 'GPGServices');
$theSite->assign('name', 'gpgservices');
$theSite->assign('img_logo', 'images/logo.png');
$theSite->assign('url_base', 'GPGTools/GPGServices');
$theSite->assign('url_dl', "GPGServices-$version.dmg");
$theSite->assign('url_sig', "GPGServices-$version.dmg.sig");
$theSite->assign('url_beta', 'GPGServices-1.5beta1.dmg');
$theSite->assign('url_wiki', '');
$theSite->assign('version', $version);
$theSite->assign('date',     date("d. F Y", $current));
$theSite->assign('month',  date("m", $current));
$theSite->assign('day',  date("d", $current));
$theSite->assign('year',  date("Y", $current));
$theSite->assign('reqs', 'OS X 10.6');

$theSite->assign('overview', '
	<p>GPGServices is a plugin for the global Services menu (in the Application menu),
	which adds the ability to sign and verify plain text in any application that supports text services.
	It allows to import a key from text and return your default key.</p>
	<p>Signing and pasting your key or fingerprint require the host application to support pasting of text
	(so you will not be able to sign text highlighted in a pdf file in Preview, for instance).
	Verifying a signature and importing a key only require that you can highlight the text.</p>
');
$theSite->assign('short_description', 'GPGServices is a plugin for the global Services menu (in the Application menu), which adds the ability to sign and verify plain text in any application that supports text services. It allows to import a key from text and return your default key.');

$theSite->assign('lighthouse', '67607');
$theSite->assign('macupdate', "36566");
$theSite->assign('iusethis', "gpgservices");
$theSite->assign('heise', "");
$theSite->assign('cnet', "3000-2092_4-75335372");

$limitations = array(
'4' => 'Services are not automatically enabled',
'10' => 'Encryption no yet implemented (fixed in the current beta)',
'19' => 'Beta: crash when encrypting with an expired key',
);
$theSite->assign('limitations', $limitations);


$features = array(
'/images/installericon.png' => array('Is part of the <a href="/installer/index.php" title="our main project: the installer">GPGTools Installer</a>', 'Installer'),
);
$theSite->assign('features', $features);

$screenshots = array(
'images/prefs.png' => 'Enable the services in the preferences',
'images/verify.png' => 'Verify a text selection',
'images/insert.png' => 'Insert your own key',
);
$theSite->assign('screenshots', $screenshots);
$theSite->assign('screencasts', "");

$changelog = array(
    '1.4' => array(date("d. F Y", $release['1.4']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.4']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGServices/GPGServices-1.4.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "975922",
        "a" => "Just a new icon and an unified installer script",
        'sha' => "Checksum: 4da3e7a62a49c631fd0e117536c0380528072a10 (SHA-1)",
    )),
    '1.3' => array(date("d. F Y", $release['1.3']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.3']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGServices/GPGServices-1.3.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "1259702",
        "15" => "added support for decryption",
        "2" => "installer checks for gpg existence"
    )),
    '1.2b' => array(date("d. F Y", $release['1.2']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.2']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGServices/GPGServices-20110117.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "1239638",
        "a" => "now compatible with MacGPG 2.0.17",
        "5" => "logout/login not needed anymore",
        "3" => "renamed context menu",
        "11" => "better feedback when importing existing keys",
        "13" => "changed product the identifier",
        "14" => "updated version information"
    )),
    '1.1a' => array(date("d. F Y", $release['1.1']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.1']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGServices/GPGServices-1.1a1.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "1087357",
        "a" => "initial port from the old sources to Snow Leopard"
    ))
);
$theSite->assign('changelog', $changelog);
$theSite->assign('changelogfile', 'changelog.php');

?>
