{extends file="index.tpl"}
{block name=body}
    <div id="overview">
      <div id="o_content"><h2>FAQ</h2></div>
    </div>
    <div id="spacer">
    </div>
    <div id="main">
        <div id="m_content">
          <h3>Overview</h3>
          <p>Here is a list of common questions about GPGTools. Please do not
          hesitate to <a href="about.php">contact us</a>
          if your question is not answered here:</p>
          <ul class="sub">
          {foreach $categories as $category name=catloop}
            <li>{$category}<ul class="">
           {foreach from=$faq.$category key=question item=answer name=queloop}
               <li><a href="#{$smarty.foreach.catloop.iteration}.{$smarty.foreach.queloop.iteration}"><span class="question">{$question}</span></a></li>
           {/foreach}
            </ul></li>
        {/foreach}
        </ul>
        {foreach $categories as $category name=catloop}
            <h3 class="clear">{$category}</h3>
            <ul class="sub">
           {foreach from=$faq.$category key=question item=answer name=queloop}
               <li id="{$smarty.foreach.catloop.iteration}.{$smarty.foreach.queloop.iteration}"><div class="question">{$question}</div><div class="answer">{$answer}</div></li>
           {/foreach}
            </ul>
        {/foreach}
        </div>
{/block}
