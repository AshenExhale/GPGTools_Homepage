{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
            <h3>Announcement</h3>
            <ul id="announcement" class="sub">
              <li>
                <img src="./images/lion.png" alt="lion compatible" title="lion compatible" class="icon" />
                Yes, GPGTools is compatible with OS X Lion (besides GPGMail, but we're <a href="http://gpgtools.lighthouseapp.com/projects/65764/tickets/135">working on it</a>).
                </li>
            </ul>
            <h3>About</h3>
            <p>GPGTools is an open source initiative to bring
            <a href="http://en.wikipedia.org/wiki/Pretty_Good_Privacy">
                OpenPGP
            </a>
            to Apple OS X in the form of an easy installer package.
            This allows you to sign, verify, encrypt, and decrypt files and
            e-mails. Read the <a href="intro.php">introduction</a>
            to get a detailed idea of how PGP works.</p>
            <p>The <a href="projects.php">project section</a> provides more
            information about the included applications and related projects.
            And if you have any further questions that are not listed in the
            <a href="faq.php" title="Frequently Asked Questions">FAQ</a> or if
            you want to get the latest news, please do not hesitate to open the
            <a href="about.php" title="have a look at the 'How can I contact you?' section.">
            contact</a> section. Finally, we would appreciate any kind of
            <a href="faq.php#5.3">contributions</a> or
            <a href="donate.php">donations</a>.</p>
            <ul class="sub"></ul>
            <div class="project2">
                <a href="installer/index.php">
                    <img src="{$root}/installer/images/logo-128px.png" alt="Installer for OpenPGP and all necessary files" title="Installer for OpenPGP and all necessary files" />
                    <br/>
                    Download GPGTools Installer
                </a>
            </div>
            </div>
{/block}
