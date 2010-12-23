{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><img src="./images/gpgmail.png" alt="GPGMail" title="GPGMail" class="logo"/> <h2>GPGMail</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="info">
    <a href="http://github.com/downloads/gpgmail/GPGMail/GPGMail-1.3.1.pkg" class='piwik_download'><img src="./images/download.png" title="download" alt="download" id="download"/></a>
    <h3><a href="http://github.com/downloads/gpgmail/GPGMail/GPGMail-1.3.1.pkg" class='piwik_download'>Download</a></h3>
    <p>Version 1.3.1.</p>
    <p>16 November 2010.</p>
    <p>Requires Mac OS X 10.6.</p>
    <p><br>(<a href="http://github.com/downloads/gpgmail/GPGMail/GPGMail-1.3.1.pkg.sig" class='piwik_download'>signature</a> | <a href="http://github.com/gpgmail/GPGMail/downloads">others</a>)</p>
    </div>
    <div id="main">
        <div id="m_content">
            <h3>Overview</h3>
            <p>GPGMail is an open source plugin for Apple Mail. It brings the functionality to sign, verify, encrypt and decrypt mails using the OpenPGP standard.<br/><br/></p>
            <h3>Support</h3>
            <p>Please have a look at the <a href="http://gpgmail.org/faq">FAQ section</a>. Also it would be nice to <a href="http://www.apple.com/feedback/macosx.html">tell Apple</a> to support bundles for Mail.app officially.<br/><br/></p>
            <h3>Main Features</h3>
            <ul id="features" class="sub">
            <li><img src="./images/secure.jpg" alt="Secure" title="Secure" id="secure"/> Sign, encrypt, decrypt, and verify all your mails.</li>
            <li><img src="./images/64bit.jpg" alt="64 Bit" title="64 Bit" id="64bit"/> The bundle is 64-bit and Snow Leopard ready.</li>
            </ul>
            <h3>Screenshots</h3>
            <ul id="projects" class="sub">
            <li><a href="./images/compose.png"><img class="screenshot" src="./images/compose.png" alt="composing a message" title="composing a message" />Composing a message</a></li>
            <li><a href="./images/encrypted.png"><img class="screenshot" src="./images/encrypted.png" alt="encrypted message" title="encrypted message" />Encrypted message</a></li>
            <li><a href="./images/decrypted.png"><img class="screenshot" src="./images/decrypted.png" alt="decrypted message" title="decrypted message" />Decrypted message</a></li>
            </ul>
            <h3>Screencasts</h3>
            <ul class="sub projects">
                <li><a href="http://www.gpgtools.org/videos/encrypt_mail.m4v"><img class="screenshot" src="./images/screencast.jpg" alt="send an encrypted mail" title="send an encrypted mail" /> Send an encrypted mail</a></li>
            </ul>
            <h3>Release Notes</h3>
            <p>Also have a look at the <a href="https://github.com/GPGMail/GPGMail/commits/master">list of last changes</a>.<br/><br/></p>
            <p><b>Version 1.3.1 (11.11.2010).</b></p>
            <ul class="sub">
                <li>Issue 221: Fixed compatibility with 10.6.5</li>
                <li>Issue 14: Added make clean</li>
                <li>Issue 98: Renamed preference pane to GPGMail</li>
                <li>Issue 54: Renamed PGP to OpenPGP in the menu</li>
                <li>Issue 81: Disabled "update now" button</li>
                <li>Issue 212: Started to update the logos</li>
                <li>And many, many other minor updates.</li>
            </ul>
            <p><b>Version 1.3.0 (29.07.2010).</b></p>
            <ul class="sub">
            <li>New development team.</li>
            <li>Officiall support for Snow Leopard.</li>
            <li>Integrated update mechanism (sparkle).</li>
            </ul>
        </div>
    </div>
{/block}