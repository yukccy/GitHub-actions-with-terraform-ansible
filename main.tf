provider "aws" {
  region = var.aws_region

  default_tags {
   tags = {
     provision-by = var.provisioner
     env = var.env_name
   }
 }
}
