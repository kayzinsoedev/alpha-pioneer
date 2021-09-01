<?php
class ControllerExtensionModuleMembershipProgramme extends Controller {
	public function index() {
        $this->load->library('modulehelper');
        $Modulehelper = Modulehelper::get_instance($this->registry);
        $oc = $this;
        $language_id = $this->config->get('config_language_id');
        $modulename  = 'membership_programme';

				$this->load->model('tool/image');

        $data['heading'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'heading');

        $data['image'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'image');
				// $data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);

        $data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title');
        $data['description'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'description');

        $data['works_title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'works_title');
        $data['works_contents'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'works_contents');


        $data['benefits_title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'benefits_title');
        $data['benefits_contents'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'benefits_contents');

				$data['membership_btn'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'membership_btn');
				$data['membership_link'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'membership_link');

        $this->document->addStyle('catalog/view/javascript/slick/slick.min.css');
    		$this->document->addScript('catalog/view/javascript/slick/slick-custom.min.js');

        // debug($data['works_contents']);die;
		    return $this->load->view('extension/module/membership_programme', $data);
    }

}
