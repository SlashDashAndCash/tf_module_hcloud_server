resource "hcloud_server" "server" {
  name        = var.fqdn
  image       = var.image
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [var.ssh_key_name]
}

resource "hcloud_rdns" "server_rdns" {
  server_id  = hcloud_server.server.id
  ip_address = hcloud_server.server.ipv4_address
  dns_ptr    = var.fqdn
}

output "id" {
  value = hcloud_server.server.id
}

output "ipv4_address" {
  value = hcloud_server.server.ipv4_address
}

output "ipv6_address" {
  value = hcloud_server.server.ipv6_address
}
