<?php /*compileIgnore*/

$version='2.0a1';
$release['2.0a1'] = mktime(12, 0, 0, 8, 6, 2011);
$current=$release[$version];

$theSite->assign('title', 'GPGMail');
$theSite->assign('name', 'gpgmail2');
$theSite->assign('img_logo', 'images/logo-128px.png');
$theSite->assign('url_base', 'GPGTools/GPGMail');
$theSite->assign('url_dl', "GPGMail-$version.mailbundle.zip");
$theSite->assign('url_sig', "GPGMail-$version.mailbundle.zip.sig");
$theSite->assign('url_beta', '');
$theSite->assign('url_wiki', 'wiki');
$theSite->assign('version', $version);
$theSite->assign('date',     date('d. F Y', $current));
$theSite->assign('month',  date('m', $current));
$theSite->assign('day',  date('d', $current));
$theSite->assign('year',  date('Y', $current));
$theSite->assign('reqs', 'OS X 10.7');

$theSite->assign('overview', '');
$theSite->assign('short_description', '');

$limitations = array(
'94' => 'Alpha version for Mac OS X 10.7 Lion',
);
$theSite->assign('limitations', $limitations);

$features = array(
);
$theSite->assign('features', $features);

$screenshots = array(
);
$theSite->assign('screenshots', $screenshots);

$screencasts = array();
$theSite->assign('screencasts', $screencasts);

$changelog = array(
    '2.0a1' => array(date('d. F Y', $release['2.0a1']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['2.0a1']),
        'sparkle_url' => 'https://github.com/downloads/GPGTools/GPGMail/GPGMail-2.0a1.mailbundle.zip',
        'sparkle_sig' => 'MCwCFA4bt7Iad/8rLOVXc01ThGH1+BpJAhRC1iIU45+OAzfHGZPqMSbupF5P0w==',
        'sparkle_size' => '2746726',
        'a' => 'First alpha for 10.7',
        'sha' => 'Checksum: d3f4be6345f5ddb57162f97357c5c3efd2f1be78 (SHA-1)',
        )),
);
$theSite->assign('changelog', $changelog);
$theSite->assign('changelogfile', 'changelog.php');

?>
