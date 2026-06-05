# AWS S3 Bucket Deployment using Terraform

## Project Overview

This project provisions an Amazon S3 bucket using Terraform.

## Resources Created

- Amazon S3 Bucket

## Project Structure

```text
terraform-s3-bucket/
│
├── provider.tf
├── variables.tf
├── s3.tf
├── outputs.tf
├── terraform.tfvars
└── README.md
```

## Prerequisites

- AWS Account
- IAM User with S3 permissions
- Terraform Installed
- AWS CLI Configured

## Deployment Steps

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

### Destroy Infrastructure

```bash
terraform destroy
```

## Outputs

- Bucket Name
- Bucket ARN

# CLI OUTPUT
![image alt](https://github.com/Annny-tech/Terraform-infrastructure-lab/blob/3f104773a4b7d3ea3c25b5daf5f62eff92900592/images/vpcclioutput.png)
