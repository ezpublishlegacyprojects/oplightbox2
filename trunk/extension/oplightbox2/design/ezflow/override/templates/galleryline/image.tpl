{* Image - Gallery line view *}
{if $node.data_map.image.content.original.text}
    {def $alt_text = $node.data_map.image.content.original.text}
{else}
    {def $alt_text = $node.data_map.image.object.name}
{/if}

<div class="content-view-galleryline">
    <div class="class-image">

    <div class="attribute-image"{if is_set($#image_style)} style="{$#image_style}"{/if}>
        <p>
			<a title="{$alt_text|wash(xhtml)}" href={$node.data_map.image.content.original.url|ezroot()} rel="{ezini('OPLightBoxSettings', 'LightBoxAPI', 'oplightbox2.ini')}[diaporama_{$node.parent.node_id}]">{attribute_view_gui attribute=$node.data_map.image image_class=gallerythumbnail}</a>
		</p>
    </div>

    <div class="attribute-name"{if is_set($#image_style)} style="{$#image_style|explode(';').0}"{/if}>
        <p>{$node.name|shorten(14)|wash}</p>
    </div>

    </div>
</div>