<?php

/**
 * Contao Open Source CMS
 * 
 * Copyright (C) 2005-2012 Leo Feyer
 * 
 * @package Ym_partners
 * @link    http://contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */


/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	// Modules
        'Contao\PhotosList'             =>  'system/modules/my_fotogallery/modules/PhotosList.php',
        'Contao\PhotosView'             =>  'system/modules/my_fotogallery/modules/PhotosView.php',

	// Models

));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
        'fe_photoslist'         => 'system/modules/my_fotogallery/templates',
        'fe_photosview'        => 'system/modules/my_fotogallery/templates'
));
