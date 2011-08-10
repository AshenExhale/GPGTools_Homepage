{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>Support us</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
            <h3>What is this about?</h3>
            <p>GPGTools is an open source project and we all do this out of
            love for the project. <b>Any kind</b> of help is very much
            appreciated!</p>
            <ul class="sub"></ul>
            <h3>How to help?</h3>
            <p>If you like what we're doing please consider to help us:</p>
            <h4>Donate time</h4>
            <p>Spread the word! At the bottom of the page, click on the buttons 
			to share us with your social networks. You can also tell your 
			friends and co-workers about GPGTools, or even ask media to write 
			articles about OpenPGP based security. You can support other 
			users by answering questions via
            <a href="about.php">mailing list or twitter</a>. Furthermore, you
            could <a href="http://www.apple.com/feedback/macosx.html">recommend for
            Apple</a> to support Mail bundles officially.</p>
            <h4>Donate knowledge</h4>
            <p>Most notably, we need more developers for all different kind of
            tasks (on several levels). Help for localization,
            testing beta versions, and documentation would also be very helpful. Some
            starting points:</p>
            <ul>
            <li><a href="https://github.com/GPGTools/">All the sources</a></li>
            <li><a href="http://gpgtools.lighthouseapp.com/tickets/">All the issues</a></li>
            <li><a href="https://github.com/GPGTools/GPGTools/wiki/How-to-build">How to build</a></li>
            <li><a href="https://github.com/GPGTools/GPGTools/wiki/How-to-build">How to localize</a></li>
            <li><a href="http://gpgtools.lighthouseapp.com/events.atom">How to keep up to date with all issues</a></li>
            <li><a href="https://github.com/GPGTools/GPGTools/wiki/">How to get more information</a></li>
            <li><a href="about.php">How to get in contact</a></li>
            </ul>
            <h4>Donate money</h4>
            <p>The donation will be used for the development of the
            GPGTools project: developer accounts, marketing, design, etc.
            There are several ways to donate. Currently, we offer PayPal and
            Flattr donations only, but if you want to use another service please
            <a href="about.php">let us know</a>.</p>
            <ul class="sub"></ul>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_donations">
<input type="hidden" name="business" value="alex@willner.ws">
<input type="hidden" name="lc" value="US">
<input type="hidden" name="item_name" value="GPGTools">
<input type="hidden" name="item_number" value="gpgtools">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="currency_code" value="EUR">
<input type="hidden" name="bn" value="PP-DonationsBF:btn_donate_LG.gif:NonHostedGuest">
<input type="image" src="https://www.paypal.com/en_US/i/btn/btn_donate_LG.gif" name="submit" alt="PayPal - The safer, easier way to pay online!" style="border:0px;">
<img alt="" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1" style="border:0px;">
</form><br/>
<a href="http://flattr.com/thing/319097/GPGTools" target="_blank">
<img src="http://api.flattr.com/button/flattr-badge-large.png" alt="Flattr this" title="Flattr this" border="0" /></a>
        </div>
{/block}
