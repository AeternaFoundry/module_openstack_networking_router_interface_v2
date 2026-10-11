resource "openstack_networking_router_interface_v2" "networking_router_interface_v2s" {
  for_each = var.networking_router_interface_v2s

  router_id     = each.value.router_id
  force_destroy = each.value.force_destroy
  port_id       = each.value.port_id
  region        = each.value.region
  subnet_id     = each.value.subnet_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

