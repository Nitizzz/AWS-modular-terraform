# /modules/compute/aws/variables.tf

variable "instance_type" {
  description = "The type of EC2 instance to launch (e.g., t2.micro)."
  type        = string
  default     = "t2.micro" # Free Tier eligible
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the instance."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in."
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the instance."
  type        = string
}

variable "project_name" {
  description = "The project name for tagging resources."
  type        = string
}