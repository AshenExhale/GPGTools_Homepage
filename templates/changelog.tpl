<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <title>{$title} | GPGTools (OpenPGP Tools for Apple OS X)</title>
  <meta name="description" content="GPGTools - OpenPGP/PGP/GPG tools for Apple OS X (GPGMail, GPG Keychain Access, ...). To encrypt, decrypt, validate, and sign files and e-mails.">
  <meta name="author" content="GPGTools Project Team">
  <meta name="keywords" content="OpenPGP, PGP, GPG, Encryption, Decryption, Security, Apple, OS X, Mail, Keychain">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="robots" content="all" />
  <link rel="shortcut icon" href="./favicon.ico">
  <link rel="apple-touch-icon" href="./apple-touch-icon.png">
  <link rel="stylesheet" media="all" href="./css/style.css?v=2">
  <link rel="stylesheet" media="screen and (min-device-width: 1024px)" href="./css/badge.css?v=2" />
  <link href="http://twitter.com/statuses/user_timeline/170783148.rss" rel="alternate" title="recent tweets" type="application/rss+xml" />
  <link href="http://gpgtools.lighthouseapp.com/events.atom" rel="alternate" title="recent code changes and issues" type="application/rss+xml" />
  <script src="./js/libs/modernizr-1.6.min.js"></script>
</head>

<body>
  <div id="container">
    <header>
      <div id="foo">
          <div id="logo">
          </div>
          <div id="navigation">
          </div>
      </div>
    </header>
    <div id="overview">
      <div id="o_content"><img src="./images/{$img_logo}" alt="{$title}" title="{$title}" class="logo"/> <h2>{$title}</h2></div>
    </div>
    <div id="spacer">
    </div>
    <h3>Release Notes</h3>
            {foreach from=$changelog key=cVersion item=changes}
                <p><b>Version {$cVersion} ({$changes[0]}).</b></p>
                <ul class="sub">
                {foreach from=$changes[1] key=issue item=change}
                    {if $issue > 0}
                       <li><a href='http://gpgtools.lighthouseapp.com/projects/{$lighthouse}/tickets/{$issue}'>Issue {$issue}</a>: {$change}.</li>
                    {else}
                        <li>{$change}.</li>
                    {/if}
                {/foreach}
                </ul>
            {/foreach}
        </div>
    </div>
    <footer>
        <div>
            <div>
            </div>
        </div>
    </footer>
  </div>
</body>
</html>
