terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }

  backend "s3" {
    bucket = "chandu-multienv-dev"
    key    = "terraform-provisioners"
    region = "us-east-1"
    dynamodb_table = "chandu-multienv-dev"
  }
}

provider "aws" {
    # Configuration options can be added here
    region = "us-east-1"
}