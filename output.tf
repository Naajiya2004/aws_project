# ---------------------------
# VPC Outputs
# ---------------------------

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

# ---------------------------
# Subnet Outputs
# ---------------------------

output "public_subnet_1_id" {
  description = "ID of Public Subnet 1"
  value       = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  description = "ID of Public Subnet 2"
  value       = aws_subnet.public_2.id
}

output "private_subnet_1_id" {
  description = "ID of Private Subnet 1"
  value       = aws_subnet.private_1.id
}

output "private_subnet_2_id" {
  description = "ID of Private Subnet 2"
  value       = aws_subnet.private_2.id
}

# ---------------------------
# Route Table Outputs
# ---------------------------

output "public_route_table_id" {
  description = "ID of the Public Route Table"
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "ID of the Private Route Table"
  value       = aws_route_table.private.id
}

# ---------------------------
# IGW and NAT Outputs
# ---------------------------

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  value       = aws_nat_gateway.nat.id
}

output "elastic_ip_for_nat" {
  description = "Elastic IP used for NAT gateway"
  value       = aws_eip.nat.public_ip
}
