terraform {
  backend "s3" {
    bucket = "your-bucket-name"
    key = "state/terraform.tfstate"
    region = "us-east-1"
  }
}