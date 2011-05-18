<?php /*compileIgnore*/

$version="1.6";
$release['1.6'] = mktime(15, 0, 0, 05, 18, 2011);
$release['1.5'] = mktime(12, 0, 0, 03, 22, 2011);
$release['1.4'] = mktime(12, 0, 0, 01, 26, 2011);
$release['1.3'] = mktime(12, 0, 0, 01, 23, 2011);
$release['1.2'] = mktime(12, 0, 0, 01, 17, 2011);
$release['1.1'] = mktime(12, 0, 0, 01, 24, 2011);
$current = $release[$version];

$theSite->assign('title', 'GPGServices');
$theSite->assign('name', 'gpgservices');
$theSite->assign('img_logo', 'images/logo-128px.png');
$theSite->assign('url_base', 'GPGTools/GPGServices');
$theSite->assign('url_dl', "GPGServices-$version.dmg");
$theSite->assign('url_sig', "GPGServices-$version.dmg.sig");
$theSite->assign('url_beta', '');
$theSite->assign('url_wiki', '');
$theSite->assign('version', $version);
$theSite->assign('date',     date("d. F Y", $current));
$theSite->assign('month',  date("m", $current));
$theSite->assign('day',  date("d", $current));
$theSite->assign('year',  date("Y", $current));
$theSite->assign('reqs', 'OS X 10.6');

$theSite->assign('overview', '
	<p>GPGServices is a plugin for the global
	<a href="http://www.apple.com/macosx/refinements/">OS X Services menu</a>,
	which adds the ability to almost any application (e.g. Safari, Finder, or
	TextEdit) to use OpenPGP functionalities. In a nutshell:</p>
	<ul>
	<li>Any folder: sign and encrypt.</li>
	<li>Any file: verify, sign, import, encrypt, and decrypt.</li>
	<li>Any text selection: verify and import.</li>
	<li>Any text field: verify, sign, import, export, encrypt, and decrypt.</li>
	</ul>
');
$theSite->assign('short_description', 'GPGServices is a plugin for the global Services menu (in the Application menu), which adds the ability to sign and verify plain text in any application that supports text services. It allows to import a key from text and return your default key.');

$theSite->assign('lighthouse', '67607');
$theSite->assign('macupdate', "36566");
$theSite->assign('iusethis', "gpgservices");
$theSite->assign('heise', "79894");
$theSite->assign('cnet', "3000-2092_4-75335372");

$limitations = array(
'4' => 'Services are not automatically enabled',
'61' => 'Aliases are not handled correctly',
);
$theSite->assign('limitations', $limitations);


$features = array(
"$root/images/installericon.png" => array("Is part of the <a href='$root/installer/index.php' title='our main project: the installer'>GPGTools Installer</a>", 'Installer'),
"$root/images/hotkeys.png" => array('Can be used via keyboard shortcuts: cmd + shift + <span title="decrypt">d</span>|<span title="encrypt">e</span>|<span title="verify">v</span>|<span title="sign">r</span>|<span title="import key">i</span>|<span title="insert fingerprint">f</span>|<span title="insert key">k</span>', 'shortcuts'),
);
$theSite->assign('features', $features);

$screenshots = array(
'images/prefs.png' => array('images/prefs-small.png', 'Enable the services in the preferences'),
'images/verify.png' => array('images/verify-small.png', 'Verify a text selection'),
'images/insert.png' => array('images/insert-small.png', 'Insert your own key')
);
$theSite->assign('screenshots', $screenshots);
$screencasts = array('gpgservices/file.m4v' => 'Encrypt and sign a file');
$theSite->assign('screencasts', $screencasts);

$changelog = array(
    '1.6' => array(date("d. F Y", $release['1.6']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.6']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGServices/GPGServices-1.6.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "1399096",
        "21" => "Feature: Any file and folder can be en- and de-crypted",
        "52" => "Feature: Signatures can be imported",
        "6" => "Enhancement: Installer can update GPGServices in the HOME directory",
        "a" => "Enhancement: New icons and GPGService is now associated with the according file extensions",
        "b" => "Enhancement: Added Growl notifications",
        "c" => "More: Have a look at <a href='http://gpgtools.lighthouseapp.com/projects/67607/milestones/98266'>the closed issues</a> and <a href='https://github.com/GPGTools/GPGServices/commits'>last changes</a>",
        'sha' => "Checksum: 552d6fac4bb98e932a9e5c37e2a0f5ea5f64a57e (SHA-1)",
    )),
    '1.5' => array(date("d. F Y", $release['1.5']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.5']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/GPGServices/GPGServices-1.5.dmg",
        'sparkle_sig' => "",
        'sparkle_size' => "1041848",
        "10" => "Feature: Encryption support for text (thank you Moritz)",
        "29" => "Feature: Started encryption support for files (thank you Moritz)",
        "24" => "Feature: Insert key|fingerprint shows a selection window (thank you Moritz)",
        "21" => "Feature: Started encryption support for files (thank you Moritz)",
        "17" => "Feature: Signing does not require a default key anymore (thank you Moritz)",
        "2" => "Enhancement: Installer checks for GnuPG now",
        "5" => "Enhancement: Logout is not neccessary anymore",
        'sha' => "Checksum: d3ff1ca41643c9aceeb714ef0ab7c0a9ae9f23d3 (SHA-1)",
    )),
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
