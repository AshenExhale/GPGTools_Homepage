{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>Projects</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
            <h3 class="clear">Overview</h3>
            <p>This page provides a list of software projects that are related
            to the GPGTools project.</p>
            <ul class="sub">
              <li><a href="#installer">The GPGTools Installer</a> (all-in-one package)</li>
              <li><a href="#maintained">Maintained projects</a> (included in the installer)</li>
              <li><a href="#related">Related projects</a> (included in the installer)</li>
              <li><a href="#incubator">Incubator projects</a> (will be part of the installer)</li>
              <li><a href="#interesting">Interesting projects</a> (related to our packages)</li>
              <li><a href="#unmaintained">Unmaintained projects</a> (interesting but old software)</li>
            </ul>
            <h3 id="installer" class="clear">The GPGTools Installer</h3>
            <p>The main goal is to provide an easy installer for GnuPG and
            all related tools on OS X.</p>
            <ul class="sub projects">
                <li><div class="project"><a href="installer/index.php"><img src="{$root}/installer/images/logo-128px.png" alt="Installer OpenPGP and related tools" title="Installer for OpenPGP and related tools" class="logo"/><br/>Installer</a></div></li>
            </ul>
            <h3 id="maintained" class="clear">Maintained Projects</h3>
            <p>List of maintained projects that are (mostly) included in the installer.</p>
            <ul class="sub projects">
                <li><div class="project"><a href="gpgmail/index.php"><img src="{$root}/gpgmail/images/logo-128px.png" alt="OpenPGP plugin for Apple Mail" title="OpenPGP plugin for Apple Mail" class="logo"/><br/>GPGMail</a></div></li>
                <li><div class="project"><a href="keychain/index.php"><img src="{$root}/keychain/images/logo-128px.png" alt="Keychain for OpenPGP" title="Keychain for OpenPGP" class="logo"/><br/>GPG Keychain Access</a></div></li>
                <li><div class="project"><a href="macgpg1/index.php"><img src="{$root}/macgpg1/images/logo-128px.png" alt="Mac OS X bindings for GnuPG 1.x" title="Mac OS X bindings for GnuPG 1.x" class="logo"/><br/>MacGPG1</a></div></li>
                <li><div class="project"><a href="macgpg2/index.php"><img src="{$root}/macgpg2/images/logo-128px.png" alt="Mac OS X bindings for GnuPG 2.x" title="Mac OS X bindings for GnuPG 2.x" class="logo"/><br/>MacGPG2</a></div></li>
                <li><div class="project"><a href="gpgservices/index.php"><img src="{$root}/gpgservices/images/logo-128px.png" alt="Mac OS X GPG Services Menu" title="Mac OS X GPG Services Menu" class="logo"/><br/>GPGServices</a></div></li>
                <li><div class="project"><a href="gpgpreferences/index.php"><img src="{$root}/gpgpreferences/images/logo-128px.png" alt="Mac OS X GPG System Preferences" title="Mac OS X GPG System Preferences" class="logo"/><br/>GPGPreferences</a></div></li>
                <li><div class="project"><a href="mobile/index.php"><img src="{$root}/mobile/images/logo-128px.png" alt="Mobile OpenPGP" title="Mobile OpenPGP" class="logo"/><br/>Mobile OpenPGP</a></div></li>
            </ul>
            <h3 id="related" class="clear">Related Projects</h3>
            <p>List of related projects that are included in the installer.</p>
            <ul class="sub projects">
                <li><div class="project"><a href="http://enigmail.mozdev.org"><img src="{$root}/images/enigmail.png" alt="Enigmail" title="Enigmail" class="logo"/><br/>Enigmail</a></div></li>
            </ul>
            <h3 id="incubator" class="clear">Incubator Projects</h3>
            <p>List of unfinished or outdated but interesting projects (to be) ported to the GPGTools infrastructure.</p>
            <ul class="sub">
                <li><a href="https://github.com/GPGTools/GPGPreferences">GPGPreferences</a>. Edit GnuPG's options file with a GUI preference pane (state: we need a maintainer).</li>
                <li><a href="https://github.com/GPGTools/ABKey">ABKey</a>. GPG for the OS X address book (state: we need a maintainer).</li>
                <li><a href="https://github.com/GPGTools/GPGMail_Preferences">GPGTools/GPGMail Preferences</a>. A system wide preference pane for the GPGTools (state: needs more work).</li>
                <li><a href="https://github.com/GPGTools/GPGMail_Spotlight">Spotlight Plugin</a>. OS X Spotlight Plugin to search within encrypted mails (state: needs a maintainer, not implemented yet).</li>
                <li><a href="#incubator">QuickLook Plugin</a>. OS X QuickLook Plugin to see details of OpenPGP data (state: needs a maintainer, not implemented yet).</li>
                <li><a href="#incubator">Quicksilver Plugin</a>. Quicksilver Plugin to sign/encrypt/validate/decrypt OpenPGP data (state: needs a maintainer, not implemented yet).</li>
            </ul>
            <h3 id="interesting" class="clear">Interesting Projects</h3>
            <p>List of interesting OpenPGP related OS X projects.</p>
            <ul class="sub">
                <li><a href="http://psi-im.org/">Psi</a> / <a href="http://sourceforge.net/projects/jabbin/">Jabbin</a>. OpenPGP compatible Jabber/XMPP chat clients (<a href="http://xmpp.org/extensions/xep-0027.html">XEP-0027</a>) for OS X.</li>
            </ul>
            <h3 id="unmaintained" class="clear">Unmaintained Projects</h3>
            <p>List of old and partly unmaintained projects.</p>
            <ul class="sub">
                <li><a href="http://macgpg.sourceforge.net/">MacGPG</a>. GPG related software for OS X (original author of GPGServices, GPGFileTool, GPGDropThing, GPGPreferences, ...).</li>
                <li><a href="http://de.getfiregpg.org/">FireGPG</a>. GPG plugin for Mozilla Firefox.</li>
                <li><a href="http://binaervarianz.de/projekte/programmieren/itrust/">itrustgpg</a>. Visualize GPG trust relationsips.</li>
                <li><a href="http://www.media-art-online.org/wija/">wija</a> / <a href="http://www.jbother.org">JBother</a>. OpenPGP compatible Jabber/XMPP chat clients (<a href="http://xmpp.org/extensions/xep-0027.html">XEP-0027</a>) for OS X.</li>
                <li><a href="http://sourceforge.net/projects/gpgrelay/">GPGrelay</a>. Small email-relaying server that uses GnuPG to sign/encrypt (SMTP-Relay) or verify/decrypt (POP3-/IMAP-Relay) emails. This enables many email-clients to send and receive emails that are PGP-MIME conform.</li>
                <li><a href="https://github.com/GPGTools/GPGFileTool">GPGFileTool</a>. Encrypt/Sign/Decrypt/Verify with a GUI (state: replaced by GPGServices).</li>
            </ul>
        </div>
{/block}
