module "vpc" {
  source = "../.."

  name     = "example"
  ip_range = "10.0.0.0/16"
  labels = {
    terraform = "true"
    env       = "example"
  }
  delete_protection = true
  subnets = [
    {
      type         = "cloud"
      network_zone = "eu-central"
      ip_range     = "10.0.0.0/20"
    },
    {
      type         = "cloud"
      network_zone = "eu-central"
      ip_range     = "10.0.16.0/20"
    },
  ]
  routes = [
    {
      destination = "0.0.0.0/0"
      gateway     = "10.0.0.2"
    },
  ]
}
