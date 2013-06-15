<?php 

namespace Contao;

class PhotosList extends \Module {
    
	/**
	 * Template
	 * @var string
	 */
	protected $strTemplate = 'fe_photoslist';
        
        /**
	 * Display a wildcard in the back end
	 * @return string
	 */
	public function generate()
        {
            if (TL_MODE == 'BE') {
                    $objTemplate = new \BackendTemplate('be_wildcard');

                    $objTemplate->wildcard = '### PHOTOS LIST ###';
                    $objTemplate->title = $this->headline;
                    $objTemplate->id = $this->id;
                    $objTemplate->link = $this->name;
                    $objTemplate->href = 'contao/main.php?do=themes&amp;table=tl_module&amp;act=edit&amp;id=' . $this->id;

                    return $objTemplate->parse();
            }

            return parent::generate();
	}

	/**
	 * Generate the module
	 */
        
	protected function compile()
    {
        $db = $this->Database->execute("SELECT id, title, photo FROM tl_msm_photos_category");
        while ($db->next()) {
            $categories[$db->id] = array(
                'title' => $db->title,
                'photo' => $this->getImage(\FilesModel::findByPk($db->photo)->path, 435, 290, centr_centr),
                'href'  => $this->generateFrontendUrl(array(),'gallery_view/item/'.$db->id),
            ); 
        }
        $this->Template->categories = $categories;
    }       
}