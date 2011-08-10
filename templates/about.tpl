{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>Contact us</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
            <h3>How can I get the latest news?</h3>
            <p>To stay up to date you have several options:</p>
            <ul class="sub projects">
                <li><div class="project"><a href="http://twitter.com/gpgtools" title="follow us on twitter"><img src="{$root}/images/twitter.png" title="follow us on twitter" alt="twitter" /></a></div></li>
                <li><div class="project"><a href="http://twitter.com/statuses/user_timeline/170783148.rss" title="subscribe our twitter feed"><img src="{$root}/images/rss.png" title="subscribe our twitter feed" alt="rss" /></a></div></li>
                <li><div class="project"><a href="appcast.xml" title="subscribe our appcast feed"><img src="{$root}/images/rss.png" title="subscribe our appcast feed" alt="rss" /></a></div></li>
                <li><div class="project"><a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-users" title="join our mailing list"><img src="{$root}/images/mail.png" title="join our mailing list" alt="mailing list" /></a></div></li>
            </ul>
            <p class="clear"><br/></p>
            <h3>What's new?</h3>
            <div id="tweets"></div>
            <p>Read <a href="http://twitter.com/gpgtools">more</a>...</p>
            <p class="clear"><br/></p>
            <h3>How can I contact you?</h3>
            <p>We would be pleased to hear from you! Here are your options:</p>
            <ul class="sub">
                <li>Drop us an unencrypted mail: <a href="javascript:linkTo_UnCryptMailto('nbjmup;hqhuppmt.vtfstAmjtut/hqhuppmt/psh');">gpgtools-users@<span style="display:none;">REMOVETHISPART.</span>lists.gpgtools.org</a></li>
                <li>Twitter: <a href="http://twitter.com/gpgtools/">to our account</a></li>
                <li>Open a bug or feature request: <a href="http://gpgtools.lighthouseapp.com/tickets">at the issue tracker</a></li>
                <li>Browse the projects: <a href="http://github.com/gpgtools/">at the github page</a></li>
                <li>Download our key: <a href="./files/gpgtools.asc" title="The GPGTools Project OpenGPG key">0x76D78F0500D026C4</a><br />Fingerprint: 85E3 8F69 046B 44C1 EC9F B07B 76D7 8F05 00D0 26C4</li>
                <li>Drop us a line:
                    <form action="http://www.gpgtools.org/mail.php" method="post">
                        Your <b>message</b>: <input type="text" name="message" />
                        and <b>mail</b> (optional): <input type="email" name="mail" />
                        <input type="submit" value="send feedback" />
                    </form>
                </li>
            </ul>
            <h3>Links that might be of interest for you</h3>
            <p>More details about the mailing lists and other related pages:</p>
            <ul class="sub">
                <li>FAQ: <a href="faq.php" title="Frequently Asked Questions">Frequently Asked Questions</a>.</li>
                <li>Introduction: <a href="intro.php" title="How PGP works">How PGP works</a>.</li>
                <li>Wiki: <a href="projects.php" title="Wikis">Have a look on the project pages for further documentation</a>.</li>
                <li>Donations: <a href="donate.php" title="how to donate">How to donate</a>.</li>
                <li>List for announcements (read only): <a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-announce">Subscribe</a> | <a href="http://lists.gpgtools.org/pipermail/gpgtools-announce/">Archive</a></li>
                <li>List for users: <a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-users">Subscribe</a> | <a href="http://lists.gpgtools.org/pipermail/gpgtools-users/">Archive</a></li>
                <li>List developers: <a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-devel">subscribe</a></li>
            </ul>
        </div>
    <script src="./libs/twitter-1.13.1.min.js" charset="utf-8"></script>
    <script type="text/javascript">
      getTwitters('tweets', {
        id: 'gpgtools',
        clearContents: true,
        count: 5,
        withFriends: true,
        ignoreReplies: false,
        template: '<span class="status">%text%</span> (<span class="prefix"><span class="time"><a href="http://twitter.com/%user_screen_name%/statuses/%id_str%">%time%</a></span></span>)'
      });
    </script>
{/block}
