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


$GLOBALS['BE_MOD']['MY']['my_calculator'] = array
(
    'tables' => array('tl_calculator_options','tl_calculator_items'),
    'icon'   => 'system/modules/my_calculator/assets/img/calculator.png'
);
 

array_insert($GLOBALS['FE_MOD']['MY'], 0, array
    (      
        'myCalcylator'       =>  'Calculator',
    )
);

