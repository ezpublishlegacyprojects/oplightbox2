{* Flash player - Gallery line view *}
<div class="content-view-galleryline">
    <div class="class-flash-player">

    {if $node.data_map.thumbnail.has_content}
    <div class="attribute-image"{if is_set($#image_style)} style="{$#image_style}"{/if}>
        <p>{attribute_view_gui attribute=$node.data_map.thumbnail image_class=gallerythumbnail
                               href=$node.url_alias|ezurl}</p>
    </div>
    {else}
    <a class="attribute-thumbnail"{if is_set($#image_style)} style="{$#image_style}"{/if} href={concat('layout/set/lightbox/content/view/lightbox/',$node.node_id, '?iframe=true&width=500&height=420' )|ezurl()} rel="{ezini('OPLightBoxSettings', 'LightBoxAPI', 'oplightbox2.ini')}[diaporama_{$node.parent.node_id}]" title="{$node.name|wash}">
    </a>
    {/if}

    <div class="attribute-name"{if is_set($#image_style)} style="{$#image_style|explode(';').0}"{/if}>
        <p>{$node.name|shorten(14)|wash}</p>
    </div>

    </div>
</div>