<?php 

/**
 * Contao Open Source CMS
 * 
 * Copyright (C) 2005-2012 Leo Feyer
 * 
 * @package   ym_partners 
 * @author    ym 
 * @license   LGPL 
 * @copyright YM 2012 
 */


$GLOBALS['BE_MOD']['MY']['my_fotogallery'] = array
(
    'tables' => array('tl_msm_photos_category','tl_msm_photos_items'),
    'icon'   => 'system/modules/my_fotogallery/assets/img/photo.png'
);
 

array_insert($GLOBALS['FE_MOD']['MY'], 0, array
    (      
        'msmPhotoGallery'       =>  'PhotosList',
        'msmPhotoGalleryView'   =>  'PhotosView',
    )
);

