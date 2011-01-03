{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><img src="./images/gpginstaller.png" alt="GPGTools Installer" title="GPGTools Installer" class="logo"/> <h2>Installer</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="info">
    <a href="https://github.com/downloads/GPGTools/GPGTools/GPGTools-20101220.dmg" class='piwik_download'><img src="./images/download.png" title="download" alt="download" id="download"/></a>
    <h3><a href="https://github.com/downloads/GPGTools/GPGTools/GPGTools-20101220.dmg" class='piwik_download'>Download</a></h3>
    <p>Version 2010.12.20</p>
    <p>20. December 2010.</p>
    <p>Requires Mac OS X 10.6.</p>
    <p><br>(<a href="https://github.com/downloads/GPGTools/GPGTools/GPGTools-20101220.dmg.sig" class='piwik_download'>signature</a> | <a href="http://github.com/GPGTools/GPGTools/downloads">others</a>)</p>
    </div>
    <div id="main">
        <div id="m_content">
            <h3>Overview</h3>
            <p>GPGTools Installer is an open source installer for Apple OS X. It installs all related OpenPGP applications, plugins and dependencies.<br/><br/></p>
                        <h3>Support</h3>
            <p>Please have a look at the <a href="http://gpgtools.lighthouseapp.com/home">issue section</a> and ask <a href="mailto:gpgmail-users@lists.gpgmail.org">the mailing list</a> for further support.<br/><br/></p>
            <h3>Main Features</h3>
            <ul id="features" class="sub">
                <li><img src="./images/gpgtools.png" alt="Core" title="Core" id="core" class="icon" /> Integrated GPG1 (<a href="https://github.com/GPGTools/GPGTools/blob/master/README.markdown">not GPG2</a>), GPGAgent, and GPGPinentry.</li>
                <li><img src="./images/gpgmail.png" alt="GPGMail" title="GPGMail" id="gpgmail" class="icon" /> Integrated GPGMail.</li>
                <li><img src="./images/gpgkeychain.png" alt="GPG Keychain Access" title="GPG Keychain Access" id="gpgkeychain" class="icon" /> Integrated GPG Keychain Access.</li>
                <li><img src="./images/enigmail.png" alt="Enigmail" title="Enigmail" id="enigmail" class="icon" /> Integrated Enigmail.</li>
                <li><img src="./images/64bit.jpg" alt="64 Bit" title="64 Bit" id="64bit" class="icon" /> The application is 64-bit and Snow Leopard ready.</li>
            </ul>
            <h3>Screenshots</h3>
            <ul id="projects" class="sub">
                <li><a href="./images/installer_dmg.png"><img class="screenshot" src="./images/installer_dmg.png" alt="The installation volume" title="The installation volume" />The installation volume</a></li>
                <li><a href="./images/installer.png"><img class="screenshot" src="./images/installer.png" alt="List of components in the installer" title="List of components in the installer" />List of components in the installer</a></li>
            </ul>
            <h3>Screencasts</h3>
            <ul class="sub projects">
                <li><a href="http://www.gpgtools.org/videos/install_gpgtools.m4v"><img class="screenshot" src="./images/screencast.jpg" alt="install gpgtools" title="install gpgtools" /> Install GPGTools</a></li>
            </ul>
            <h3>Release Notes</h3>
            <p>Also have a look at the <a href="https://github.com/GPGTools/GPGTools/commits/master">list of last changes</a>.<br/><br/></p>
            <p><b>Version 2010.12.20 (20.12.2010).</b></p>
            <ul class="sub">
                <li>Added Enigmail</li>
                <li>Updated GPGKeychainAccess to 0.3.1b</li>
                <li>Updated the background image</li>
                <li>Removed the zip extension</li>
            </ul>
            <p><b>Version 2010.11.13 (13.11.2010).</b></p>
            <ul class="sub">
                <li>Updated GPGKeychainAccess to 0.2.2b</li>
                <li>Added explanation why we use GnuPG1 and not GnuPG2</li>
                <li>Right name for the Uninstaller</li>
                <li>Fixed path in zip file</li>
                <li>Added script to create DMG</li>
            </ul>
        </div>
    </div>
{/block}