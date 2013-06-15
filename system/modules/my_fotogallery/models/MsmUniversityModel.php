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


/**
 * Namespace
 */
namespace Contao;

/**
 * Class PartnersModel 
 *
 * @copyright  YM 2012 
 * @author     ym 
 * @package    Devtools
 */
class MsmUniversityModel extends \Model
{

	/**
	 * Name of the table
	 * @var string
	 */
	protected static $strTable = 'tl_msm_university';
        
        public static function getAllPublishedUniversities() {
            $table = static::$strTable;
            $arrColumns = array("$table.published = 1");

            return static::findBy($arrColumns, null, 
                        array(
                            'order'=>"$table.id",
                        )
                    );
	}
        
        public static function getDeffaultID() {
            $table = static::$strTable;
            $arrColumns = array("$table.published = 1");
            $obj = static::findBy($arrColumns, null, 
                        array(
                            'order' =>  "$table.id ASC",
                            'limit' =>  1
                        )
                    );
            return $obj->id;
        } 
        
        
        
}
