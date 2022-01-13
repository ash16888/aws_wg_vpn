variable "region" {
  description = "The name of region"
  type        = string
  default     = "eu-west-1"
}


variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "webserver"
}

variable "aws_access_key_id" {}

variable "aws_secret_access_key" {}
