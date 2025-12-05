# ---------------------------
# VPC & Networking Variables
# ---------------------------

variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "my-vpc-project"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for the Public Subnet 1 (AZ A)"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for the Public Subnet 2 (AZ B)"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for the Private Subnet 1 (AZ A)"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for the Private Subnet 2 (AZ B)"
  type        = string
  default     = "10.0.4.0/24"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
