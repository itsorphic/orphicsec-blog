variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "hosted_zone_id" {
  description = "Route 53 hosted zone ID"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "blog"
}
