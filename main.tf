resource "aws_s3_bucket" "lab" {
  bucket = var.bucket_name

  tags = {
    Name        = "HCP Terraform VCS Lab"
    Environment = "learning"
    ManagedBy = "Terraform"
  }
}
