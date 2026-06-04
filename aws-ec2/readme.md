# AWS EC2 Instance Provisioning with Terraform

## Overview

This project demonstrates how to provision and manage an Amazon EC2 instance using Terraform on AWS. The infrastructure is defined as code, enabling automated, repeatable, and consistent deployments.

## Architecture

The Terraform configuration creates:

* AWS EC2 Instance
* AWS Region
* Public IP Address
* Output Values for Resource Information

## Project Structure

```text
aws-ec2/
├── provider.tf
├── variables.tf
├── ec2.tf
├── outputs.tf
└── README.md
```

## Prerequisites

Before deploying the infrastructure, ensure you have:

* AWS Account
* AWS CLI configured
* Terraform installed
* IAM User with appropriate permissions

Verify installations:

```bash
terraform -version
aws --version
```

## Terraform Files

### provider.tf

Configures the AWS provider and deployment region.

### variables.tf

Defines input variables such as instance type, AMI ID, and region.

### security-group.tf

Creates a Security Group to control inbound and outbound traffic.

### ec2.tf

Defines the EC2 instance and associated configurations.

### outputs.tf

Displays useful information after deployment, such as instance ID and public IP address.

## Deployment Steps

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Validate Configuration

```bash
terraform validate
```

### 3. Review Execution Plan

```bash
terraform plan
```

### 4. Deploy Infrastructure

```bash
terraform apply
```

Type `yes` when prompted.

### 5. Verify Resources

```bash
aws ec2 describe-instances
```

### 6. Destroy Infrastructure

```bash
terraform destroy
```

## Resources Created

| Resource       | Purpose                |
| -------------- | ---------------------- |
| EC2 Instance   | Virtual Machine        |
| Security Group | Network Access Control |
| Public IP      | External Connectivity  |

## Example Output

```text
instance_id = i-xxxxxxxxxxxxxxxxx
public_ip   = xx.xx.xx.xx
```

## Learning Objectives

* Understand Infrastructure as Code (IaC)
* Deploy AWS resources using Terraform
* Manage cloud infrastructure through code
* Follow Terraform best practices
* Automate infrastructure provisioning

## Technologies Used

* Terraform
* AWS EC2
* AWS CLI
* Git & GitHub