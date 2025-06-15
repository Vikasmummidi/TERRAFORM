# Terraform Version Declaration (Optional but good practice)
terraform {
  required_version = ">= 1.0.0"
}

########################
# 1. String
########################
variable "env" {
  type    = string
  default = "dev"
}

output "string_example" {
  description = "A string value"
  value       = "Environment is: ${var.env}"
}

########################
# 2. Number
########################
variable "instance_count" {
  type    = number
  default = 3
}

output "number_example" {
  description = "A number value"
  value       = "Instance count is: ${var.instance_count}"
}

########################
# 3. Boolean
########################
variable "enable_logs" {
  type    = bool
  default = true
}

output "bool_example" {
  description = "A boolean value"
  value       = "Logging enabled? ${var.enable_logs}"
}

########################
# 4. List of Strings
########################
variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

output "list_example" {
  description = "A list of strings"
  value       = "First AZ is: ${var.azs[0]}, Full list: ${join(", ", var.azs)}"
}

########################
# 5. Set of Strings
########################
variable "unique_tags" {
  type    = set(string)
  default = ["web", "db", "web"]  # "web" will appear only once
}

output "set_example" {
  description = "A set of strings (unordered, unique)"
  value       = var.unique_tags
}

########################
# 6. Map
########################
variable "instance_types" {
  type = map(string)
  default = {
    dev  = "t2.micro"
    prod = "t3.large"
  }
}

output "map_example" {
  description = "Accessing map values using keys"
  value       = "Dev type: ${var.instance_types["dev"]}, Prod type: ${var.instance_types["prod"]}"
}

########################
# 7. Object
########################
variable "app_config" {
  type = object({
    name    = string
    version = number
    secure  = bool
  })
  default = {
    name    = "webapp"
    version = 1.2
    secure  = true
  }
}

output "object_example" {
  description = "Accessing fields inside an object"
  value = "Name: ${var.app_config.name}, Version: ${var.app_config.version}, Secure: ${var.app_config.secure}"
}

########################
# 8. Tuple
########################
variable "misc_values" {
  type    = tuple([string, number, bool])
  default = ["abc", 42, true]
}

output "tuple_example" {
  description = "Accessing elements in a tuple by index"
  value = "String: ${var.misc_values[0]}, Number: ${var.misc_values[1]}, Bool: ${var.misc_values[2]}"
}
