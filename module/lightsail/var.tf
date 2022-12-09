variable "server-name" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "blueprint_id" {
  type = string
}

variable "bundle_id" {
  type = string
}

variable "tag" {
  type = string
}

variable "ip_name" {
  type = string
}

variable "key_pair_name" {
  type = string
}

variable "public_key" {
  type = string
}


variable "port_info" {
  type = list(number)
}

variable "protocol" {
  type = string
}

variable "instance_name" {
  type    = string
  default = "module.lightsail.instance"
}

variable "user_data" {
  type = string
}
