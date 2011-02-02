   <channel>
		<title>GPGTools - {$title} - Changelog</title>
		<link>http://www.gpgtools.org/{$name}_appcast.xml</link>
		<description>Visit http://www.gpgtools.org/ for further information.</description>
		<language>en</language>
		{foreach $changelog as $changes}
	    	<item>
		        <title>{$title} version {$changes@key}</title>
		        <description><![CDATA[
		        <ul>
                {foreach $changes[1] as $change}
                    {if $change@key|substr:0:7 == 'sparkle'}{continue}{/if}
                    {if $change@key > 0}
                       <li><a href='http://gpgtools.lighthouseapp.com/projects/{$lighthouse}/tickets/{$change@key}'>Issue {$change@key}</a>: {$change}.</li>
                    {else}
                        <li>{$change}.</li>
                    {/if}
                {/foreach}
                </ul>
		        ]]></description>
    		    <sparkle:releaseNotesLink>
	    	        http://www.gpgtools.org/{$name}_sparkle.html
		        </sparkle:releaseNotesLink>
    		    <pubDate>{$changes[1]['sparkle_date']}</pubDate>
		        <enclosure url="{$changes[1]['sparkle_url']}"
		               sparkle:version="{$changes@key}"
					   sparkle:dsaSignature="{$changes[1]['sparkle_sig']}"
		               length="{$changes[1]['sparkle_size']}"
		               type="application/octet-stream" />
        	</item>
        {/foreach}
	</channel>
