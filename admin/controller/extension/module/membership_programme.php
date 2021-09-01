<?php
class ControllerExtensionModuleMembershipProgramme extends Controller {
	public function index() {

            $array = array(
            'oc' => $this,
            'heading_title' => 'Membership Programme',
            'modulename' => 'membership_programme',
                  'fields' => array(
                      array('type' => 'text', 'label' => 'Heading', 'name' => 'heading'),
                      array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                      array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                      array('type' => 'textarea', 'label' => 'Description', 'name' => 'description'),

											array('type' => 'text', 'label' => 'Title', 'name' => 'works_title'),
                      array('type' => 'repeater', 'label' => 'How it works', 'name' => 'works_contents',
                            'fields' => array(
                                array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                                array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                            )
                      ),

											array('type' => 'text', 'label' => 'Title', 'name' => 'benefits_title'),
                      array('type' => 'repeater', 'label' => 'Benefits as a member', 'name' => 'benefits_contents',
                            'fields' => array(
                                array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                                array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                            )
                      ),

											array('type' => 'text', 'label' => 'Title', 'name' => 'membership_btn'),
											array('type' => 'text', 'label' => 'Link', 'name' => 'membership_link'),

                  ),
            );

        $this->modulehelper->init($array);
	}
}
