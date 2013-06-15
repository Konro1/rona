<?php

/**
 * Contao Open Source CMS
 * 
 * Copyright (C) 2005-2012 Leo Feyer
 * 
 * @package BackupDB
 * @link    http://www.contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */


/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	// 
	'AutoBackupDB'      => 'system/modules/BackupDB/AutoBackupDB.php',
	'BackupDbCommon'    => 'system/modules/BackupDB/BackupDbCommon.php',
	'BackupDbRun'       => 'system/modules/BackupDB/BackupDbRun.php',
	'MakeWsTemplateRun' => 'system/modules/BackupDB/MakeWsTemplateRun.php',
	'ModuleBackupDB'    => 'system/modules/BackupDB/ModuleBackupDB.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'mod_backup_db' => 'system/modules/BackupDB/templates',
));
