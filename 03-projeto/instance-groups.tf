resource "google_compute_region_instance_group_manager" "appserver-us1" {
  name = "appserver-us1"

  base_instance_name         = "webapps"
  region                     = var.default_subnet_regions[0]

  version {
    instance_template = google_compute_instance_template.default.self_link
  }

  target_size = var.default_group_sizes[0]
}

resource "google_compute_region_instance_group_manager" "appserver-br" {
  name = "appserver-br"

  base_instance_name         = "webapps"
  region                     = var.default_subnet_regions[1]

  version {
    instance_template = google_compute_instance_template.default.self_link
  }

  target_size = var.default_group_sizes[1]
}

resource "google_compute_region_instance_group_manager" "appserver-us2" {
  name = "appserver-us2"

  base_instance_name         = "webapps"
  region                     = var.default_subnet_regions[2]

  version {
    instance_template = google_compute_instance_template.default.self_link
  }

  target_size = var.default_group_sizes[2]
}