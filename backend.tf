terraform {
  backend "s3" {
    bucket = "my-s3-bucket-tf-backend-290626"
    key = "main"
    region = "us-east-1"
    use_lockfile = true
  }
}