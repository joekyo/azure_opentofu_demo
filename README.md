# Azure VM with nginx (OpenTofu)

This project deploys an Azure Virtual Machine (Ubuntu) running **nginx**, with a Virtual Network and Network Security Group allowing inbound port **80**.

## ✅ Use OpenTofu (Terraform fork)

1. Install OpenTofu:
   - macOS (Homebrew): `brew install opentofu`
   - Linux: see https://opentofu.org/docs/install

2. Initialize and apply:

```bash
opentofu init
opentofu plan
opentofu apply
```

> OpenTofu is a drop-in replacement for Terraform. Your existing `.tf` code and `terraform.tfvars` file work as-is.

## 🔧 Variables

Copy the example vars and update as needed:

```bash
cp terraform.tfvars.example terraform.tfvars
```

## 📌 Notes

- The VM uses **cloud-init** to install nginx and open HTTP (port 80).
- Outputs include the public IP and `nginx_url`.
