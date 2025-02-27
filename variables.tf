variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
  default     = 1
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_DS1_v2"
}