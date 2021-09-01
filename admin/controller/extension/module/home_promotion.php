<?php
class ControllerExtensionModuleHomePromotion extends Controller {
	public function index() {

            $text_color = array(
                array(
                    'value'   => 'black',
                    'label'   => 'Black'
                ),
                array(
                    'value'   => 'white',
                    'label'   => 'White'
                ),
            );

            $array = array(
            'oc' => $this,
            'heading_title' => 'Home Promotion',
            'modulename' => 'home_promotion',
                  'fields' => array(
                      array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                      array('type' => 'repeater', 'label' => 'Home USP', 'name' => 'row_contents',
                            'fields' => array(
                                array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                                array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                                array('type' => 'textarea', 'label' => 'Description', 'name' => 'description' ),
                                array('type' => 'text', 'label' => 'Button Label', 'name' => 'button_lbl'),
                                array('type' => 'text', 'label' => 'Button Link', 'name' => 'button_link'),
                                array('type' => 'dropdown', 'label' => 'Status', 'name' => 'text_color', 'choices' => $text_color),
                            )
                      ),


                  ),
            );

        $this->modulehelper->init($array);
	}
}
