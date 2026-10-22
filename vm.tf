resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = true
}

resource "google_compute_firewall" "ssh" {
  name    = "${var.instance_name}-allow-ssh"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = [var.firewall_tag]
}

resource "google_compute_instance" "vm" {
  name         = var.instance_name
  machine_type = "e2-medium"
  zone         = var.zone

  labels = local.labels

  tags = [var.firewall_tag]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = 10
    }
  }

  network_interface {
    network = google_compute_network.vpc.id

    access_config {}
  }

  metadata = {
    enable-oslogin = "FALSE"
  }

}