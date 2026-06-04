# AWS VPC Infrastructure Using Terraform

## Overview

This project provisions a custom AWS networking environment using Terraform.

The infrastructure includes:

- Custom VPC
- Public Subnet
- Internet Gateway (IGW)
- Route Table
- Route Table Association
- Security Group
- Outputs for created resources

This setup serves as the foundation for deploying AWS resources such as EC2 instances, Load Balancers, Kubernetes clusters, and other cloud services.

---

## Architecture

```text
                    Internet
                        │
                        ▼
              ┌─────────────────┐
              │ Internet Gateway│
              └────────┬────────┘
                       │
                       ▼
              ┌─────────────────┐
              │ Route Table     │
              │ 0.0.0.0/0 → IGW │
              └────────┬────────┘
                       │
                       ▼
              ┌─────────────────┐
              │ Public Subnet   │
              │ 10.0.1.0/24     │
              └────────┬────────┘
                       │
                       ▼
              ┌─────────────────┐
              │ Security Group  │
              └────────┬────────┘
                       │
                       ▼
              ┌─────────────────┐
              │ VPC             │
              │ 10.0.0.0/16     │
              └─────────────────┘
```

---

## Project Structure

```text
terraform-vpc/
│
├── provider.tf
├── variables.tf
├── vpc.tf
├── subnet.tf
├── igw.tf
├── route-table.tf
├── security-group.tf
├── outputs.tf
└── README.md
```

---

## Resources Created

### VPC

Creates a custom Virtual Private Cloud.

| Attribute | Value |
|------------|---------|
| CIDR Block | 10.0.0.0/16 |

---

### Public Subnet

Creates a subnet inside the VPC.

| Attribute | Value |
|------------|---------|
| CIDR Block | 10.0.1.0/24 |
| Availability Zone | ap-south-1a |
| Auto Public IP | Enabled |

---

### Internet Gateway

Provides internet connectivity to resources inside the VPC.

---

### Route Table

Creates a route table with:

| Destination | Target |
|-------------|---------|
| 0.0.0.0/0 | Internet Gateway |

---

### Route Table Association

Associates the public subnet with the public route table.

---

### Security Group

Allows inbound traffic:

| Protocol | Port | Purpose |
|-----------|------|---------|
| TCP | 22 | SSH Access |
| TCP | 80 | HTTP Access |

Outbound traffic is allowed to all destinations.
---
## Output in CLI
![image alt](https://github.com/Annny-tech/Terraform-infrastructure-lab/blob/043c9f368b86d45ed29f4f553855553f6f53f45c/images/aws_ec2_cli.png)


---

---

## Prerequisites

Before using this project, ensure the following are installed:

- Terraform
- AWS CLI
- AWS Account
- IAM User with required permissions

---

## Configure AWS Credentials

```bash
aws configure
```

Provide:

```text
AWS Access Key ID
AWS Secret Access Key
Region: ap-south-1
Output Format: json
```

Verify:

```bash
aws sts get-caller-identity
```

---

## Terraform Workflow

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

### Deploy Infrastructure

```bash
terraform apply
```

---

## Outputs

Terraform returns:

- VPC ID
- Subnet ID
- Security Group ID
- Route Table ID

View outputs:

```bash
terraform output
```

---

## Destroy Infrastructure

To remove all created resources:

```bash
terraform destroy
```

---

## Learning Objectives

This project demonstrates:

- Infrastructure as Code (IaC)
- AWS Networking Fundamentals
- Terraform Resource Management
- VPC Design
- Route Table Configuration
- Internet Gateway Setup
- Security Group Management
- Terraform Outputs and Variables

---

## Future Enhancements

- Private Subnet
- NAT Gateway
- EC2 Deployment
- Application Load Balancer (ALB)
- Auto Scaling Group
- Multi-AZ Architecture
- Kubernetes (EKS) Integration

---