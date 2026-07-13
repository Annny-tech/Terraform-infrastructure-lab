# Terraform AWS EC2 Instance Module

## Overview

This Terraform module provisions an Amazon EC2 instance with customizable configurations such as AMI, instance type, key pair, security groups, subnet, tags, and user data.

## Features

* Create EC2 instances in AWS
* Support for custom AMI IDs
* Configurable instance types
* Attach Security Groups
* Launch within a specified subnet
* Optional User Data support
* Custom tagging support
* Reusable and modular design

---

## Module Structure

```text
instance-terraform/
├── main.tf
├── variables.tf
├── provider.tf
└── README.md
Module-terraform
└── main.tf
```

---

## Usage

```hcl
module "ec2_instance" {
  source = "./modules/instance"

  ami_id             = "ami-0abcdef1234567890"
  instance_type      = "t3.micro"
  key_name           = "my-keypair"
  subnet_id          = "subnet-xxxxxxxx"
  security_group_ids = ["sg-xxxxxxxx"]

  tags = {
    Name        = "web-server"
    Environment = "dev"
  }
}
```

---

## Resources Created

| Resource     | Description             |
| ------------ | ----------------------- |
| aws_instance | Creates an EC2 instance |

---

## Inputs

| Name               | Description                | Type         | Default  | Required |
| ------------------ | -------------------------- | ------------ | -------- | -------- |
| ami_id             | AMI ID for EC2 Instance    | string       | n/a      | Yes      |
| instance_type      | EC2 Instance Type          | string       | t3.micro | No       |
| key_name           | SSH Key Pair Name          | string       | null     | No       |
| subnet_id          | Subnet ID                  | string       | n/a      | Yes      |
| security_group_ids | List of Security Group IDs | list(string) | []       | No       |
| user_data          | Startup Script             | string       | null     | No       |
| tags               | Resource Tags              | map(string)  | {}       | No       |

---

## Outputs

| Name                | Description        |
| ------------------- | ------------------ |
| instance_id         | EC2 Instance ID    |
| instance_public_ip  | Public IP Address  |
| instance_private_ip | Private IP Address |
| instance_arn        | EC2 Instance ARN   |

---

## Example Output

```bash
instance_id         = "i-0123456789abcdef0"
instance_public_ip  = "54.123.45.67"
instance_private_ip = "10.0.1.10"
```

---

## Requirements

| Name         | Version  |
| ------------ | -------- |
| Terraform    | >= 1.5.0 |
| AWS Provider | >= 5.0   |

---

## Best Practices

* Use IAM Roles instead of storing credentials on instances.
* Restrict Security Group access to only required ports.
* Use User Data for automated bootstrapping.
* Enable monitoring and logging with CloudWatch.
* Apply meaningful tags for resource management.

---

