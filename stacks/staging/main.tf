# /stacks/staging/main.tf

# 1. Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

# 2. Call the Network Module
# This block tells Terraform to use our reusable network module.
module "network" {
  source       = "../../modules/network/aws"
  project_name = var.project_name
  # We are using the default CIDR blocks defined inside the module.
}

# 3. Call the Compute Module
# This block uses our compute module to create a server.
module "compute" {
  source       = "../../modules/compute/aws"
  project_name = var.project_name
  ami_id       = var.aws_ami_id

  # This is where we connect the modules together!
  # We are passing the outputs of the network module
  # as inputs to the compute module.
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.network.security_group_id
}