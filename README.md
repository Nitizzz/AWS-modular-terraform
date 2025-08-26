# Terraform AWS Multi-Environment Infrastructure

This project demonstrates how to provision and manage a multi-environment infrastructure on AWS using **Terraform**.  
It follows Infrastructure as Code (IaC) best practices by using a **modular architecture** to create reusable components for networking and compute, which are then deployed into separate **staging** and **production** environments.

---

## 🏛️ Architecture Overview

The project is structured to separate reusable components from environment-specific configurations, promoting a clean and scalable design.

- **/modules**: Contains reusable, generic Terraform configurations for individual AWS components.  
  - **/network/aws**: A module to create a foundational network, including a VPC, public subnet, internet gateway, route table, and a security group.  
  - **/compute/aws**: A module to launch an EC2 instance, complete with a `user_data` script to bootstrap a simple web server.  

- **/stacks**: Contains the deployable configurations for each environment. Each stack calls the necessary modules and provides environment-specific variables.  
  - **/staging**: A configuration for a testing environment.  
  - **/production**: A configuration for a production environment.  

This structure allows for **consistent deployments** across different environments while managing their configurations independently.

---

## ⚙️ Prerequisites

Before you begin, ensure you have the following tools installed and configured:

- Terraform CLI (**v1.0.0+**)  
- AWS CLI  
- An AWS Account with an IAM user configured for programmatic access.  
  Run `aws configure` to set up your credentials.  
- A Git client for version control.  

---

## 🚀 Deployment Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/terraform-aws-multi-env.git
cd terraform-aws-multi-env

