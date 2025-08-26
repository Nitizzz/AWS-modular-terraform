# /stacks/staging/variables.tf

variable "aws_region" {
  description = "The AWS region to deploy the stack in."
  type        = string
  default     = "ap-south-1" # Mumbai
}

variable "project_name" {
  description = "The name of the project."
  type        = string
  default     = "Staging-WebApp"
}

variable "aws_ami_id" {
  description = "The AMI ID for the EC2 instance."
  type        = string
}