<?php
class ModelLocalisationLocation extends Model {
	public function getLocation($location_id) {
		$query = $this->db->query("SELECT location_id, name, address, geocode, telephone, region, fax, image, open, comment, gmap_iframe FROM " . DB_PREFIX . "location WHERE location_id = '" . (int)$location_id . "'");

		return $query->row;
	}
}