<?php 

namespace Contao;

class Calculator extends \Module {
    
	/**
	 * Template
	 * @var string
	 */
	protected $strTemplate = 'fe_calculator';
        
        /**
	 * Display a wildcard in the back end
	 * @return string
	 */
	public function generate()
        {
            if (TL_MODE == 'BE') {
                    $objTemplate = new \BackendTemplate('be_wildcard');

                    $objTemplate->wildcard = '### Calculator ###';
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
        $paper_db = $this->Database->execute("SELECT id, title, price FROM tl_calculator_items WHERE pid = '1'");
        while ($paper_db->next()) {
            $papers[$paper_db->id] = array(
                'title' => $paper_db->title,
                'price' => $paper_db->price,
            ); 
        }

        $paint_db = $this->Database->execute("SELECT id, title, price FROM tl_calculator_items WHERE pid = '2'");
        while ($paint_db->next()) {
            $paint[$paint_db->id] = array(
                'title' => $paint_db->title,
                'price' => $paint_db->price,
            ); 
        }
        $first = $papers;
        $first_paper = array_shift($first);
        $first = $paint;
        $first_paint = array_shift($first);

        $price = ($first_paper['price'] + $first_paint['price']) * 100;
 
        $this->Template->papers = $papers;
        $this->Template->paint  = $paint;
        $this->Template->price  = round($price,2);
    }       
}