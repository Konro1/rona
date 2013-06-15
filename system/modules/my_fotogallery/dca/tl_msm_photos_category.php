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
 * Table tl_msm_photos_category 
 */
$GLOBALS['TL_DCA']['tl_msm_photos_category'] = array
(

	// Config
	'config' => array
	(
            
        'dataContainer' => 'Table',
        'enableVersioning' => true,
        'ctable' => array('tl_msm_photos_items'),
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
                    'label' => &$GLOBALS['TL_LANG']['tl_msm_photos_category']['edit'],
                    'href' => 'act=edit',
                    'icon' => 'edit.gif'
                ),
                'delete' => array
                (
                    'label' => &$GLOBALS['TL_LANG']['tl_msm_photos_category']['delete'],
                    'href' => 'act=delete',
                    'icon' => 'delete.gif',
                    'attributes' => 'onclick="if (!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\')) return false; Backend.getScrollOffset();"'
                ),
                // 'photos' => array
                // (
                //     'label' => &$GLOBALS['TL_LANG']['tl_msm_photos_category']['photos'],
                //     'href' => 'table=tl_msm_photos_items',
                //     'icon' => 'system/modules/my_fotogallery/assets/img/photo.png'
                // ),
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
			'label'                   => &$GLOBALS['TL_LANG']['tl_msm_photos_category']['title'],
			'exclude'                 => true,
            'search'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>true),
			'sql'                     => "varchar(25) NOT NULL default ''"
		),
        'photo' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_msm_photos_category']['photo'],
            'exclude'                 => true,
            'inputType'               => 'fileTree',
            'eval'                    => array('fieldType'=>'radio', 'filesOnly'=>true, 
                                         'extensions'=>'png,jpg,jpeg'),
            'sql'                     => "text NULL"
		),
        'photos' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_msm_photos_category']['photos'],
            'exclude'                 => true,
            'inputType'               => 'fileTree',
            'eval'                    => array('fieldType' => 'checkbox', 'filesOnly'=>true, 'multiple' => true, 
                                         'extensions'=>'png,jpg,jpeg'),
            'sql'                     => "text NULL"
        ),
	)
);

?>
