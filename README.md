# Terraform + Github actions

This repository contains Terraform configuration and github actions sample code.

---

## 🛠 Features

- Creates an S3 bucket (`rss-aws-example-bucket`)
- Stores Terraform state remotely in `rss-aws-tf-states` S3 bucket
- GitHub Actions workflow with:
  - `terraform fmt` check
  - `terraform plan`
  - `terraform apply` (on `main` branch)

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