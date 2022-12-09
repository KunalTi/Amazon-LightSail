variable "key_pair_name" {
  type    = string
  default = "module.lightsail.main_key"
}

variable "server-name" {
  type    = string
  default = "server1"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1b"
}

variable "blueprint_id" {
  type    = string
  default = "ubuntu_20_04"
}

variable "bundle_id" {
  type    = string
  default = "nano_1_0"
}

variable "tag" {
  type    = string
  default = "sail2"
}

variable "port_info" {
  type    = list(number)
  default = [22, 80, 443, 8080, 8501]
}

variable "protocol" {
  type    = string
  default = "tcp"
}

variable "ip_name" {
  type    = string
  default = "static"
}
