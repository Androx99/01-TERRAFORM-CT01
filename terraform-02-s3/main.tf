terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket-aula-02-terraform" {
  bucket = "bucket-aula-02-terraform"

  tags = {
    Name = "terraform-s3-aula"
  }
}