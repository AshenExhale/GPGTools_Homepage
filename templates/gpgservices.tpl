{extends file="index.tpl"}
{block name=body}
{include file="templates/download.tpl"}
    <div id="main">
        <div id="m_content">
            <h3>Overview</h3>
            <p>The GPGServices service plugin adds to the global Services menu (in the Application menu) the facility to sign and verify plain text in any application that supports text services. The plugin also provides convenience facilities to import an ascii-armoured key from text in any application as well as return your default key, in ascii armoured format, and the key's fingerprint.</p>
            <p>Signing and pasting your key or fingerprint require the host application to support pasting of text (so you will not be able to sign text highlighted in a pdf file in Preview, for instance). Verifying a signature and importing a key only require that you can highlight the text.</p>
            <p>Here you can find the <a href="http://www.far-blue.co.uk/projects/gpgservices.html">discontinued original version</a>.<br/><br/></p>
            <h3>Support</h3>
            <p>Please have a look at the <a href="http://gpgtools.lighthouseapp.com/projects/67607/tickets">issue section</a> and ask <a href="mailto:gpgtools-users@lists.gpgtools.org">the mailing list</a> for further support.<br/><br/></p>
            <h3>Main Features</h3>
            <ul id="features" class="sub">
               <li><img src="./images/installericon.png" alt="Installer" title="Installer" id="installer"/> Will be part of the <a href="installer.html">GPGTools Installer</a> soon.</li>
            </ul>
            <!--
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

            <h3>What others say</h3>
            <p>Ratings and other information from other sites.</p>
            <ul id="other" class="sub">
            <li><script type='text/javascript' src='http://www.macupdate.com/developers/badge/11136'></script><noscript><a href="http://www.macupdate.com/app/mac/11136">GPGServices on MacUpdate</a></noscript></li>
            <li><script type="text/javascript" src="http://osx.iusethis.com/app/include/macgnuprivacyguard2/1"></script><noscript><a href="http://osx.iusethis.com/app/macgnuprivacyguard2">GPGServices on iusethis</a></noscript></li>
            </ul>
            -->
            <h3>Release Notes</h3>
            <p>Also have a look at the <a href="https://github.com/GPGTools/GPGServices/commits/master">list of last changes</a>.<br/><br/></p>
            <p><b>Version 1.1 alpha1 (14.01.2011).</b></p>
            <ul class="sub">
                <li>Initial port from the old sources to Snow Leopard.</li>
            </ul>
        </div>
    </div>
{/block}
