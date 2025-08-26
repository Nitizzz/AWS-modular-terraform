# /modules/network/aws/variables.tf

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "project_name" {
  description = "A name for the project to be used in resource tags."
  type        = string
  default     = "MyProject"
}