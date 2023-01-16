variable "location" {
  type        = string
  description = "Azure region where resource will be provisioned"
  default     = "Central US"
}

variable "aks_name" {
  type        = string
  description = "Azure AKS name"
  default     = "demo-aks"
}

variable "env" {
  type        = string
  description = "Environment details dev/qa"
}