{extends file="index.tpl"}
{block name=body}
{include file="templates/download.tpl"}
    <div id="main">
        <div id="m_content">
            <h3>Overview</h3>
            <p>GPGTools Installer is an open source installer for Apple OS X. It installs all related OpenPGP applications, plugins and dependencies. This is a BETA version so use at your own risk - also currently you cannot use the installer when you've GnuPG2 already installed. But we're working on it.<br/><br/></p>
                        <h3>Support</h3>
            <p>Please have a look at the <a href="http://gpgtools.lighthouseapp.com/tickets">issue section</a> and ask <a href="mailto:gpgtools-users@lists.gpgtools.org">the mailing list</a> for further support.<br/><br/></p>
            <h3>Main Features</h3>
            <ul id="features" class="sub">
                <li><img src="./images/gpgtools.png" alt="Core" title="Core" id="core" class="icon" /> Integrated GPG1 (<a href="https://github.com/GPGTools/GPGTools/blob/master/README.markdown">not GPG2, yet</a>), GPGAgent, and GPGPinentry.</li>
                <li><img src="./images/gpgmail.png" alt="GPGMail" title="GPGMail" id="gpgmail" class="icon" /> Integrated <a href="gpgmail.html">GPGMail</a>.</li>
                <li><img src="./images/gpgkeychain.png" alt="GPG Keychain Access" title="GPG Keychain Access" id="gpgkeychain" class="icon" /> Integrated <a href="keychain.html">GPG Keychain Access</a>.</li>
                <li><img src="./images/enigmail.png" alt="Enigmail" title="Enigmail" id="enigmail" class="icon" /> Integrated <a href="http://enigmail.mozdev.org/">Enigmail</a>.</li>
                <li><img src="./images/64bit.jpg" alt="64 Bit" title="64 Bit" id="64bit" class="icon" /> The application is 64-bit and Snow Leopard ready.</li>
            </ul>
            <h3>Screenshots</h3>
            <ul class="sub projects">
                <li><a href="./images/installer_dmg.png"><img class="screenshot" src="./images/installer_dmg.png" alt="The installation volume" title="The installation volume" /><br />The installation volume</a></li>
                <li><a href="./images/installer.png"><img class="screenshot" src="./images/installer.png" alt="List of components in the installer" title="List of components in the installer" /><br />List of components in the installer</a></li>
            </ul>
            <h3>Screencasts</h3>
            <ul class="sub projects">
                <li><a href="http://www.gpgtools.org/videos/install_gpgtools.m4v"><img class="screenshot" src="./images/screencast.jpg" alt="install gpgtools" title="install gpgtools" /><br />Install GPGTools</a></li>
            </ul>
            <h3>What others say</h3>
            <p>Ratings and other information from other sites.</p>
            <ul id="other" class="sub">
            <!--<li><script type='text/javascript' src='http://www.macupdate.com/developers/badge/11136'></script><noscript><a href="http://www.macupdate.com/app/mac/11136">GPGTools on MacUpdate</a></noscript></li>-->
            <li><script type="text/javascript" src="http://osx.iusethis.com/app/include/gpgtools/1"></script><noscript><a href="http://osx.iusethis.com/app/gpgtools">GPGTools on iusethis</a></noscript></li>
            </ul>
            <h3>Release Notes</h3>
            <p>Also have a look at the <a href="https://github.com/GPGTools/GPGTools/commits/master">list of last changes</a>.<br/><br/></p>
            <p><b>Version 2011.01.05_1 (05.01.2011).</b></p>
            <ul class="sub">
                <li>Update: GPGMail 1.3.2beta.</li>
                <li><a href="http://gpgtools.lighthouseapp.com/projects/65162/tickets/15">Issue 15</a>: Fixed check for OS requirements.</li>
                <li><a href="http://gpgtools.lighthouseapp.com/projects/65162/tickets/26">Issue 26</a>: Fixed permission issues.</li>
                <li><a href="http://gpgtools.lighthouseapp.com/projects/65162/tickets/16">Issue 27</a>: Added check for GPG2.</li>
            </ul>
            <p><b>Version 2011.01.03 (03.01.2011).</b></p>
            <ul class="sub">
                <li><a href="http://gpgtools.lighthouseapp.com/projects/65162/tickets/14">Issue 14</a>: Resized the window a bit.</li>
                <li><a href="http://gpgtools.lighthouseapp.com/projects/65162/tickets/15">Issue 15</a>: Now checking for OS requirements.</li>
                <li><a href="http://gpgtools.lighthouseapp.com/projects/65162/tickets/16">Issue 16</a>: Fixed a bug related to gpg installed using fink.</li>
            </ul>
            <p><b>Version 2010.12.20 (20.12.2010).</b></p>
            <ul class="sub">
                <li>Added Enigmail</li>
                <li>Updated GPG Keychain Access to 0.3.1b</li>
                <li>Updated the background image</li>
                <li>Removed the zip extension</li>
            </ul>
            <p><b>Version 2010.11.13 (13.11.2010).</b></p>
            <ul class="sub">
                <li>Updated GPG Keychain Access to 0.2.2b</li>
                <li>Added explanation why we use GnuPG1 and not GnuPG2</li>
                <li>Right name for the Uninstaller</li>
                <li>Fixed path in zip file</li>
                <li>Added script to create DMG</li>
            </ul>
        </div>
    </div>
{/block}
