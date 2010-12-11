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
                <li><div class="project"><a href="installer.html"><img src="./images/gpgtoolsdmg.png" alt="Installer for OpenPGP and all necessary files" title="Installer for OpenPGP and all necessary files" /><br/>GPG Tools Installer</a></div></li>            
                <li><div class="project"><a href="keychain.html"><img src="./images/gpgkeychain.png" alt="Keychain for OpenPGP" title="Keychain for OpenPGP" class="logo"/><br/>GPG Keychain Access</a></div></li>
                <li><div class="project"><a href="gpgmail.html"><img src="./images/gpgmail.png" alt="OpenPGP plugin for Apple Mail" title="OpenPGP plugin for Apple Mail" class="logo"/><br/>GPGMail</a></div></li>
            </ul>
        </div>
    </div>
{/block}