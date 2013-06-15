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
 * Namespace
 */
namespace Contao;

/**
 * Class MsmPhotosModel 
 *
 * @copyright  YM 2012 
 * @author     ym 
 * @package    Devtools
 */
class MsmPhotosModel extends \Model
{

    /**
     * Name of the table
     * @var string
     */
    protected static $strTable = 'tl_msm_photos'; 

    public static function getPhotoGallery($university)
    {
        $table = static::$strTable;
        $arrColumns = array("$table.pid = $university");

        return static::findBy($arrColumns, null);
    }
    
    public static function getGallaryById( $id ) {
        $table = 'tl_msm_photos';
        $arrColumns = array("$table.pid = ".$id);

        return static::findBy($arrColumns, null, 
                array(
                    'order'=>"$table.id ASC",
                )
        );
    }
        
}
