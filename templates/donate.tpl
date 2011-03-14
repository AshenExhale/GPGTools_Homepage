{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>Donate</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
            <h3>What and why to Donate?</h3>
            <p>GPGTools is an open source project and we all do this out of
            love for the project. Of course, donations are very much
            appreciated. The funds will be used for the development of the
            GPGTools project: developer accounts, marketing, design, etc. If
            you like what we're doing please spread the word, contribute, or
            donate any amount of money.</p><ul class="sub"></ul>
            <h3>How to Donate?</h3>
            <p>There are several ways to donate money to a project. Currently, we offer PayPal donations only, but if you want to use another service please <a href="about.php">let us know</a>.</p><ul class="sub"></ul>
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
</form>
        </div>
    </div>
{/block}
