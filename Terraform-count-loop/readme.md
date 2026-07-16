# Terraform Count Loop

## Overview

This project demonstrates how to use Terraform's `count` meta-argument to create and manage multiple AWS EC2 instances from a single resource block. The `count` argument helps reduce code duplication and enables scalable infrastructure deployment.

## Features

- Deploy multiple EC2 instances using a single resource block
- Dynamic resource creation with Terraform Count
- AWS Infrastructure as Code (IaC)
- Reusable and scalable configuration
- Simple and efficient resource management

## Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- Linux

## Project Structure

terraform-count-loop/
├── provider.tf
├── variables.tf
├── main.tf
├── outputs.tf
└── README.md

## Terraform Count Example

```hcl
resource "aws_instance" "web" {
  count         = 3
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Web-Server-${count.index}"
  }
}
chnage
