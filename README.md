## Requirements

| Name                                                                     | Version   |
| ------------------------------------------------------------------------ | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.4.0  |
| <a name="requirement_hcloud"></a> [hcloud](#requirement_hcloud)          | >= 1.42.0 |

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_hcloud"></a> [hcloud](#provider_hcloud) | 1.42.1  |

## Modules

No modules.

## Resources

| Name                                                                                                                             | Type     |
| -------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [hcloud_network.vpc](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network)                  | resource |
| [hcloud_network_route.route](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_route)    | resource |
| [hcloud_network_subnet.subnet](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_subnet) | resource |

## Inputs

| Name                                                                                                      | Description                                                                                                                                   | Type                                                                                                                                                    | Default | Required |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | :------: |
| <a name="input_delete_protection"></a> [delete_protection](#input_delete_protection)                      | Enable or disable delete protection.                                                                                                          | `bool`                                                                                                                                                  | `true`  |    no    |
| <a name="input_expose_routes_to_vswitch"></a> [expose_routes_to_vswitch](#input_expose_routes_to_vswitch) | Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.            | `bool`                                                                                                                                                  | `true`  |    no    |
| <a name="input_ip_range"></a> [ip_range](#input_ip_range)                                                 | IP Range of the whole Network which must span all included subnets and route destinations. Must be one of the private ipv4 ranges of RFC1918. | `string`                                                                                                                                                | n/a     |   yes    |
| <a name="input_labels"></a> [labels](#input_labels)                                                       | User-defined labels (key-value pairs) should be created with.                                                                                 | `map(string)`                                                                                                                                           | `{}`    |    no    |
| <a name="input_name"></a> [name](#input_name)                                                             | Name of the Network to create (must be unique per project).                                                                                   | `string`                                                                                                                                                | n/a     |   yes    |
| <a name="input_routes"></a> [routes](#input_routes)                                                       | List of routing rule in vpc                                                                                                                   | <pre>list(object({<br> destination = string<br> gateway = string<br> }))</pre>                                                                          | `[]`    |    no    |
| <a name="input_subnets"></a> [subnets](#input_subnets)                                                    | List subnets created with this network                                                                                                        | <pre>list(object({<br> type = optional(string, "cloud")<br> ip_range = string<br> network_zone = string<br> vswitch_id = optional(string)<br> }))</pre> | `[]`    |    no    |

## Outputs

| Name                                                        | Description           |
| ----------------------------------------------------------- | --------------------- |
| <a name="output_ip_range"></a> [ip_range](#output_ip_range) | Network ip range CIDR |
| <a name="output_labels"></a> [labels](#output_labels)       | Resource labels       |
| <a name="output_name"></a> [name](#output_name)             | Name of this network  |
| <a name="output_routes"></a> [routes](#output_routes)       | List vpc routes       |
| <a name="output_subnets"></a> [subnets](#output_subnets)    | List vpc subnets      |
