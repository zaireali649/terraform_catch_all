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

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "zali-terraform-bucket"  # change to your bucket name
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.s3_bucket.bucket
  key    = "EchdHVYWsAA4NHh.jpg"
  source = "../../assets/EchdHVYWsAA4NHh.jpg"
  acl = "public-read"
}