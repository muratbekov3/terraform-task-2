variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "region" {
  description = "GCP region."
  type        = string
}

variable "zone" {
  description = "GCP zone."
  type        = string
}

variable "instance_name" {
  description = "Compute Engine instance name."
  type        = string
}

variable "vpc_name" {
  description = "VPC network name."
  type        = string
}


variable "firewall_tag" {
  description = "Firewall tag for SSH."
  type        = string
}

variable "owner" {
  description = "Resource owner."
  type        = string
}

variable "ssh_key" {
  description = "Provides custom public SSH key."
  type        = string
  sensitive   = true
}