# VPC Terraform Setup

This repository contains Terraform configuration for VPC setup and github actions to run it in the pipeline.

---

## 🛠 Features

This infrastructure includes:
- A VPC
- 2 public and 2 private subnets
- Internet Gateway
- NAT Gateway for internet access from private subnets
- Routing tables
- Bastion Host with a security group for SSH access

## Usage:

### This repo uses github actions to run following 1,2,3 steps. Anyway you can run it locally

1. Initialize terraform:
```bash
terraform init
```

2. Plan the infrastructure:
```bash
terraform plan
```

3. Apply the configuration:
```bash
terraform apply
```

4. SSH into bastion host:
```bash
ssh ec2-user@<bastion-public-ip> -i <your-key.pem>
```

---

## 🧩 Requirements

- Terraform >= 1.0
- AWS CLI or IAM user with access keys
- An existing S3 bucket for remote state: `rss-aws-tf-states`

---

## 🚀 Usage

### 1. Clone the repository

```bash
git clone https://github.com/your-org/your-repo.git
cd your-repo
```

### Initialize Terraform 
Run once locally, other changes would be run in github actions by pushing commit
```
terraform init
```

### GitHub Secrets for using github actions
Ensure the following secrets are configured in your GitHub repository:
AWS_ACCOUNT_ID

### Cleanup
To destroy the created resources:
```
terraform destroy
```