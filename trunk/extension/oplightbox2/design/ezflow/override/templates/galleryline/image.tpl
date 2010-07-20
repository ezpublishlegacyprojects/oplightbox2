{* Image - Gallery line view *}
<div class="content-view-galleryline">
    <div class="class-image">

    <div class="attribute-image"{if is_set($#image_style)} style="{$#image_style}"{/if}>
        <p>
			<a title="{$node.data_map.caption.data_text|wash(xhtml)}" href={$node.data_map.image.content.imagelarge.url|ezroot()} rel="lightbox[diaporama_{$node.parent.node_id}]">{attribute_view_gui attribute=$node.data_map.image image_class=gallerythumbnail}</a>
		</p>
    </div>

    <div class="attribute-name"{if is_set($#image_style)} style="{$#image_style|explode(';').0}"{/if}>
        <p>{$node.name|shorten(14)|wash}</p>
    </div>

    </div>
</div>