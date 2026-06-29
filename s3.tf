
resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  tags          = var.tags
}

resource "aws_s3_bucket_acl_v2" "my-s3-bucket_acl" {
  bucket = aws_s3_bucket.my-s3-bucket.id
  acl    = var.acl
}

resource "aws_s3_bucket_versioning_v2" "my-s3-bucket_versioning" {
  bucket = aws_s3_bucket.my-s3-bucket.id
  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}