{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><img src="{$img_logo}" alt="{$title}" title="{$title}" class="logo"/> <h2>{$title}</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
            <h3>All Release Notes</h3>
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
{/block}
