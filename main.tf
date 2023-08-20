locals {
  subnets = {
    for v in var.subnets : "${v.network_zone}_${v.ip_range}" => v
  }
  routes = {
    for v in var.routes : "${v.gateway}_${v.destination}" => v
  }
}

resource "hcloud_network" "vpc" {
  name                     = var.name
  ip_range                 = var.ip_range
  labels                   = var.labels
  delete_protection        = var.delete_protection
  expose_routes_to_vswitch = var.expose_routes_to_vswitch
}

resource "hcloud_network_subnet" "subnet" {
  for_each     = local.subnets
  network_id   = hcloud_network.vpc.id
  type         = each.value.type
  network_zone = each.value.network_zone
  ip_range     = each.value.ip_range
  vswitch_id   = each.value.vswitch_id
}

resource "hcloud_network_route" "route" {
  for_each    = local.routes
  network_id  = hcloud_network.vpc.id
  destination = each.value.destination
  gateway     = each.value.gateway
}
