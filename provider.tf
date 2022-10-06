terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region     = "sa-east-1"
  access_key = "*********"
  secret_key = "*********"
}

module "ec2" {
  source = "./ec2"
}

module "s3" {
  source = "./s3"

  name_bucket = "teste123-teste-123"
}