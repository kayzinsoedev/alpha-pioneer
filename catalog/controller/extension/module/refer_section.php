<?php
/**
 *
 */
class ControllerExtensionModuleReferSection extends Controller{

	public function index($setting){

		static $module = 0;
		$this->load->model('tool/image');

		$data['description'] = $this->config->get('refer_section_description_1');
		$data['image'] = $this->model_tool_image->resize(
										$this->config->get('refer_section_image_1'),
										595,
										505);

		$data['module'] = $module++;

		if(isset($setting['return_json']) && $setting['return_json'] === true){
			return $data;
		}

		return $this->load->view('extension/module/refer_section', $data);
	}
}


?>
