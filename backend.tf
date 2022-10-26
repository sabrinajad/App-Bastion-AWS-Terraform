terraform {
  backend "s3" {
    bucket = "sabrin-s3"
    key    = "terraform.tfstate"
    region = "us-east-1"
    # namodb_table = "lock"
     profile = "sabrin1"
  }
}