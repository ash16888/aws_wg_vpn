variable "region" {
  description = "The name of region"
  type        = string
  default     = "eu-central-1"
}


variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "webserver"
}