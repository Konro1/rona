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
 * Table tl_msm_photos_items 
 */
$GLOBALS['TL_DCA']['tl_msm_photos_items'] = array
(

	// Config
	'config' => array
	(
            
        'dataContainer' => 'Table',
        'enableVersioning' => true,
        'ptable' => 'tl_msm_photos_category',
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
                    'label' => &$GLOBALS['TL_LANG']['tl_msm_photos_items']['edit'],
                    'href' => 'act=edit',
                    'icon' => 'edit.gif'
                ),
                'delete' => array
                (
                    'label' => &$GLOBALS['TL_LANG']['tl_msm_photos_items']['delete'],
                    'href' => 'act=delete',
                    'icon' => 'delete.gif',
                    'attributes' => 'onclick="if (!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\')) return false; Backend.getScrollOffset();"'
                ),
                'show' => array
                (
                    'label' => &$GLOBALS['TL_LANG']['tl_msm_photos_items']['show'],
                    'href' => 'act=show',
                    'icon' => 'show.gif'
                ),
            )
         ),
        'palettes' => array
	(
		'default' => '{tip_general:hide},title,photos'
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
			'label'                   => &$GLOBALS['TL_LANG']['tl_msm_photos_items']['title'],
			'exclude'                 => true,
                        'search'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>true),
			'sql'                     => "varchar(25) NOT NULL default ''"
		),
                'photos' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_msm_photos_items']['photos'],
                        'exclude'                 => true,
                        'inputType'               => 'fileTree',
                        'eval'                    => array('fieldType'=>'checkbox', 'multiple'=>true, 'filesOnly'=>true, 
                                                     'mandatory'=>true,'extensions'=>'png,jpg,jpeg'),
                        'sql'                     => "text NULL"
		),

                          
	)
	
);

?>
