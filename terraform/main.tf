terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.10.0"
    }
  }

  backend "s3" {
    bucket  = "terraform-state-management-axeisie7ze"
    key     = "learn-terraform-module-object-attributes-s3/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_instance" {
  ami           = "ami-830c94e3"
  instance_type = "t2.nano"
  tags = {
    Name = "test_instance
  }
}
