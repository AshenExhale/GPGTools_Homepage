<?php /*compileIgnore*/

$version='1.3.3';
$release['2.0a1'] = mktime(12, 0, 0, 8, 6, 2011);
$release['1.3.3'] = mktime(12, 0, 0, 03, 22, 2011);
$release['1.3.2'] = mktime(12, 0, 0, 03, 02, 2011);
$release['1.3.1'] = mktime(12, 0, 0, 11, 16, 2010);
$release['1.3.0'] = mktime(12, 0, 0, 07, 27, 2010);
$current=$release[$version];

$theSite->assign('title', 'GPGMail');
$theSite->assign('name', 'gpgmail');
$theSite->assign('img_logo', 'images/logo-128px.png');
$theSite->assign('url_base', 'GPGTools/GPGMail');
$theSite->assign('url_dl', "GPGMail-$version.dmg");
$theSite->assign('url_sig', "GPGMail-$version.dmg.sig");
$theSite->assign('url_beta', '');
$theSite->assign('url_wiki', 'wiki');
$theSite->assign('version', $version);
$theSite->assign('date',     date('d. F Y', $current));
$theSite->assign('month',  date('m', $current));
$theSite->assign('day',  date('d', $current));
$theSite->assign('year',  date('Y', $current));
$theSite->assign('reqs', 'OS X 10.6<br/>(get old releases for: <a href="https://github.com/downloads/GPGTools/GPGMail/GPGMail-1.1.2-10.3.dmg">10.3</a>, <a href="https://github.com/downloads/GPGTools/GPGMail/GPGMail-1.1.2-10.4.dmg">10.4</a>, <a href="https://github.com/downloads/GPGTools/GPGMail/GPGMail-1.2.0-10.5.dmg">10.5</a>)');

$theSite->assign('overview', '
	<p>GPGMail is an open source plugin for Apple Mail. It brings the functionality to sign, verify, encrypt and decrypt mails using the OpenPGP standard.</p>
	<p>Please have a look at the <a href="https://github.com/GPGTools/GPGMail/wiki/Getting-started">getting started</a> and <a href="https://github.com/GPGTools/GPGMail/wiki/FAQ">FAQ</a> section.
	It would be nice to <a href="http://www.apple.com/feedback/macosx.html">tell Apple</a> to support bundles for Mail.app officially.</p>
');
$theSite->assign('short_description', 'GPGMail is an open source plugin for Apple Mail. It brings the functionality to sign, verify, encrypt and decrypt mails using the OpenPGP standard.');

$theSite->assign('lighthouse', '65764');
$theSite->assign('macupdate', '7654');
$theSite->assign('iusethis', 'gpgmail');
$theSite->assign('heise', '74690');
$theSite->assign('cnet', '3000-2144_4-7335');

$limitations = array(
'94' => 'E-Mails are empty',
'11' => 'Unread count goes out of sync',
'17' => 'Sometimes the message "E-Mail was encrypted but not PGP signed" prevents decryption',
'107' => 'Automatic update is not compatible with system wide installations (/L/M/B/)',
'135' => 'Plugin is not compatible to OS X Lion, yet',
);
$theSite->assign('limitations', $limitations);

$features = array(
    "$root/images/installericon.png" => array("Is part of the <a href='$root/installer/index.php' title='our main project: the installer'>GPGTools Installer</a>", 'Installer'),
    "$root/images/secure.jpg" => array('Sign, encrypt, decrypt, and verify all your mails', 'mail security'),
    "$root/images/update.png" => array("Integrated update mechanism and installer can <a href='$root/faq.php#3.2'>auto-fix the current installation</a> after an OS update", 'update mechanism'),
    "$root/images/64bit.jpg" => array('The bundle is 64-bit and Snow Leopard ready', 'Snow Leopard')

);
$theSite->assign('features', $features);

$screenshots = array(
'images/preferences.png' => array('images/preferences-small.png', 'Preferences'),
'images/compose.png' => array('images/compose-small.png', 'Composing a message'),
'images/encrypted.png' => array('images/encrypted-small.png', 'Encrypted message'),
'images/decrypted.png' => array('images/decrypted-small.png', 'Decrypted message')
);
$theSite->assign('screenshots', $screenshots);

$screencasts = array('encrypt_mail.m4v' => 'Send an encrypted Mail');
$theSite->assign('screencasts', $screencasts);

$changelog = array(
    '2.0a1' => array(date('d. F Y', $release['2.0a1']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['2.0a1']),
        'sparkle_url' => 'https://github.com/downloads/GPGTools/GPGMail/GPGMail-2.0a1.mailbundle.zip',
        'sparkle_sig' => 'MCwCFA4bt7Iad/8rLOVXc01ThGH1+BpJAhRC1iIU45+OAzfHGZPqMSbupF5P0w==',
        'sparkle_size' => '2746726',
        'sparkle_minOS' => '10.7',
        'a' => 'First alpha for 10.7',
        'sha' => 'Checksum: d3f4be6345f5ddb57162f97357c5c3efd2f1be78 (SHA-1)',
        )),
    '1.3.3' => array(date('d. F Y', $release['1.3.3']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.3.3']),
        'sparkle_url' => 'http://github.com/downloads/gpgtools/GPGMail/GPGMail-1.3.3.zip',
        'sparkle_sig' => 'MC0CFDF/nJUUuhpYNh25VUwb1yH+TgH0AhUAgpedhe7sUZqf9+IO+st35OQVw8o=',
        'sparkle_size' => '3181052',
        'a' => 'Important: Fixed compatibility with final OS X 10.6.7 release',
        'b' => 'Fix: French localization',
        '136' => 'Fix: Encryption/signing only with in-key-mentioned mail addresses broken',
        'sha' => 'Checksum: e9d334141767efee588494dc73595eed43ad4064 (SHA-1)',
        )),

    '1.3.2' => array(date('d. F Y', $release['1.3.2']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.3.2']),
        'sparkle_url' => 'http://github.com/downloads/gpgtools/GPGMail/GPGMail-1.3.2.zip',
        'sparkle_sig' => 'MCwCFHXIwXKI/rZRw9Ssx9KOXTuaNyGSAhROjBBaw4G2X2PMyI9Ww9SYa7XqUQ==',
        'sparkle_size' => '3179912',
        'a' => 'Important: Our new home is http://gpgtools.org',
        'b' => 'Important: Now compatible with OS X 10.6.7',
        'c' => 'Important: You might have to recheck your GPGMail configuration',
        '3' => 'Fix: Checked "Encrypt reply to OpenPGP-encrypted message" does not work',
        '19' => 'Fix: Choose key for encryption does not show keys.',
        '20' => 'Fix: Invalid crypto engine',
        '27' => 'Fix: GPG Exception - Bad Passphrase (pinentry-mac crash)',
        '97' => 'Fix: GPGMail does not sign though it is set by default',
        '108' => 'Fix: GPGMail not signing by default when set to choose keys by account',
        '112' => 'Fix: Current Build of GPGMail Is Not Supported On Mac OS X 10.6.7 (10J842)',
        '115' => 'Fix: Rename PGP to OpenPGP',
        '132' => 'Fix: Can not decrypt recently sent messages',
        '134' => 'Fix: Mail.bundle gets deactivated by Mail.app each time Mail.app is opened',
        '2' => 'Enhancement: Provide a compressed DMG with a background image',
        '15' => 'Enhancement: Add "Comment" section to signature',
        '96' => 'Enhancement: Change warning about missing private key',
        '104' => 'Enhancement: Installer should have a look at /L/M/B',
        '122' => 'Enhancement: Add Logo to the window, which appears when checking for updates',
        'd' => 'Old issue 23: Fixed the "Use Keychain to store passphrases" bug',
        'e' => 'Old issue 79: Fixed the "Encrypted reply to an encrypted message" bug',
        'f' => 'Old issue 81: Fixed the "update now button" bug',
        'g' => 'Old issue 97: Fixed the "check for update pulldown menu" bug',
        'h' => 'Old issue 110: Fixed the "password chaching/timeout" bug',
        'i' => 'Old issue 192: Added the "Do not check for updates at the first start" feature',
        'j' => 'Old issue 197: Fixed the "show passphrase setting" bug',
        'k' => 'Old issue 210: Fixed the "no longer prompted to enter passphrase" bug',
        'l' => 'Old issue 233: Fixed the "bundle is a folder" bug',
        'm' => 'Old issue 236: Fixed the "wrong bundle version and icon shown" bug',
        'n' => 'Translation: Swedish (thank you Mischa!)',
        'o' => 'Other: New icons (thank you Josef!)',
        'p' => 'Other: Shared preferences for different GPG tools',
        'q' => 'Other: Massive code cleanup',
        'sha' => 'Checksum: 57ceb923ec6eebba49496ff135b70a68e7e0bc30 (SHA-1)',
        )),
	'1.3.1' => array(date('d. F Y', $release['1.3.1']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.3.1']),
        'sparkle_url' => 'http://github.com/downloads/gpgmail/GPGMail/GPGMail-1.3.1.zip',
        'sparkle_sig' => 'MC0CFQCCKRaaP1fD3HBy9634f7cl+1ZgkwIUBserUijOEUalQmEfIDWhdHG+yUk=',
        'sparkle_size' => '2448070',
		'a' => 'Issue 221: Fixed compatibility with 10.6.5',
		'b' => 'Issue 14: Added make clean',
		'c' => 'Issue 98: Renamed preference pane to GPGMail',
		'd' => 'Issue 54: Renamed PGP to OpenPGP in the menu',
		'e' => "Issue 81: Disabled 'update now' button",
		'f' => 'Issue 212: Started to update the logos',
		'g' => 'And many, many other minor updates',
        'sha' => 'Checksum: b5f76a2c5667fd15b98c70ab2745f510f58c8eae (SHA-1)',
        )),
	'1.3.0' => array(date('d. F Y', $release['1.3.0']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['1.3.0']),
        'sparkle_url' => 'http://www.gpgmail.org/sparkle/GPGMail-1.3.0.zip',
        'sparkle_sig' => 'MCwCFFRFvroZn2nLSSr7jKqFCiVVmGaMAhQBGcgwkBFsLhenIgCGg0ViGQOvcw==',
        'sparkle_size' => '2451447',
		'a' => 'Added Sparkle updates',
		'b' => 'Changed web site, author, copyright, and e-mail address information to reflect the new project structure',
        ))

);
$theSite->assign('changelog', $changelog);
$theSite->assign('changelogfile', 'changelog.php');

?>
