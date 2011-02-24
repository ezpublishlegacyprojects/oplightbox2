{* Gallery - Full view *}

{* Load prettyphoto javascripts and CSS *}
{if ezini('OPLightBoxSettings', 'LightBoxAPI', 'oplightbox2.ini')|eq( 'prettyphoto' )}
	{*<script src={'javascript/prettyphoto/js/jquery-1.4.4.min.js'|ezdesign()} type="text/javascript"></script>*}
	{*<script src={'javascript/prettyphoto/js/jquery.prettyPhoto.js'|ezdesign} type="text/javascript" charset="utf-8"></script>*}

	{ezscript_require(array( 'ezjsc::jquery', 'prettyphoto/js/jquery.prettyPhoto.js' ))}
	<link rel="stylesheet" href={'javascript/prettyphoto/css/prettyPhoto.css'|ezdesign()} type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
	<link rel="stylesheet" href={'stylesheets/prettylightbox.css'|ezdesign()} type="text/css" media="screen" charset="utf-8" />


	<script type="text/javascript" charset="utf-8">
		$(document).ready(function(){ldelim}
			$("a[rel^='{ezini('OPLightBoxSettings', 'LightBoxAPI', 'oplightbox2.ini')}']").prettyPhoto({ldelim}
{if ezini('OPLightBoxSettings', 'Theme', 'oplightbox2.ini') }
						theme: '{ezini('OPLightBoxSettings', 'Theme', 'oplightbox2.ini')}',
{/if}
{if ezini('OPLightBoxSettings', 'SlideShow', 'oplightbox2.ini') }
						slideshow: {ezini('OPLightBoxSettings', 'SlideShow', 'oplightbox2.ini')},
{/if}
{if ezini('OPLightBoxSettings', 'AutoplaySlideshow', 'oplightbox2.ini') }
						autoplay_slideshow: {ezini('OPLightBoxSettings', 'AutoplaySlideshow', 'oplightbox2.ini')},
{/if}
{if ezini('OPLightBoxSettings', 'ShowTitle', 'oplightbox2.ini') }
						show_title: {ezini('OPLightBoxSettings', 'ShowTitle', 'oplightbox2.ini')},
{/if}
			{rdelim});
		{rdelim});
	</script>

{* Load lightbox javascripts and CSS *}
{else}
	<link rel="stylesheet" href={'stylesheets/lightbox.css'|ezdesign} type="text/css" media="screen" />
	<script src={'javascript/lightbox/prototype.js'|ezdesign} type="text/javascript"></script>

	{*ezscript_require(array( 'lightbox/prototype.js' ))*}

	<script src="{'javascript/lightbox/scriptaculous.js'|ezdesign(no)}?load=effects,builder" type="text/javascript"></script>
	<script src={'javascript/lightbox/lightbox.js'|ezdesign} type="text/javascript"></script>

	{*ezscript_require(array( 'lightbox/lightbox.js' ))*}

{/if}

<div class="border-box">
<div class="border-tl"><div class="border-tr"><div class="border-tc"></div></div></div>
<div class="border-ml"><div class="border-mr"><div class="border-mc float-break">

<div class="content-view-full">
    <div class="class-gallery">

        <div class="attribute-header">
            <h1>{$node.name|wash()}</h1>
        </div>

        {if $node.data_map.image.content}
            <div class="attribute-image">
                {attribute_view_gui image_class=medium attribute=$node.data_map.image.content.data_map.image}
            </div>
        {/if}

        <div class="attribute-short">
           {attribute_view_gui attribute=$node.data_map.short_description}
        </div>

        <div class="attribute-long">
           {attribute_view_gui attribute=$node.data_map.description}
        </div>

        {def $page_limit=12
             $children_count = fetch( 'content', 'list_count', hash( 'parent_node_id', $node.node_id,
                                                                     'class_filter_type', 'include',
                                                                     'class_filter_array', array( 'image', 'flash_player' ) ) )}

        {if $children_count}
            {def $children = fetch( 'content', 'list', hash( 'parent_node_id', $node.node_id,
                                                             'offset', $view_parameters.offset,
                                                             'limit', $page_limit,
                                                             'class_filter_type', 'include',
                                                             'class_filter_array', array( 'image', 'flash_player' ),
                                                             'sort_by', $node.sort_array ) )}
            <div class="attribute-link">
                <p>
                <a href={$children[0].url_alias|ezurl}>{'View as slideshow'|i18n( 'design/ezwebin/full/gallery' )}</a>
                </p>
            </div>

            <div class="content-view-children">
                {def $filters = ezini( 'gallerythumbnail', 'Filters', 'image.ini' )}

                    {foreach $filters as $filter}
                    {if or($filter|contains( "geometry/scale" ), $filter|contains( "geometry/scaledownonly" ), $filter|contains( "geometry/crop" ) )}
                        {def $image_style = $filter|explode("=").1}
                        {set $image_style = concat("width:", $image_style|explode(";").0, "px ;", "height:", $image_style|explode(";").1, "px")}
                        {break}
                    {/if}
                    {/foreach}

                {foreach $children as $child}
                    {node_view_gui view=galleryline content_node=$child}
                {/foreach}

            </div>
        {/if}

        {include name=navigator
                 uri='design:navigator/google.tpl'
                 page_uri=$node.url_alias
                 item_count=$children_count
                 view_parameters=$view_parameters
                 item_limit=$page_limit}
    </div>
</div>

</div></div></div>
<div class="border-bl"><div class="border-br"><div class="border-bc"></div></div></div>
</div>
{undef}