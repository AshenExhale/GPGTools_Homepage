<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <title>{$title} | {if $subtitle neq ''}{$subtitle} | {/if}GPGTools (OpenPGP Tools for Apple OS X)</title>
  <meta name="description" content="{$title} | {if $subtitle neq ''}{$subtitle} | {/if}GPGTools - OpenPGP/PGP/GPG tools for Apple OS X (GPGMail, GPG Keychain Access, ...). To encrypt, decrypt, validate, and sign files and e-mails.">
  <meta name="author" content="GPGTools Project Team">
  <meta name="keywords" content="OpenPGP, PGP, GPG, Encryption, Decryption, Security, Apple, OS X, Mail, Keychain, Digital Signatures">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="robots" content="all" />
  {if $prefetch neq ''}
  <link rel="prerender" href="{$prefetch}">
  <link rel="prefetch" href="{$prefetch}">
  {/if}
  <link rel="shortcut icon" href="{$root}/favicon.ico">
  <link rel="apple-touch-icon" href="{$root}/apple-touch-icon.png">
  <link rel="stylesheet" media="all" href="{$root}/css/style.css?v=2">
  <!--[if (gt IE 9)|!(IE)]><!-->   <link rel="stylesheet" media="screen and (min-device-width: 1024px)" href="{$root}/css/badge.css?v=2" /> <!--<![endif]-->
  <link href="http://twitter.com/statuses/user_timeline/170783148.rss" rel="alternate" title="recent tweets" type="application/rss+xml" />
  <link href="appcast.xml" rel="alternate" title="recent releases" type="application/rss+xml" />
  <link href="http://gpgtools.lighthouseapp.com/events.atom" rel="alternate" title="recent code changes and issues" type="application/rss+xml" />
  <script src="{$root}/js/libs/modernizr-1.6.min.js"></script>
  <script src="{$root}/js/mail.js"></script>
</head>

<body>
  <div id="container">
    <header>
      <div id="foo">
          <div id="logo">
            <a href="{$root}/index.php"><img src="{$root}/macgpg2/images/logo-128px.png" alt="GPGTools" title="GPGTools" class="logo"/></a>
            <h1><a href="{$root}/index.php" id="header">GPGTools</a></h1>
          </div>
          <div id="navigation">
            <ul>
              <li><a href="{$root}/projects.php" title="more information about the included applications and related projects">Projects</a>|</li>
              <li><a href="{$root}/faq.php" title="frequently asked questions">FAQ</a>|</li>
              <li><a href="{$root}/about.php" title="how to contact us">Contact</a>|</li>
              <li><a href="{$root}/donate.php" title="how to donate">Donate</a></li>
            </ul>
          </div>
          <a id="badge" href="{$root}/donate.php">
              <span>We need help!</span>
              <span>How to contribute?</span>
          </a>
      </div>
    </header>
