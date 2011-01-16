{extends file="index.tpl"}
{block name=body}
{include file="templates/download.tpl"}
    <div id="main">
        <div id="m_content">
            <h3>Overview</h3>
            <p>GPGMail is an open source plugin for Apple Mail. It brings the functionality to sign, verify, encrypt and decrypt mails using the OpenPGP standard.<br/><br/></p>
            <h3>Support</h3>
            <p>Please have a look at the <a href="https://github.com/GPGMail/GPGMail/wiki/Getting-started">getting started</a> and <a href="http://gpgmail.org/faq">FAQ</a> section. Also have a look at the <a href="http://gpgtools.lighthouseapp.com/projects/65764/tickets">issue section</a> and ask <a href="mailto:gpgtools-users@lists.gpgtools.org">the mailing list</a> for further support. It would be nice to <a href="http://www.apple.com/feedback/macosx.html">tell Apple</a> to support bundles for Mail.app officially.<br/><br/></p>
            <h3>Main Features</h3>
            <ul id="features" class="sub">
            <li><img src="./images/installericon.png" alt="Installer" title="Installer" id="installer"/> Is part of the <a href="installer.html">GPGTools Installer</a>.</li>
            <li><img src="./images/secure.jpg" alt="Secure" title="Secure" id="secure"/> Sign, encrypt, decrypt, and verify all your mails.</li>
            <li><img src="./images/64bit.jpg" alt="64 Bit" title="64 Bit" id="64bit"/> The bundle is 64-bit and Snow Leopard ready.</li>
            </ul>
            <h3>Screenshots</h3>
            <ul class="sub projects">
            <li><a href="./images/compose.png"><img class="screenshot" src="./images/compose.png" alt="composing a message" title="composing a message" /><br/>Composing a message</a></li>
            <li><a href="./images/encrypted.png"><img class="screenshot" src="./images/encrypted.png" alt="encrypted message" title="encrypted message" /><br/>Encrypted message</a></li>
            <li><a href="./images/decrypted.png"><img class="screenshot" src="./images/decrypted.png" alt="decrypted message" title="decrypted message" /><br/>Decrypted message</a></li>
            </ul>
            <h3>Screencasts</h3>
            <ul class="sub projects">
                <li><a href="http://www.gpgtools.org/videos/encrypt_mail.m4v"><img class="screenshot" src="./images/screencast.jpg" alt="send an encrypted mail" title="send an encrypted mail" /><br />Send an encrypted mail</a></li>
            </ul>
            <h3>What others say</h3>
            <p>Ratings and other information from other sites.</p>
            <ul id="other" class="sub">
            <li><script type='text/javascript' src='http://www.macupdate.com/developers/badge/7654'></script><noscript><a href="http://www.macupdate.com/app/mac/7654">GPGMail on MacUpdate</a></noscript></li>
            <li><script type="text/javascript" src="http://osx.iusethis.com/app/include/gpgmail/1"></script><noscript><a href="http://osx.iusethis.com/app/gpgmail">GPGMail on iusethis</a></noscript></li>
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
        </div>
    </div>
{/block}
