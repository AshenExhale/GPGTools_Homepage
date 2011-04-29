<!doctype html>
<html lang="en" class="no-js white">
<head>
	<meta charset="utf-8">
	<title>{$title} – Release Notes</title>
	<meta name="author" content="GPGTools Project Team">
	<meta name="robots" content="noindex" />
	<link rel="shortcut icon" href="./favicon.ico">
	<link rel="stylesheet" media="all" href="{$root}/css/style.css?v=2">
	<link rel="stylesheet" media="screen and (min-device-width: 1024px)" href="{$root}/css/badge.css?v=2" />
	<script src="./js/libs/modernizr-1.6.min.js"></script>
</head>

<body>
	<div id="container">
		<div id="m_content">
			<h3>Release Notes</h3>
			{foreach $changelog as $changes}
				<p><b>Version {$changes@key} ({$changes[0]}).</b></p>
				<ul class="sub">
					{foreach $changes[1] as $change}
						{if $change@key|substr:0:7 == 'sparkle'}{continue}{/if}
						{if $change@key > 0}
							<li><a href='http://gpgtools.lighthouseapp.com/projects/{$lighthouse}/tickets/{$change@key}'>Issue {$change@key}</a>: {$change}.</li>
						{else}
							<li>{$change}.</li>
						{/if}
					{/foreach}
				</ul>
			{/foreach}
		</div>
	</div>
</body>
</html>
