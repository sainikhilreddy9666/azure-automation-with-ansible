variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "where resource will be created"
  type        = string
  default     = "West Europe"
}

variable "tags" {
  description = "Tags foe all resources"
  type        = map(string)
  default = {
    Environment = "Dev"
    owner       = "Nikhil"
    project     = "AzureInfra"
  }
}

