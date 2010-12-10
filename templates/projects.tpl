{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>Projects</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
            <h3>About</h3>
            <p>GPGTools is an open source initiative to bring <a href="http://en.wikipedia.org/wiki/Pretty_Good_Privacy">OpenPGP</a> to Apple OS X. Have a look at the <a href="about.html">about section</a> for further details and the <a href="news.html">news section</a> to stay up to date.</p><ul class="sub"></ul>
            <h3>Maintained Projects</h3>
            <p>List of maintained projects.</p>
            <ul id="projects" class="sub">
            <li><a href="gpgmail.php"><img src="./images/gpgmail.png" alt="GPGMail" title="GPGMail" class="logo"/> GPGMail</a> (OpenPGP for Mail.app)</li>
            <li><a href="keychain.php"><img src="./images/gpgkeychain.png" alt="GPG Keychain Access" title="GPG Keychain Access" class="logo"/> GPG Keychain Access</a> (Keychain for OpenPGP)</li>
            <li><a href="installer.php"><img src="./images/gpgtoolsdmg.png" alt="GPG Tools Installer" title="GPG Tools Installer" /> GPG Tools Installer</a> (Install all above tools and dependencies)</li>
            </ul>
            <h3>Incubator Projects</h3>
            <p>List of unfinished but interesting projects maintained by the GPGTools Project Team.</p>
            <ul class="sub">
                <li><a href="https://github.com/AlexanderWillner/GPGMail_Mobile/wiki/Introduction">GPGMail mobile</a>. An OpenPGP implementation in JavaScript for mobile devices.</li>
                <li><a href="https://github.com/GPGMail/GPGMail_Preferences">GPGMail/GPGTools Preferences</a>. A system wide preference pane for the GPGTools.</li>
            </ul>
            <h3>Unmaintained Projects</h3>
            <p>List of old unmaintained projects.</p>
            <ul class="sub">
            <li><a href="http://macgpg.sourceforge.net/">MacGPG</a>. GPG related software for OS X (GPGFileTool, GPGDropThing, GPGPreferences, ...).</li>
            <li><a href="http://abkey.far-blue.co.uk/">AB Key</a>. GPG for the OS X address book.</li>
            <li><a href="http://www.far-blue.co.uk/projects/gpgservices.html">GPGService</a>. GPG for the OS X service menu.</li>
            </ul>
        </div>
    </div>
{/block}