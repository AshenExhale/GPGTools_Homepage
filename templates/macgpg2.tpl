{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><img src="./images/gpgtools.png" alt="MacGPG2" title="MacGPG2" class="logo"/> <h2>MacGPG2</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="info">
    <a href="https://github.com/GPGTools/MacGPG2/downloads/MacGPG2-2.0.16.zip" class='piwik_download'><img src="./images/download.png" title="download" alt="download" id="download"/></a>
    <h3><a href="https://github.com/GPGTools/MacGPG2/downloads/MacGPG2-2.0.16.zip" class='piwik_download'>Download</a></h3>
    <p>Version 2.0.16.</p>
    <p>31. October 2010.</p>
    <p>Requires OS X >= 10.4.</p>
    <p><br>(<a href="https://github.com/GPGTools/MacGPG2/downloads/MacGPG2-2.0.16.zip.sig" class='piwik_download'>signature</a> | <a href="http://github.com/GPGTools/MacGPG2/downloads">others</a>)</p>
    </div>
    <div id="main">
        <div id="m_content">
            <h3>Overview</h3>
            <p>MacGPG2 is the Mac OS X port of GnuPG, licensed under the GNU GPL. The aims of the project are to make GnuPG easy to install, provide a native MacOSX pinentry utility and interact with existing GnuPG tools for MacOSX.<br/><br/></p>
            <h3>Support</h3>
            <p>Please have a look at the <a href="http://gpgtools.lighthouseapp.com/projects/66001/home">issue section</a> and ask <a href="mailto:gpgmail-users@lists.gpgmail.org">the mailing list</a> for further support.<br/><br/></p>
            <!--
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
            -->
            <h3>What others say</h3>
            <p>Ratings and other information from other sites.</p>
            <ul id="other" class="sub">
            <li><script type='text/javascript' src='http://www.macupdate.com/developers/badge/11136'></script><noscript><a href="http://www.macupdate.com/app/mac/11136">MacGPG2 on MacUpdate</a></noscript></li>
            <!-- <li><script type="text/javascript" src="http://osx.iusethis.com/app/include/MacGPG2/1"></script><noscript><a href="http://osx.iusethis.com/app/MacGPG2">MacGPG2 on iusethis</a></noscript></li> -->
            </ul>
            <h3>Release Notes</h3>
            <p>Also have a look at the <a href="https://github.com/GPGTools/MacGPG2/commits/master">list of last changes</a>.<br/><br/></p>
            <p><b>Version 2.0.16 (31.10.2010).</b></p>
            <ul class="sub">
                <li>Last version to support PPC and MacOSX Tiger.</li>
                <li>Maximum key size increased to 8192 bits; recommended for expert users only.</li>
                <li>Core upgraded to GnuPG v2.0.16.</li>
                <li>Configured to use standard socket and daemonise gpg agent on the fly if required.</li>
                <li>Libassuan upgraded to v2.0.2-svn389.</li>
                <li>Libgpg-error updated to v1.9.</li>
                <li>Libgcrypt updated to v1.4.6.</li>
                <li>If the agent's --use-standard-socket option is active, all tools try to start and daemonize the agent on the fly.  In the past this was only supported on W32; on non-W32 systems the new configure option --use-standard-socket may now be used to use this feature by default.</li>
                <li>The gpg-agent commands KILLAGENT and RELOADAGENT are now available on all platforms.</li>
            </ul>
        </div>
    </div>
{/block}