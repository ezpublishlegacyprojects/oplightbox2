<?php
class oplightbox2Info
{
    static function info()
    {
        return array( 'Name' => "opLightBox2",
                      'Version' => "v0.1",
                      'Copyright' => "Copyright (C) 2010 O. Portier",
                      'Info_url' => "<a href='http://projects.ez.no/oplightbox2/'>http://projects.ez.no/oplightbox2/</a>",
            		  'License' => "GNU General Public License v2.0",
                      'Includes the following third-party software' =>
                            array ( 'Name' => 'LightBox 2',
                                    'Version' => 'v2.04',
                                    'copyright' => 'Copyright (C) Lokesh Dhakar',
                                    'License' => 'Creative Commons Attribution 2.5 License',
                                    'More information' => "<a href='http://www.huddletogether.com/projects/lightbox2/'>http://www.huddletogether.com/projects/lightbox2/</a>" ),
                      'Includes the following javascript and Ajax library' =>
							array ( 'Name' => 'Prototype',
                                    'Version' => 'v1.6.0.2',
                                    'Copyright' => '(c) 2005-2008 Sam Stephenson',
                                    'License' => 'MIT-style license',
                                    'More information' => "<a href='http://www.prototypejs.org/'>http://www.prototypejs.org/</a>" ),
					  'Includes the following javascript effects library' =>
                            array ( 'name' => 'script.aculo.us',
                                    'Version' => 'v1.8.1',
                                    'copyright' => 'Copyright (c) 2005-2007 Thomas Fuchs',
                                    'License' => "<a href='http://wiki.github.com/madrobby/scriptaculous/License'>more information about the license</a>",
                                    'More information' => "<a href='http://script.aculo.us'>http://script.aculo.us</a>" )
                    );
    }
}
?>