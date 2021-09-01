<?php
class ControllerExtensionModuleFcategory extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/fcategory');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->document->addStyle('catalog/view/javascript/slick/slick.min.css');
		$this->document->addScript('catalog/view/javascript/slick/slick-custom.min.js');

		$this->load->model('catalog/category');

		$this->load->model('tool/image');

		$data['categories'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		if (!empty($setting['category'])) {
			$categories = array_slice($setting['category'], 0, (int)$setting['limit']);

			foreach ($categories as $category_id) {
				$category_info = $this->model_catalog_category->getCategory($category_id);

				if ($category_info) {
					if ($category_info['image']) {
						$image = $this->model_tool_image->resize($category_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('no_image.png', $setting['width'], $setting['height']);
					}

					$data['categories'][] = array(
						'category_id'  => $category_info['category_id'],
						'thumb'       => $image,
						'image'       => 'image/'.$category_info['image'],
						'name'        => $category_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
						'href'        => $this->url->link('product/category', 'path=' . $category_info['category_id'])
					);
				}
			}
		}

		if ($data['categories']) {
			if(isset($setting['return_json']) && $setting['return_json'] === true){
				return $data;
			}

			$data['title'] = $setting['name'];
			// debug($data);die;
			return $this->load->view('extension/module/fcategory', $data);
		}
	}
}
