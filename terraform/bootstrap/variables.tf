variable "resource_name_prefix" {
  type        = string
  description = "resource name prefix followed by specific resource name"
}

variable "region" {
  type        = string
  description = "AWS Region"
}

variable "default_tags" {
  type = object({
    Owner       = string
    Team        = string
    Environment = string
    Description = string
    Repository  = string
    Provisioner = string
  })
}

