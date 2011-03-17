{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>Contact us</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
        <!--
            <h3>What is GPGTools?</h3>
            <p>GPGTools is an open source initiative to bring <a href="http://en.wikipedia.org/wiki/Pretty_Good_Privacy">OpenPGP</a> to Apple OS X. This allows you to sign, verify, encrypt and decrypt files and e-mails. The project originated from efforts to revamp GPGMail development in 2010.</p><ul class="sub"></ul>
            <h3>Why do I need it?</h3>
            <p>The personal privacy is one of the most underestimated goods everyone of us has. By encrypting your data before sending them over the internet you prevent others from reading them during the delivery process. Where the "others" can not only be negligible hackers but more important criminal individuals, business companies or even governments interested in your personal information for various reasons some of them you can't even imagine!</p>
            <p>Another point is the origin of information. Every piece of information has its source that inseparably belongs to it. The source of an information is almost as importand as the information itself. By using GPGTools the reciever of an email or file can be sure the information has been sent by only you. He even can tell if the content has been altered on its way through the internet and is therefore not valid for you. PGP messages cannot be faked! - Not partially, not completely, NOT AT ALL!</p>
            <ul class="sub"></ul>
        -->
            <h3>How can I get the latest news?</h3>
            <p>To stay up to date you have several options:</p>
            <ul class="sub projects">
                <li><div class="project"><a href="http://twitter.com/gpgtools" title="follow us on twitter"><img src="{$root}images/twitter.png" title="follow us on twitter" alt="twitter" /></a></div></li>
                <li><div class="project"><a href="http://twitter.com/statuses/user_timeline/170783148.rss" title="subscribe our twitter feed"><img src="{$root}images/rss.png" title="subscribe our twitter feed" alt="rss" /></a></div></li>
                <li><div class="project"><a href="appcast.xml" title="subscribe our appcast feed"><img src="{$root}images/rss.png" title="subscribe our appcast feed" alt="rss" /></a></div></li>
                <li><div class="project"><a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-users" title="join our mailing list"><img src="{$root}images/mail.png" title="join our mailing list" alt="mailing list" /></a></div></li>
            </ul>
            <p class="clear"><br/></p>
            <h3>How can I contact you?</h3>
            <p>We would be pleased to hear from you! Here are your options:</p>
            <ul class="sub">
                <li>download our key: <a href="./files/gpgtools.asc" title="The GPGTools Project OpenGPG key">0x76D78F0500D026C4</a><br />fingerprint: 85E3 8F69 046B 44C1 EC9F B07B 76D7 8F05 00D0 26C4</li>
                <li>drop us a mail: <a href="mailto:gpgtools-users@lists.gpgtools.org">to the mailing list</a></li>
                <li>twitter: <a href="http://twitter.com/gpgtools/">to our account</a></li>
                <li>open a bug or feature request: <a href="http://gpgtools.lighthouseapp.com/tickets">at the issue tracker</a></li>
                <li>browse the projects: <a href="http://github.com/gpgtools/">at the github page</a></li>
            </ul>
            <h3>Links that might be of interest for you</h3>
            <p>More details about the mailing lists and other related pages:</p>
            <ul class="sub">
                <li>FAQ: <a href="faq.php" title="Frequently Asked Questions">Frequently Asked Questions</a>.</li>
                <li>Introduction: <a href="intro.php" title="How PGP works">How PGP works</a>.</li>
                <li>Wiki: <a href="projects.php" title="Wikis">Have a look on the project pages for further documentation</a>.</li>
                <li>Donations: <a href="donate.php" title="how to donate">How to donate</a>.</li>
                <li>List for announcements (read only): <a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-announce">subscribe</a> | <a href="http://lists.gpgtools.org/pipermail/gpgtools-announce/">archive</a></li>
                <li>List for users: <a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-users">subscribe</a> | <a href="http://lists.gpgtools.org/pipermail/gpgtools-users/">archive</a></li>
                <li>List developers: <a href="http://lists.gpgtools.org/mailman/listinfo/gpgtools-devel">subscribe</a></li>
            </ul>
        </div>
    </div>
{/block}
