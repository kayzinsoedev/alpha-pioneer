<?php
class ControllerExtensionModuleHomePromotion extends Controller {
	public function index() {
        $this->load->library('modulehelper');
        $Modulehelper = Modulehelper::get_instance($this->registry);
        $oc = $this;
        $language_id = $this->config->get('config_language_id');
        $modulename  = 'home_promotion';

        $data['main_title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'main_title');
        $data['row_contents'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'row_contents');

        $this->document->addStyle('catalog/view/javascript/slick/slick.min.css');
    		$this->document->addScript('catalog/view/javascript/slick/slick-custom.min.js');


        // debug($data['row_contents']);die;
		    return $this->load->view('extension/module/home_promotion', $data);
    }

}
