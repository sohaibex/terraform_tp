resource "google_compute_disk" "default" {
  name = var.disk_name
  type = var.disk_type
  zone = "europe-central2-a"
  labels = {
    environment = "dev"
  }
  size = var.disk_size
}

resource "google_compute_attached_disk" "attach-disk" {
  disk     = google_compute_disk.default.id
  instance = var.attach_disk_instance
}


