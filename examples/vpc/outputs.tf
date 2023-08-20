output "name" {
  value       = module.vpc.name
  description = "Name of this network"
}

output "ip_range" {
  value       = module.vpc.ip_range
  description = "Network ip range CIDR"
}

output "labels" {
  value       = module.vpc.labels
  description = "Resource labels"
}

output "subnets" {
  value       = module.vpc.subnets
  description = "List vpc subnets"
}

output "routes" {
  value       = module.vpc.routes
  description = "List vpc routes"
}
