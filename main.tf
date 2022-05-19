
terraform {
  backend "s3" {
    bucket = "terraform.ivcode.org"
    key    = "organize-me/terraform.tfstate"
    region = "us-west-2"
  }
}

