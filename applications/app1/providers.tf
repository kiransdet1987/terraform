terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
backend "s3"{
	bucket = "mybucket"
	key = "terraform.tfstate"
	region ="us-east-1"
}

provider "aws" {
  # Configuration options
}
