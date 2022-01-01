# Provider
variable "hcloud_token" {}

# Server
variable "fqdn" {}

variable "image" {
  default = "debian-11"
}

variable "server_type" {
  default = "cx11"
}

variable "location" {
  default = "nbg1"
}

variable "ssh_key_name" {}
