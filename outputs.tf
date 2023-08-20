
output "id" {
  value       = hcloud_network.vpc.id
  description = "ID of this network"
}

output "name" {
  value       = hcloud_network.vpc.name
  description = "Name of this network"
}

output "ip_range" {
  value       = hcloud_network.vpc.ip_range
  description = "Network ip range CIDR"
}

output "labels" {
  value       = hcloud_network.vpc.labels
  description = "Resource labels"
}

output "subnets" {
  value       = hcloud_network_subnet.subnet
  description = "List vpc subnets"
}

output "routes" {
  value       = hcloud_network_route.route
  description = "List vpc routes"
}
