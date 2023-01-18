variable "instance_name" {
  type        = string
  description = "the name of the variable"
  #when we have updates
  default = "instance"
}

variable "instance_type" {
  type        = string
  description = "the size of the compute"

}

variable "instance_image" {
  type        = string
  description = "image instance"

}

variable "instance_tag" {
  type        = list(string)
  description = "tag instance"

}

variable "network_name" {
  type        = string
  description = "network name"

}


