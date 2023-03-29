###we need to create a provider block. 
##when i run terraform init it will always download the plugin. 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    null = {
      source = "hashicorp/null"
    }
    
  }
  backend "s3" {
      bucket         = "gopal140990"
      key            = "vpc.tfstate"
      dynamodb_table = "terraform-backend"
      region = "us-east-2"
    }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}