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
        'Contao\Calculator'             =>  'system/modules/my_calculator/modules/Calculator.php',
   	// Models

));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
        'fe_calculator'         => 'system/modules/my_calculator/templates',
        'fe_photosview'        => 'system/modules/my_calculator/templates'
));
