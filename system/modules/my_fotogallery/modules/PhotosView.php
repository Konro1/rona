<?php 

namespace Contao;

class PhotosView extends \Module {
    
	/**
	 * Template
	 * @var string
	 */
	protected $strTemplate = 'fe_photosview';
        
        /**
	 * Display a wildcard in the back end
	 * @return string
	 */
	public function generate()
        {
            if (TL_MODE == 'BE') {
                    $objTemplate = new \BackendTemplate('be_wildcard');

                    $objTemplate->wildcard = '### PHOTOS VIEW ###';
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

        $db = $this->Database->prepare("SELECT title,photos FROM tl_msm_photos_category WHERE id = ?")
                    ->execute(\Input::get('item'));
        while ($db->next()) {
            $foto_arr = array();
            $fotos = unserialize($db->photos);

            if(!empty($fotos)){
                foreach ($fotos as $foto) {
                    $foto_arr[] = $this->getImage(\FilesModel::findByPk($foto)->path,500,600, centr_centr);
                }
            }
            
            $categories = array(
                'title' => $db->title,
                'photo' => $foto_arr,
            ); 
            // echo "<pre>"; 
            // print_r($foto_arr); 
            // echo "</pre>";
        }
        $this->Template->photos = $categories;
    }       
}