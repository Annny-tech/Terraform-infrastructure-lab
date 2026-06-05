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
![image alt](https://github.com/Annny-tech/Terraform-infrastructure-lab/blob/0292aac3ccaacb5f5533dd7f2429bcc656d2846d/images/S3cli.png)

# AWS S3 DETAIL OUTPUT
![image alt](https://github.com/Annny-tech/Terraform-infrastructure-lab/blob/0292aac3ccaacb5f5533dd7f2429bcc656d2846d/images/S3aws.png)
