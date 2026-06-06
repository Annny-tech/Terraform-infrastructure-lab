# Terraform EC2 Module

This project demonstrates how to create an AWS EC2 instance using Terraform Modules. The EC2 resource is separated into a reusable module, making the infrastructure code cleaner, scalable, and easier to maintain.

---

## Project Overview

This Terraform configuration:

- Creates an AWS EC2 Instance
- Uses a reusable Terraform Module
- Outputs the Instance ID
- Outputs the Public IP Address
- Follows Infrastructure as Code (IaC) best practices

---

## Architecture

```text
Root Module
│
├── Provider Configuration
├── Input Variables
├── EC2 Module Call
└── Outputs

        │

        ▼

EC2 Module
│
├── aws_instance
├── Module Variables
└── Module Outputs
```

---

## Project Structure

```text
terraform-ec2-module/
│
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── README.md
│
└── modules/
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

---

## Prerequisites

Before running this project, ensure you have:

- AWS Account
- IAM User with appropriate permissions
- AWS CLI configured
- Terraform installed
- Access Key and Secret Key configured

Verify installation:

```bash
terraform -version
aws --version
```

---

## Deployment Steps

### Initialize Terraform

```bash
terraform init
```

---

### Validate Configuration

```bash
terraform validate
```

---

### Review Execution Plan

```bash
terraform plan
```

---

### Deploy Infrastructure

```bash
terraform apply
```

Type:

```text
yes
```

when prompted.

---

## Verify Resources

Check the EC2 instance from the AWS Console:

1. Login to AWS Console
2. Navigate to EC2 Dashboard
3. Select Instances
4. Verify the created instance

---

## View Outputs

```bash
terraform output
```

Example:

```text
instance_id = i-0123456789abcdef0
public_ip   = 13.233.xxx.xxx
```

---

## Destroy Infrastructure

To remove all created resources:

```bash
terraform destroy
```

Confirm by typing:

```text
yes
```

---

## Benefits of Using Modules

- Reusable Infrastructure Code
- Reduced Code Duplication
- Easier Maintenance
- Improved Scalability
- Better Project Organization
- Production-Ready Structure

---

## Learning Outcomes

By completing this project, you will understand:

- Terraform Modules
- AWS Provider Configuration
- EC2 Instance Deployment
- Variables and Outputs
- Infrastructure as Code (IaC)
- Modular Terraform Design

---


Technologies: AWS, Terraform, Docker, Kubernetes, Linux, GitHub