terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}


provider "aws" {
    # Configuration options can be added here
    region = "us-east-1"
}