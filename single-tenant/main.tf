terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "unified-installer-build-pipeline-dev"
    region = "us-east-2"
    key    = "dev/s3-tf-test"
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
