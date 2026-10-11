variable "networking_router_interface_v2s" {
  description = <<EOT
Map of networking_router_interface_v2s, attributes below
Required:
    - router_id
Optional:
    - force_destroy
    - port_id
    - region
    - subnet_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    router_id     = string
    force_destroy = optional(bool)
    port_id       = optional(string)
    region        = optional(string)
    subnet_id     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

