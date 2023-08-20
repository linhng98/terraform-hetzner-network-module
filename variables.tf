variable "name" {
  description = "Name of the Network to create (must be unique per project)."
  type        = string
}

variable "ip_range" {
  description = "IP Range of the whole Network which must span all included subnets and route destinations. Must be one of the private ipv4 ranges of RFC1918."
  type        = string
}

variable "labels" {
  description = "User-defined labels (key-value pairs) should be created with."
  type        = map(string)
  default     = {}
}

variable "delete_protection" {
  description = "Enable or disable delete protection."
  type        = bool
  default     = true
}

variable "expose_routes_to_vswitch" {
  description = "Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active."
  type        = bool
  default     = true
}

variable "routes" {
  description = "List of routing rule in vpc"
  type = list(object({
    destination = string
    gateway     = string
  }))
  default = []
}

variable "subnets" {
  description = "List subnets created with this network"
  type = list(object({
    type         = optional(string, "cloud")
    ip_range     = string
    network_zone = string
    vswitch_id   = optional(string)
  }))
  default = []
}
