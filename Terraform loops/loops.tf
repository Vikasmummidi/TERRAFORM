# for-loop-demo.tf

terraform {
  required_version = ">= 0.12"
}

locals {
  names      = ["alpha", "beta", "gamma"]
  name_upper = [for name in local.names : upper(name)]

  # Key-Value map
  env_map = {
    dev  = "t2.micro"
    prod = "t3.large"
  }

  env_messages = [for k, v in local.env_map : "Env: ${k}, Type: ${v}"]

  # Conditional for-loop
  filtered_names = [for name in local.names : name if length(name) <= 4]

  # Transform to object (map) with for
  index_map = {
    for idx, val in local.names :
    idx => val
  }

  # Create a list of maps
  subnet_data = [
    for name in local.names :
    {
      name  = name
      cidr  = "10.0.${index(local.names, name)}.0/24"
    }
  ]
}

output "original_names" {
  value = local.names
}

output "name_uppercase" {
  value = local.name_upper
}

output "env_messages" {
  value = local.env_messages
}

output "filtered_names" {
  value = local.filtered_names
}

output "index_map" {
  value = local.index_map
}

output "subnet_data" {
  value = local.subnet_data
}
