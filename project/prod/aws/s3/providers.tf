terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "ap-northeast-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token      = var.aws_session_token

}

