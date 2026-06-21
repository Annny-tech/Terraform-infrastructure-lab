# AWS VPC with EC2 Instance - Terraform Module

## Overview

This Terraform module provisions a complete AWS networking environment along with an EC2 instance.

### Resources Created

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- EC2 Instance

This module provides a basic and reusable infrastructure setup for deploying applications inside a custom AWS VPC.

---

## Architecture

```text
Internet
    │
    ▼
Internet Gateway
    │
    ▼
VPC (10.0.0.0/16)
    │
    ▼
Public Subnet (10.0.1.0/24)
    │
    ▼
Security Group
    │
    ▼
EC2 Instance
```

---

## Folder Structure

```text
vpc-module/
├── provider.tf
├── variables.tf
├── vpc.tf
├── subnet.tf
├── igw.tf
├── route-table.tf
├── security-group.tf
├── ec2.tf
├── outputs.tf
└── README.md
```

---

## Prerequisites

Before deploying this module, ensure you have:

- AWS Account
- AWS CLI configured
- Terraform installed (v1.0+)
- IAM user with required permissions

---

## Variables

| Variable | Description |
|-----------|-------------|
| vpc_cidr | CIDR block for VPC |
| subnet_cidr | CIDR block for subnet |
| availability_zone | Availability Zone |
| instance_type | EC2 instance type |
| ami_id | Amazon Machine Image ID |
| key_name | EC2 key pair name |

### Example

```hcl
vpc_cidr          = "10.0.0.0/16"
subnet_cidr       = "10.0.1.0/24"
availability_zone = "us-east-1a"
instance_type     = "t2.micro"
ami_id            = "ami-xxxxxxxxxxxxx"
key_name          = "my-key"
```

---

## Usage

```hcl
module "vpc_ec2" {
  source = "./vpc-module"

  vpc_cidr          = "10.0.0.0/16"
  subnet_cidr       = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"
  ami_id            = "ami-xxxxxxxxxxxxx"
  key_name          = "my-key"
}
```

---

## Deployment

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Execution Plan

```bash
terraform plan
```

### Apply Infrastructure

```bash
terraform apply
```

### Destroy Infrastructure

```bash
terraform destroy
```

---

## Security Group Rules

### Inbound Rules

| Port | Protocol | Description |
|------|----------|-------------|
| 22 | TCP | SSH Access |
| 80 | TCP | HTTP Access |
| 443 | TCP | HTTPS Access |

### Outbound Rules

- Allow all outbound traffic

---

## Outputs

| Output | Description |
|----------|-------------|
| vpc_id | ID of created VPC |
| subnet_id | ID of created subnet |
| security_group_id | Security Group ID |
| instance_id | EC2 Instance ID |
| public_ip | Public IP of EC2 |

---

## Learning Objectives

This project demonstrates:

- AWS VPC Fundamentals
- Public Subnet Configuration
- Internet Gateway Setup
- Route Table Management
- Security Group Configuration
- EC2 Deployment in Custom Network
- Infrastructure as Code using Terraform
- AWS Resource Dependencies

---

