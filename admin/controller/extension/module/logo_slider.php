<?php
class ControllerExtensionModuleLogoSlider extends Controller {
    public function index() {
        // Do note that below are the sample for using module helper, you may use it in other modules

        $array = array(
            'oc' => $this,
            'heading_title' => 'Logo Slider',
            'modulename' => 'logo_slider',
            'fields' => array(
                array('type' => 'text',  'label' => 'Main Title', 'name' => 'main_title'),

                array('type' => 'repeater', 'label' => 'Items', 'name' => 'items',
                    'fields' => array(
                        array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                        array('type' => 'text', 'label' => 'Brand Name', 'name' => 'name'),
                        array('type' => 'text', 'label' => 'Brand Link', 'name' => 'link'),
                    )
                ),

                array('type' => 'text',  'label' => 'Link', 'name' => 'link'),
            ),
        );

        $this->modulehelper->init($array);
    }
}
