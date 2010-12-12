{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><img src="./images/gpgkeychain.png" alt="GPGKeychainAccess" title="GPGKeychainAccess" class="logo"/> <h2>GPGKeychainAccess</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="info">
    <a href="https://github.com/downloads/GPGMail/GPGKeychainAccess/GPGKeychainAccess-0_3_1b.tar.bz2"><img src="./images/download.png" title="download" alt="download" id="download"/></a>
    <h3><a href="https://github.com/downloads/GPGMail/GPGKeychainAccess/GPGKeychainAccess-0_3_1b.tar.bz2">Download</a></h3>
    <p>Version 0.3.1b</p>
    <p>11. December 2010.</p>
    <p><br>(<a href="https://github.com/downloads/GPGMail/GPGKeychainAccess/GPGKeychainAccess-0_3_1b.tar.bz2.asc">signature</a> | <a href="http://github.com/gpgmail/GPGKeychainAccess/downloads">others</a>)</p>
    </div>
    <div id="main">
        <div id="m_content">
            <h3>Overview</h3>
            <p>GPGKeychainAccess is an open source application for Apple OS X. It brings the functionality to manage OpenPGP keys.<br/><br/></p>
            <h3>Main Features</h3>
            <ul id="features" class="sub">
            <li><img src="./images/secure.jpg" alt="Secure" title="Secure" id="secure"/> Create, delete, find, sign, and verify all your keys.</li>
            <li><img src="./images/64bit.jpg" alt="64 Bit" title="64 Bit" id="64bit"/> The application is 64-bit and Snow Leopard ready.</li>
            </ul>
            <h3>Screenshots</h3>
            <ul id="projects" class="sub">
            <li><a href="./images/gpgkeychain_keys.png"><img class="screenshot" src="./images/gpgkeychain_keys.png" alt="list of keys" title="list of keys" />List of installed keys</a></li>
            </ul>
            <h3>Release Notes</h3>
            <p>Also have a look at the <a href="https://github.com/GPGMail/GPGKeychainAccess/commits/master">list of last changes</a>.<br/><br/></p>
            <p><b>Version 0.3.1 (11.12.2010).</b></p>
            <ul class="sub">
                <li>Right click context menu.</li>
                <li>Added new icons.</li>
                <li>Added support for algorithm preferences.</li>
                <li>Showing validity.</li>
            </ul><p><b>Version 0.3.0 (28.11.2010).</b></p>
            <ul class="sub">
                <li>Added support for PPC.</li>
                <li>Improved performance at startup and when refresh the key list.</li>
                <li>Added support to create revocation certificates.</li>
                <li>MacGPGME is no longer used.</li>
                <li>Included GPGOptions directly.</li>
                <li>Fixed a bug with Drag & Drop.</li>
            </ul>
        </div>
    </div>
{/block}