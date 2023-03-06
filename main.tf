
terraform {
  backend "s3" {
    key    = "organize-me/terraform.tfstate"
  }
}

