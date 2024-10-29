terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }

  backend "s3" {
    bucket         = "my-terraform-backend-1230"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "my_tf_lockid"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
