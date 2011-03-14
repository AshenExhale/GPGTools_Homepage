<?php /*compileIgnore*/

$version = "0.2";
$release['0.2'] = mktime(0, 13, 8, 2, 24, 2011);
$release['0.1'] = mktime(0, 13, 8, 9, 23, 2010);
$current = $release[$version];

$theSite->assign('title',    'Mobile OpenPGP');
$theSite->assign('name', 'mobile');
$theSite->assign('img_logo', 'images/logo.png');
$theSite->assign('url_base', 'GPGTools/Mobile');
$theSite->assign('url_dl',   '');
$theSite->assign('url_sig',  '');
$theSite->assign('url_beta', '');
$theSite->assign('url_wiki', 'wiki/Introduction');
$theSite->assign('version',  $version);
$theSite->assign('date',     date("d. F Y", $current));
$theSite->assign('month',  date("m", $current));
$theSite->assign('day',  date("d", $current));
$theSite->assign('year',  date("Y", $current));
$theSite->assign('reqs',     'WebKit or iOS');

$theSite->assign('overview', '
	<p>This project aims to provide an Open Source OpenPGP architecture/application for mobile phones either based on JavaScript so it can be used on virtually every device in a browser in every country or as a native application. It should allow you to sign, encrypt, decrypt, and verify any kind of text - in particular e-mails. The idea is to implement the basic OpenPGP functionality and to reuse it in other projects.</p>
');
$theSite->assign('short_description', 'This project aims to provide an Open Source OpenPGP architecture/application for mobile phones either based on JavaScript so it can be used on virtually every device in a browser in every country or as a native application.');

$theSite->assign('lighthouse', '65687');
$theSite->assign('macupdate', "");
$theSite->assign('iusethis', "");
$theSite->assign('heise', "");
$theSite->assign('cnet', "");

$limitations = array(
'' => 'Currently a "only" a <a href="http://gpgtools.org/mobile">JavaScript based proof of concept</a> with hard coded RSA keys. Have a look at the wiki for more details',
);
$theSite->assign('limitations', $limitations);

$features = array(
    '/images/webkit-icon.png' => array('Runs in WebKit browsers (Safari/Chrome/iPhone/iPad/Android). Have a look at the <a href="http://gpgtools.org/mobile">online demo</a>', 'WebKit'),
);
$theSite->assign('features', $features);

$screenshots = array(
    'images/icon.png' => "application icon",
    'images/home.png' => "home screen",
    'images/encrypt.png' => "encrypt message",
    'images/decrypt.png' => "decrypt message",
    'images/options.png' => "options",
    'images/architecture.png' => "envisioned architecture",
);
$theSite->assign('screenshots', $screenshots);

$screencasts = array(
    'gpgmobile/install.m4v' => 'Install the application',
    'gpgmobile/encrypt.m4v' => 'Encrypt message',
    'gpgmobile/decrypt.m4v' => 'Decrypt message',
);
$theSite->assign('screencasts', $screencasts);

$changelog = array(
    '0.2' => array(date("d. F Y", $release['0.2']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['0.2']),
        'sparkle_url' => "",
        'sparkle_sig' => "",
        'sparkle_size' => "",
        'a' => 'integrated decryption',
        )),
    '0.1' => array(date("d. F Y", $release['0.1']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['0.1']),
        'sparkle_url' => "",
        'sparkle_sig' => "",
        'sparkle_size' => "",
        'a' => 'initial release / proof of concept',
        )),
);
$theSite->assign('changelog', $changelog);
$theSite->assign('changelogfile', 'changelog.php');
?>
