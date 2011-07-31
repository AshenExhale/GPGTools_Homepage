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
                Yes, almost all components of the current GPGTools package run
                under OS X Lion. However, <a href="gpgmail/index.php">GPGMail</a>
                is not yet compatbile and will be disabled by Apple Mail on
                first startup after updating to Mac OS X Lion. This is how
                Apple deals with third-party plugins.
                Nevertheless, we're
                <a href="http://gpgtools.lighthouseapp.com/projects/65764/tickets/135">working on an update</a>
                of GPGMail that will run under Mac OS X Lion and it will be
                available soon. You will be notified via this website and
                <a href="about.php">our other channels</a> once the update is
                available.
                In case you want to speed up the process:
                <a href="donate.php">why not support us</a>?
                In the meantime you could
                <a href="http://www.apple.com/feedback/macosx.html">tell Apple</a>
                to support Mail bundles officially and use
                <a href="gpgservices/index.php">GPGServices</a> to handle
                encrypted messages.
                </li>
            </ul>
            <hr/>
            <h3>About</h3>
            <p>GPGTools is an open source initiative to bring
            <a href="http://en.wikipedia.org/wiki/Pretty_Good_Privacy">
                OpenPGP
            </a>
            to Apple OS X in the form of an easy installer package (have a look
            at <a href="http://gpg4win.org/" title="OpenPGP for Windows">Gpg4win</a>
            if you're a Windows user).
            This allows you to sign, verify, encrypt, and decrypt files and
            e-mails. Read the <a href="intro.php" title="Introduction to OpenPGP">introduction</a>
            to get a detailed idea of how PGP works.</p>
            <p>The <a href="projects.php" title="The projects behind GPGTools">project section</a> provides more
            information about the included applications and related projects.
            And if you have any further questions that are not listed in the
            <a href="faq.php" title="Frequently Asked Questions">FAQ</a> or if
            you want to get the latest news, please do not hesitate to open the
            <a href="about.php" title="have a look at the 'How can I contact you?' section.">
            contact</a> section. Finally, we would appreciate any kind of
            <a href="faq.php#5.3" title="How you can contribute">contributions</a> or
            <a href="donate.php" title="How you can donate">donations</a>.</p>
            <ul class="sub"></ul>
            <div class="project2">
                <a href="installer/index.php" title="The all-in-one installer">
                    <img src="{$root}/installer/images/logo-128px.png" alt="Installer for OpenPGP and all necessary files" title="Installer for OpenPGP and all necessary files" />
                    <br/>
                    Download GPGTools Installer
                </a>
            </div>
            </div>
{/block}
