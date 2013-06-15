<?php 

/**
 * Contao Open Source CMS
 * 
 * Copyright (C) 2005-2012 Leo Feyer
 * 
 * @package   msm_university 
 * @author    ym 
 * @license   LGPL 
 * @copyright YM 2012 
 */


/**
 * Table tl_calculator_options 
 */
$GLOBALS['TL_DCA']['tl_calculator_options'] = array
(

	// Config
	'config' => array
	(
            
        'dataContainer' => 'Table',
        'enableVersioning' => true,
        'ctable' => array('tl_calculator_items'),
		'sql' => array
		(
			'keys' => array
			(
				'id' => 'primary'
			)
		)
	),
        'list' => array
        (
            'sorting' => array
             (
                'mode' => 2,
                'fields' => array('title'),
                'flag' => 1,
                'panelLayout' => 'filter;search,sort,limit',
            ),
            'label' => array
            (
                'fields' => array('title'),
                'showColumns' => true,
                
             ),
            'operations' => array
            (
                'edit' => array
                (
                    'label' => &$GLOBALS['TL_LANG']['tl_calculator_options']['edit'],
                    'href' => 'act=edit',
                    'icon' => 'edit.gif'
                ),
                'delete' => array
                (
                    'label' => &$GLOBALS['TL_LANG']['tl_calculator_options']['delete'],
                    'href' => 'act=delete',
                    'icon' => 'delete.gif',
                    'attributes' => 'onclick="if (!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\')) return false; Backend.getScrollOffset();"'
                ),
                'items' => array
                (
                    'label' => &$GLOBALS['TL_LANG']['tl_calculator_options']['items'],
                    'href' => 'table=tl_calculator_items',
                    'icon' => 'system/modules/my_calculator/assets/img/items.png'
                ),
            )
         ),
        'palettes' => array
	(
		'default' => '{tip_general:hide},title,photo,photos'
	),


	// Fields
	'fields' => array
	(
		'id' => array
		(
			'sql'                     => "int(10) unsigned NOT NULL auto_increment"
		),
        'pid' => array      
		(
			'sql'                     => "int(10) unsigned NOT NULL"
		),
		'tstamp' => array
		(
			'sql'                     => "int(10) unsigned NOT NULL default '0'"
		),
        'title' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_calculator_options']['title'],
			'exclude'                 => true,
            'search'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>true),
			'sql'                     => "varchar(25) NOT NULL default ''"
		),
        'price' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_calculator_options']['price'],
            'exclude'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true),
            'sql'                     => "varchar(25) NOT NULL default ''"
        ),
	)
);

?>
