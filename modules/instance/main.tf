//IASS TO GCP
resource "google_compute_instance" "vm_instance" {
  machine_type = var.instance_type
  name         = var.instance_name
  tags         = var.instance_tag

  boot_disk {
    initialize_params {
      image = var.instance_image
      labels = {
        "my_label" = "value"
      }
    }
  }

  //ssh key 
  metadata = {
    ssh-keys = "sohaibex:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILoD8XqZqhGfLfJtrGCzqu904VkmJbaQBtkiPB6mNFLt sohaibex"
  }
  //create network


  network_interface {
    # A default network is created for all GCP projects
    network = var.network_name
    access_config {
    }
  }

}
# resource "google_compute_network" "vpc_network" {
#   name = var.network_name
# }



