output "networking_router_interface_v2s_id" {
  description = "Map of id values across all networking_router_interface_v2s, keyed the same as var.networking_router_interface_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_networking_router_interface_v2.networking_router_interface_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networking_router_interface_v2s_force_destroy" {
  description = "Map of force_destroy values across all networking_router_interface_v2s, keyed the same as var.networking_router_interface_v2s except keys with no force_destroy are omitted"
  value       = { for k, v in openstack_networking_router_interface_v2.networking_router_interface_v2s : k => v.force_destroy if v.force_destroy != null }
}
output "networking_router_interface_v2s_port_id" {
  description = "Map of port_id values across all networking_router_interface_v2s, keyed the same as var.networking_router_interface_v2s except keys with no port_id are omitted"
  value       = { for k, v in openstack_networking_router_interface_v2.networking_router_interface_v2s : k => v.port_id if v.port_id != null && length(v.port_id) > 0 }
}
output "networking_router_interface_v2s_region" {
  description = "Map of region values across all networking_router_interface_v2s, keyed the same as var.networking_router_interface_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_networking_router_interface_v2.networking_router_interface_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "networking_router_interface_v2s_router_id" {
  description = "Map of router_id values across all networking_router_interface_v2s, keyed the same as var.networking_router_interface_v2s except keys with no router_id are omitted"
  value       = { for k, v in openstack_networking_router_interface_v2.networking_router_interface_v2s : k => v.router_id if v.router_id != null && length(v.router_id) > 0 }
}
output "networking_router_interface_v2s_subnet_id" {
  description = "Map of subnet_id values across all networking_router_interface_v2s, keyed the same as var.networking_router_interface_v2s except keys with no subnet_id are omitted"
  value       = { for k, v in openstack_networking_router_interface_v2.networking_router_interface_v2s : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}

