{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>Projects</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
            <h3 class="clear">Maintained Projects</h3>
            <p>List of maintained projects that are included in the installer.</p>
            <ul id="projects" class="sub">
                <li><div class="project"><a href="keychain.html"><img src="./images/gpgkeychain.png" alt="Keychain for OpenPGP" title="Keychain for OpenPGP" class="logo"/><br/>GPG Keychain Access</a></div></li>
                <li><div class="project"><a href="gpgmail.html"><img src="./images/gpgmail.png" alt="OpenPGP plugin for Apple Mail" title="OpenPGP plugin for Apple Mail" class="logo"/><br/>GPGMail</a></div></li>
                <li><div class="project"><a href="macgpg2.html"><img src="./images/gpgtools.png" alt="Mac OS X bindings for GnuPG 2.x" title="Mac OS X bindings for GnuPG 2.x" class="logo"/><br/>MacGPG2</a></div></li>
            </ul>
            <h3 class="clear">Related Projects</h3>
            <p>List of related projects that are included in the installer.</p>
            <ul id="projects" class="sub">
                <li><div class="project"><a href="http://enigmail.mozdev.org"><img src="./images/enigmail.png" alt="Enigmail" title="Enigmail" class="logo"/><br/>Enigmail</a></div></li>
            </ul>
            <h3 class="clear">Incubator Projects</h3>
            <p>List of unfinished but interesting projects maintained by the GPGTools Project Team.</p>
            <ul class="sub">
                <li><a href="https://github.com/AlexanderWillner/GPGMail_Mobile/wiki/Introduction">GPGMail mobile</a>. An OpenPGP implementation in JavaScript for mobile devices.</li>
                <li><a href="https://github.com/GPGMail/GPGMail_Preferences">GPGMail/GPGTools Preferences</a>. A system wide preference pane for the GPGTools.</li>
            </ul>
            <h3 class="clear">Unmaintained Projects</h3>
            <p>List of old and partly unmaintained projects.</p>
            <ul class="sub">
                <li><a href="http://macgpg.sourceforge.net/">MacGPG</a>. GPG related software for OS X (GPGFileTool, GPGDropThing, GPGPreferences, ...).</li>
                <li><a href="http://abkey.far-blue.co.uk/">AB Key</a>. GPG for the OS X address book.</li>
                <li><a href="http://www.far-blue.co.uk/projects/gpgservices.html">GPGService</a>. GPG for the OS X service menu.</li>
            </ul>
        </div>
    </div>
{/block}