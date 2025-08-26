# /stacks/staging/outputs.tf

output "server_public_ip" {
  description = "The public IP address of the staging web server."
  value       = module.compute.public_ip
}