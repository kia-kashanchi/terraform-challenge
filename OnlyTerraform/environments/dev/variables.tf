variable "environment" {
  description = "Environment name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_size" {
  description = "Virtual machine size"
  type        = string
}

variable "admin_username" {
  description = "Admin username"
  type        = string
  sensitive   = true
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
}

variable "vnet_address_space" {
  description = "VNET address space"
  type        = string
}

variable "subnets" {
  description = "Subnet configurations"
  type        = map(string)
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}