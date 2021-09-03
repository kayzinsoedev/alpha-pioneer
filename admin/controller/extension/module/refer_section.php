<?php
class ControllerExtensionModuleReferSection extends Controller {
	public function index() {
        // Do note that below are the sample for using module helper, you may use it in other modules

		$array = array(
            'oc' => $this,
            'heading_title' => 'Refer Section',
            'modulename' => 'refer_section',
            'fields' => array(
                array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                array('type' => 'textarea', 'label' => 'Description', 'name' => 'description','ckeditor'=>true),
            ),
        );

        $this->modulehelper->init($array);
    }
}
