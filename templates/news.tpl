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
            <p>Stay up to date with our progress:</p>
            <ul class="sub projects">
                <li><div class="project"><a href="http://twitter.com/gpgtools" title="follow us on twitter"><img src="{$root}/images/twitter.png" title="follow us on twitter" alt="twitter" /></a></div></li>
                <li><div class="project"><a href="http://twitter.com/statuses/user_timeline/170783148.rss" title="subscribe our feed"><img src="{$root}/images/rss.png" title="subscribe our feed" alt="rss" /></a></div></li>
                <li><div class="project"><a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-users" title="join our mailing list"><img src="{$root}/images/mail.png" title="join our mailing list" alt="mailing list" /></a></div></li>
            </ul>
            <p class="clear"><br/></p>
            <h3 >More details about the mailing lists</h3>
            <p>To read e-mails from the teams and to communicate with us and other users:</p>
            <ul class="sub">
                <li>Announcements (read only): <a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-announce">Subscribe</a> | <a href="http://lists.gpgtools.org/pipermail/gpgtools-announce/">Archive</a></li>
                <li>users: <a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-users">Subscribe</a> | <a href="http://lists.gpgtools.org/pipermail/gpgtools-users/">Archive</a></li>
                <li>Developers: <a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-devel">Subscribe</a></li>
            </ul>
        </div>
{/block}
