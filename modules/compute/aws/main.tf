# /modules/compute/aws/main.tf

resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  # This script runs when the server first boots up
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello, World from Terraform!</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "${var.project_name}-ec2-instance"
  }
}