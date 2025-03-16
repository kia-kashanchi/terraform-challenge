variable "environment" {
  description = "Environment name (dev/prod)"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "address_space" {
  description = "VNET address space"
  type        = string
}

variable "subnets" {
  description = "Map of subnet configurations"
  type        = map(string)
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}