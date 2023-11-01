output "vpc_id" {
  value = aws_vpc.example.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "security_group_id" {
  value = aws_security_group.example.id
}

output "s3_bucket_name" {
  value = module.s3.s3_bucket_name
}
