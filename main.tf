module "bastien" {
  source         = "./modules/instance"
  instance_name  = "bastien"
  instance_type  = "e2-micro"
  instance_image = "debian-cloud/debian-11"
  instance_tag   = ["bastien"]
  network_name   = module.vpc_name.vpc_name_output
}
module "nginx-app" {
  source         = "./modules/instance"
  instance_name  = "nginx-app"
  instance_type  = "e2-micro"
  instance_image = "debian-cloud/debian-11"
  instance_tag   = ["nginx"]
  network_name   = module.vpc_name.vpc_name_output
}


module "vpc_name" {
  source       = "./modules/vpc"
  network_name = "network-vpc"
}



module "disk" {
  source               = "./modules/disk"
  disk_name            = "my-disk"
  disk_type            = "pd-standard"
  disk_size            = 10
  attach_disk_instance = module.nginx-app.name
}

