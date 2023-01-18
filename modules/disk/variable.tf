variable "disk_name" {
  type        = string
  description = "disk name"
  default     = "instancmy-disk"
}

variable "disk_type" {
  type    = string
  default = "disk type"
}


variable "disk_size" {
  type        = number
  description = "disk size"
}



variable "attach_disk_instance" {
  type        = string
  description = "disk inst"
}


