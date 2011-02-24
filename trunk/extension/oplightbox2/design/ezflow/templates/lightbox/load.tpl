
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
