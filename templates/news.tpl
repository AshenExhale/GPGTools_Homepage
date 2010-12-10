{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>News</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
            <h3>Overview</h3>
            <p>To stay up to date you have several options that are listed below.</p><ul class="sub"></ul>
            <h3>Feeds</h3>
            <p>You can subscribe yourself to several feeds:</p>
            <ul class="sub">
            <li>Twitter: <a href="http://twitter.com/gpgmail">follow</a> | <a href="http://twitter.com/favorites/170783148.rss">feed</a></li>
            <li>Issues: <a href="http://gpgtools.lighthouseapp.com/events.atom">feed</a></li>
            <li>Commits: <a href="http://github.com/gpgmail/GPGMail/commits/master.atom">GPGMail</a> | <a href="http://github.com/gpgmail/GPGKeychainAccess/commits/master.atom">GPGKeychainAccess</a> | <a href="http://github.com/gpgmail/GPGMail_Installer/commits/master.atom">Installer</a></li>
            </ul>
            <h3>Mailing Lists</h3>
            <p>To read e-mails from the teams and other users:</p>
            <ul class="sub">
                <li>announcements: <a href="http://lists.gpgmail.org/mailman/listinfo/gpgmail-announce">subscribe</a> | <a href="http://lists.gpgmail.org/pipermail/gpgmail-announce/">archive</a></li>
                <li>users: <a href="http://lists.gpgmail.org/mailman/listinfo/gpgmail-users">subscribe</a> | <a href="http://lists.gpgmail.org/pipermail/gpgmail-users/">archive</a></li>
                <li>developers: <a href="http://lists.gpgmail.org/mailman/listinfo/gpgmail-devel">subscribe</a> | <a href="http://lists.gpgmail.org/pipermail/gpgmail-devel/">archive</a></li>
                <li>commits: <a href="http://lists.gpgmail.org/mailman/listinfo/gpgmail-commits">subscribe</a> | <a href="http://lists.gpgmail.org/pipermail/gpgmail-commits/">archive</a></li>
            </ul>
        </div>
    </div>
{/block}