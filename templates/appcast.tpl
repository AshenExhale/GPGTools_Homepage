<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/">
   <channel>
		<title>GPGTools - {$title} - Changelog</title>
		<link>http://www.gpgtools.org/{$name}_appcast.xml</link>
		<description>New {$title} version available.</description>
		<language>en</language>
		{foreach $changelog as $changes}
	    	<item>
		        <title>Version {$changes@key}</title>
		        <description>Visit http://www.gpgtools.org/ for further information.</description>
    		    <sparkle:releaseNotesLink>
	    	        http://www.gpgtools.org/{$name}_sparkle.html
		        </sparkle:releaseNotesLink>
    		    <pubDate>{$changes[1]['sparkle_date']}</pubDate>
		        <enclosure url="{$changes[1]['sparkle_url']}"
		               sparkle:version="{$changes@key}"
					   sparkle:dsaSignature=""
		               length=""
		               type="application/octet-stream" />
        	</item>
        {/foreach}
	</channel>
</rss>
