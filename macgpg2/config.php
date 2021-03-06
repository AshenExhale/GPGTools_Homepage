<?php /*compileIgnore*/

$version='2.0.17-9';
$release['2.0.17-9'] = mktime(16, 20, 0, 02, 14, 2011);
$release['2.0.17-6'] = mktime(12, 0, 0, 01, 25, 2011);
$release['2.0.16'] = mktime(12, 0, 0, 10, 31, 2010);
$current = $release[$version];

$theSite->assign('title',    'MacGPG2');
$theSite->assign('name', 'macgpg2');
$theSite->assign('img_logo', 'images/logo-128px.png');
$theSite->assign('url_base', 'GPGTools/MacGPG2');
$theSite->assign('url_dl',   "MacGPG2-$version.dmg");
$theSite->assign('url_sig',  "MacGPG2-$version.dmg.sig");
$theSite->assign('url_beta', '');
$theSite->assign('url_wiki', 'wiki');
$theSite->assign('version',  "$version");
$theSite->assign('date',     date("d. F Y", $current));
$theSite->assign('month',  date("m", $current));
$theSite->assign('day',  date("d", $current));
$theSite->assign('year',  date("Y", $current));
$theSite->assign('reqs',     'OS X>=10.5/Intel<br/>(get old PPC release: <a href="https://github.com/downloads/GPGTools/MacGPG2/MacGPG2-2.0.16.zip">2.0.16</a>)');

$theSite->assign('overview', '
	<p>MacGPG2 is an open source Mac OS X port of GnuPG. The project aims at making GnuPG easy to install, provide a native Mac OS X pinentry utility and interact with existing GnuPG tools for Mac OS X.</p>
');
$theSite->assign('short_description', 'MacGPG2 is an open source Mac OS X port of GnuPG. The project aims at making GnuPG easy to install, provide a native Mac OS X pinentry utility and interact with existing GnuPG tools for Mac OS X.');

$theSite->assign('lighthouse', '66001');
$theSite->assign('macupdate', "11136");
$theSite->assign('iusethis', "macgpg2");
$theSite->assign('heise', "80464");
$theSite->assign('cnet', "3000-2092_4-7493");

$limitations = "";
$theSite->assign('limitations', $limitations);

$features = array(
    "$root/images/installericon.png" => array("Is part of the <a href='$root/installer/index.php' title='our main project: the installer'>GPGTools Installer</a>", 'Installer'),
    "$root/images/lion.png" => array("Compatible with OS X Lion", 'lion compatible'),
);
$theSite->assign('features', $features);

$screenshots = array(
	'images/screenshot.png' => array('images/screenshot-small.png', 'MacGPG2 Installer')
);
$theSite->assign('screenshots', $screenshots);

$theSite->assign('screencasts', "");

$changelog = array(
    '2.0.17-9' => array(date("d. F Y", $release['2.0.17-9']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['2.0.17-9']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/MacGPG2/MacGPG2-2.0.17-9.zip",
        'sparkle_sig' => "",
        'sparkle_size' => "8446511",
        '21' => 'added missing gpg-agent patch',
        '24' => 'fixing invalid gpg.conf files',
        '30' => "Patch to facilitate IDEA support; requires alternative encryption library (NOT INCLUDED)",
        '32' => "fixing permissions",
        '33' => "fixing incorrect options in gpg-agent.conf",
        '40' => "fixing unusable secret keys on 32-bit machines",
        'sha' => "Checksum: 6fc707319cd6f26fbc902aeec90939ac13aef7f3 (SHA-1)",
        )),
    '2.0.17-6' => array(date("d. F Y", $release['2.0.17-6']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['2.0.17-6']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/MacGPG2/MacGPG2-2.0.17.6.zip",
        'sparkle_sig' => "",
        'sparkle_size' => "8446511",
        'a' => 'Tiger and PPC chips no longer supported',
        'b' => 'v2.0.16 will be deleted from your system',
        'c' => "You may need to change the file path for gpg2 to /usr/local/MacGPG2/bin/gpg2",
        'd' => "Removal now as simple as 'sudo rm -fr /usr/local/MacGPG2'",
        'e' => "Core upgraded to GnuPG v2.0.17",
        'f' => "Configured to use standard socket and daemonise gpg agent on the fly if required",
        'g' => "Maximum key size increased to 8192 bits; recommended for expert users only",
        'h' => "Includes GPGTools gpg-agent cache-id option patch",
        'i' => "Pinentry updated by GPGTools team and includes keychain support",
        'i' => "Installs exclusively under /usr/local/MacGPG2/ removing previous v2.0.16 install",
        'j' => "Creates default gpg configuration file if none exists",
        'k' => "Libksba upgraded to v1.1.0",
        'l' => "Libusb upgraded to v1.0.8",
        )),
    '2.0.16' => array(date("d. F Y", $release['2.0.16']), array(
        'sparkle_date' => date(DATE_RFC2822, $release['2.0.16']),
        'sparkle_url' => "http://github.com/downloads/GPGTools/MacGPG2/MacGPG2-2.0.16.zip",
        'sparkle_sig' => "",
        'sparkle_size' => "8446511",
        'a' => 'Last version to support PPC and MacOSX Tiger',
        'b' => 'Maximum key size increased to 8192 bits; recommended for expert users only',
        'c' => "Core upgraded to GnuPG v2.0.16",
        'd' => "Configured to use standard socket and daemonise gpg agent on the fly if required",
        'e' => "Libassuan upgraded to v2.0.2-svn389",
        'f' => "Libgpg-error updated to v1.9",
        'g' => "Libgcrypt updated to v1.4.6",
        'h' => "If the agent's --use-standard-socket option is active, all tools try to start and daemonize the agent on the fly. In the past this was only supported on W32; on non-W32 systems the new configure option --use-standard-socket may now be used to use this feature by default",
        'i' => "The gpg-agent commands KILLAGENT and RELOADAGENT are now available on all platforms",
        )),
);
$theSite->assign('changelog', $changelog);
$theSite->assign('changelogfile', 'changelog.php');

?>
