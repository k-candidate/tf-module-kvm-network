resource "libvirt_network" "this" {
  name = var.network_name

  mode      = var.network_mode
  domain    = var.network_domain
  addresses = var.network_addresses

  autostart = var.network_autostart

  dns {
    enabled    = var.dns_enabled
    local_only = var.dns_local_only
  }
}