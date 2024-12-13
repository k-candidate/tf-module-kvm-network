# tf-module-kvm-network
Terraform module to create a KVM network via libvirt

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.0 |
| <a name="requirement_libvirt"></a> [libvirt](#requirement\_libvirt) | ~> 0.8.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_libvirt"></a> [libvirt](#provider\_libvirt) | ~> 0.8.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [libvirt_network.this](https://registry.terraform.io/providers/dmacvicar/libvirt/latest/docs/resources/network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_enabled"></a> [dns\_enabled](#input\_dns\_enabled) | If disabled, no dns will be setup for this network and dns configuration will be ignored | `bool` | `true` | no |
| <a name="input_dns_local_only"></a> [dns\_local\_only](#input\_dns\_local\_only) | true: DNS requests under this domain will only be resolved by the virtual network's own DNS server. false: Unresolved requests will be forwarded to the host's upstream DNS server if the virtual network's DNS server does not have an answer. | `bool` | `true` | no |
| <a name="input_libvirt_uri"></a> [libvirt\_uri](#input\_libvirt\_uri) | The URI to connect to the libvirt daemon | `string` | `"qemu:///session"` | no |
| <a name="input_network_addresses"></a> [network\_addresses](#input\_network\_addresses) | A list of subnets in CIDR notation | `list` | n/a | yes |
| <a name="input_network_autostart"></a> [network\_autostart](#input\_network\_autostart) | Start the network on host boot up | `bool` | `true` | no |
| <a name="input_network_domain"></a> [network\_domain](#input\_network\_domain) | The domain used by the DNS server | `string` | n/a | yes |
| <a name="input_network_mode"></a> [network\_mode](#input\_network\_mode) | The mode of the network. Possible modes: nat (Default), none, route, open, bridge | `string` | `"nat"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | The name of the network | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->