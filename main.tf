resource "aws_s3_bucket" "lab" {
  bucket = var.bucket_name

  tags = {
    Name        = "HCP Terraform VCS Lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
resource "aws_s3_bucket_versioning" "lab" {
  bucket = aws_s3_bucket.lab.id

  versioning_configuration {
    status = "Enabled"
  }
}