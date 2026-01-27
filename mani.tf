terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "local_file" "test" {
  filename = "file.txt"
  content  = "This file was created by Terraform"
}
