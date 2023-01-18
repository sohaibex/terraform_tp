//allow ssh firewall rule
resource "google_compute_firewall" "allow_ssh_bastien_rule" {
  name     = "allow-bastien-ssh"
  network  = module.vpc_name.vpc_name_output
  priority = 100


  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["bastien"]
  source_ranges = ["195.83.153.148"]
}


resource "google_compute_firewall" "allow_nginx_bastien_rule" {
  name     = "allow-nginx-bastien"
  network  = module.vpc_name.vpc_name_output
  priority = 101


  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags = ["nginx"]
  source_tags = ["bastien"]
}

resource "google_compute_firewall" "allow_nginx_web_rule" {
  name     = "allow-nginx-web"
  network  = module.vpc_name.vpc_name_output
  priority = 102


  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["nginx"]
  source_ranges = ["0.0.0.0/0"]
}

