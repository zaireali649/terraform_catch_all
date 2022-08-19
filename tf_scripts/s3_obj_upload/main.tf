terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_object" "object" {
  bucket = "zali-catch-all"
  key    = "EchdHVYWsAA4NHh.jpg"
  source = "../../assets/EchdHVYWsAA4NHh.jpg"
}