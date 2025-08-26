# /modules/network/aws/outputs.tf

output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the created public subnet."
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "The ID of the created security group."
  value       = aws_security_group.allow_web.id
}