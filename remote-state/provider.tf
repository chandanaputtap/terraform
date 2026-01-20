terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }

  backend "s3" {
    bucket = "aws-practice-chand"
    key    = "remote-state"
    region = "us-east-1"
    dynamodb_table = "terraformstate-locking"
  }
}

provider "aws" {
    # Configuration options can be added here
    region = "us-east-1"
}