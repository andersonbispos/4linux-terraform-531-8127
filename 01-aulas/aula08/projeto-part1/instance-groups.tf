resource "google_compute_region_instance_group_manager" "appserver-us" {
  name = "appserver-us"

  base_instance_name         = "webapps"
  region                     = var.default_subnet_regions[0]
  distribution_policy_zones  = var.default_us_zones

  version {
    instance_template = google_compute_instance_template.default.self_link
  }

  target_size = var.default_group_sizes[0]
}

resource "google_compute_region_instance_group_manager" "appserver-br" {
  name = "appserver-br"

  base_instance_name         = "webapps"
  region                     = var.default_subnet_regions[1]
  distribution_policy_zones  = var.default_br_zones

  version {
    instance_template = google_compute_instance_template.default.self_link
  }

  target_size = var.default_group_sizes[1]
}