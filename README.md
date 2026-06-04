# Terraform-infrastructure-lab

This repository contains a collection of Terraform Infrastructure as Code (IaC) projects designed to automate the provisioning and management of AWS cloud resources. It serves as a hands-on portfolio showcasing practical cloud engineering, infrastructure automation, and DevOps skills through real-world implementations and use cases.

The projects cover a wide range of AWS services, including VPCs, subnets, route tables, internet gateways, security groups, EC2 instances, S3 buckets, load balancers, and other essential cloud components. Each project is structured following industry best practices, with reusable code, modular design principles, and clear documentation to ensure maintainability and scalability.

In addition to Terraform configurations, this repository includes detailed implementation guides, architecture explanations, deployment procedures, and learning notes. The goal is to provide a comprehensive reference for Infrastructure as Code concepts while demonstrating practical experience in cloud infrastructure design, automation, and modern DevOps workflows. 🚀☁️

## Project Structure

This repository is organized using Terraform best practices to ensure scalability, maintainability, and reusability of infrastructure code.

### `provider.tf`

Contains the provider configuration required for Terraform to interact with AWS services. This file specifies the target region and authentication settings used during deployment.

### `variables.tf`

Defines input variables that allow infrastructure configurations to be customized without modifying resource definitions. Variables improve flexibility and code reusability across environments.

### `main.tf`

Serves as the core configuration file where cloud resources are defined. Depending on the project, this may include VPCs, subnets, route tables, security groups, EC2 instances, S3 buckets, and other AWS services.

### `outputs.tf`

Stores output values that are displayed after a successful deployment. Outputs provide quick access to important information such as resource IDs, public IP addresses, DNS names, and ARNs.

### Workflow

1. Define infrastructure requirements.
2. Configure providers and variables.
3. Create resources using Terraform configurations.
4. Review the execution plan.
5. Deploy infrastructure using Terraform.
6. Validate outputs and resource creation.

This structure promotes Infrastructure as Code (IaC) principles and aligns with modern cloud engineering and DevOps practices.

## Directory Structure

```
Terraform-infrastructure-lab/
│
├── README.md
│
├── aws-vpc/
│   ├── provider.tf
│   ├── variables.tf
│   ├── vpc.tf
│   ├── subnet.tf
│   ├── route-table.tf
│   ├── internet-gateway.tf
│   ├── outputs.tf
│   └── README.md
│
├── aws-ec2/
│   ├── provider.tf
│   ├── variables.tf
│   ├── security-group.tf
│   ├── ec2.tf
│   ├── outputs.tf
│   └── README.md
│
├── aws-s3/
│   ├── provider.tf
│   ├── s3.tf
│   ├── outputs.tf
│   └── README.md
│
└── aws-3-tier-architecture/
    ├── provider.tf
    ├── variables.tf
    ├── vpc.tf
    ├── subnet.tf
    ├── route-table.tf
    ├── security-group.tf
    ├── ec2.tf
    ├── load-balancer.tf
    ├── outputs.tf
    └── README.md
```    