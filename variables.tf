variable "libvirt_uri" {
  description = "The URI to connect to the libvirt daemon"
  type        = string
  default     = "qemu:///session"
}

variable "network_name" {
  description = "The name of the network"
  type        = string
}

variable "network_mode" {
  description = "The mode of the network. Possible modes: nat (Default), none, route, open, bridge"
  type        = string
}

variable "network_domain" {
  description = "The domain used by the DNS server"
  type        = string
}

variable "network_addresses" {
  description = "A list of subnets in CIDR notation"
  type        = list
}

variable "network_autostart" {
  description = "Start the network on host boot up"
  type        = bool
  default     = true
}

variable "dns_enabled" {
  description = "If disabled, no dns will be setup for this network and dns configuration will be ignored"
  type        = bool
  default     = true
}

variable "dns_local_only" {
  description = "true: DNS requests under this domain will only be resolved by the virtual network's own DNS server. false: Unresolved requests will be forwarded to the host's upstream DNS server if the virtual network's DNS server does not have an answer."
  type        = bool
  default     = true
}