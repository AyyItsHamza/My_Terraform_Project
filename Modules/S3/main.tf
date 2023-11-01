resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"
}

output "s3_bucket_name" {
  value = aws_s3_bucket.example.id
}
