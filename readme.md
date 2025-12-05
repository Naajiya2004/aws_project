Sure! Here is a clean, complete **README.md** you can copy-paste directly into your GitHub repo.
This version includes:
✔ Full explanation
✔ Architecture diagram
✔ CIDR justification
✔ Terraform deployment steps
✔ Screenshot placeholders
✔ Cost notes
✔ Everything needed for AWS Free Tier assignment

---

# **README.md**

```markdown
# AWS VPC & Subnet Deployment Using Terraform

This repository contains Terraform code that deploys a production-grade VPC setup with public and private subnets across two Availability Zones.  
It follows AWS best practices and fulfills the AWS Free Tier assessment requirements.

---

# 📌 1. Project Overview

This setup includes:

- 1 VPC (10.0.0.0/16)
- 2 Public subnets (multi-AZ)
- 2 Private subnets (multi-AZ)
- Internet Gateway (IGW)
- NAT Gateway for private subnet outbound traffic
- Public & private route tables
- Security group (example)
- Outputs for validation

Terraform automates the provisioning, and screenshots are added for verification.

---

# 📌 2. VPC & Subnet CIDR Design

### **VPC CIDR**
```

10.0.0.0/16

```

### Why this CIDR?
- Large IP range → 65,536 addresses  
- Easy to divide into multiple `/24` subnets  
- Common industry standard for small-to-medium AWS architectures  

---

# 📌 3. Subnet CIDR Allocation

| Subnet              | AZ            | CIDR          | Type     | Purpose |
|---------------------|--------------|----------------|----------|---------|
| Public Subnet 1     | ap-south-1a  | 10.0.1.0/24    | Public   | IGW, NAT GW, ALB, bastion |
| Public Subnet 2     | ap-south-1b  | 10.0.2.0/24    | Public   | High availability |
| Private Subnet 1    | ap-south-1a  | 10.0.3.0/24    | Private  | App tier, EC2, RDS |
| Private Subnet 2    | ap-south-1b  | 10.0.4.0/24    | Private  | Multi-AZ internal tier |

### Why `/24` subnets?
- Clean and non-overlapping  
- 251 usable IPs per subnet  
- Very easy to manage and scale  
- Ideal for assessments and real deployments  

---

# 📌 4. Architecture Diagram

```

```
            ┌────────────────────────────────────────────┐
            │                 VPC 10.0.0.0/16             │
            │                                            │
            │   ┌──────────────────┐   ┌──────────────────┐
            │   │ Public Subnet 1  │   │ Public Subnet 2  │
            │   │ 10.0.1.0/24      │   │ 10.0.2.0/24      │
            │   │ IGW, NAT GW      │   │ IGW Route        │
            │   └──────────────────┘   └──────────────────┘
            │            │                      │
            │   ┌──────────────────┐   ┌──────────────────┐
            │   │ Private Subnet 1 │   │ Private Subnet 2 │
            │   │ 10.0.3.0/24      │   │ 10.0.4.0/24      │
            │   │ NAT Route        │   │ NAT Route        │
            │   └──────────────────┘   └──────────────────┘
            └────────────────────────────────────────────┘
```

```

---

# 📌 5. Folder Structure

```

/ (repo)
│── main.tf
│── variables.tf
│── provider.tf
│── versions.tf
│── outputs.tf
│── README.md
└── screenshots/
├── vpc.png
├── subnets.png
├── nat-gw.png
├── igw.png
├── route-tables.png
└── terraform-output.png

````

---

# 📌 6. Deployment Steps (Terraform)

### **Initialize Terraform**
```sh
terraform init
````

### **Validate configuration**

```sh
terraform validate
```

### **Preview resources**

```sh
terraform plan
```

### **Apply infrastructure**

```sh
terraform apply -auto-approve
```

### **Destroy infrastructure after screenshots**

```sh
terraform destroy -auto-approve
```

⚠ **Important:** NAT Gateway is NOT part of Free Tier → delete it immediately after screenshots.

---

# 📌 7. Approach Summary (Short Explanation)

* Designed a `/16` VPC to cleanly allocate `/24` subnets.
* Created 4 subnets across 2 AZs to ensure high availability.
* Attached IGW for public subnets and configured routing.
* Deployed 1 NAT Gateway for secure outbound traffic from private subnets.
* Configured separate route tables for public and private tiers.
* Used Terraform to automate deployment and included outputs for verification.

---

# 📌 8. AWS Screenshots

Add the following inside **screenshots/** folder:

* `vpc.png` – VPC dashboard
* `subnets.png` – All four subnets
* `igw.png` – Internet Gateway
* `nat-gw.png` – NAT Gateway
* `route-tables.png` – Public & private route tables
* `terraform-output.png` – Terraform apply output

---

# 📌 9. Terraform Outputs (Example)

Terraform displays the following after deployment:

```
vpc_id = vpc-0a123bc456def7890
public_subnet_ids = [
  subnet-01234abcd567ef890,
  subnet-0abcd1234ef567890
]
private_subnet_ids = [
  subnet-0bbcd1234ef567aa0,
  subnet-0ffcd1234ef56aa99
]
nat_gateway_id = nat-0abcd1234ef56789
igw_id = igw-0123abcd4567ef890
```

These help verify successful deployment.

---

# 📌 10. Cost Warning

* NAT Gateway → **not free**, costs per hour + data
* EC2 instances → billed if created
* Everything else falls under Free Tier

**Destroy resources ASAP after screenshots.**

---

# 📌 11. GitHub Link (Add Yours)

```
https://github.com/<your-username>/<your-repo-name>
```

---

# ✔️ Submitted By

*Your Name*
AWS Free Tier Infrastructure Deployment

```

---

If you want, I can also:

✅ Generate a CloudFormation version  
✅ Create a PNG architecture diagram  
✅ Add Question-wise README files  
✅ Add EC2 / ALB / RDS Terraform modules  

Just tell me!
```
