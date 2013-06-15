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
class MsmVideosModel extends \Model
{

    /**
     * Name of the table
     * @var string
     */
    protected static $strTable = 'tl_msm_videos'; 

    public static function getVideos($university)
    {
        $table = static::$strTable;
        $arrColumns = array("$table.pid = $university");

        return static::findBy($arrColumns, null);
    }    
        
}
