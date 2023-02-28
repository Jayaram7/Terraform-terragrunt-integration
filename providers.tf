terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.54.0"
    }
  }
}

provider "aws" {
  # Configuration options
  shared_config_files      = ["C:/Users/jayar/.aws/config"]
  shared_credentials_files = ["C:/Users/jayar/.aws/credentials"]
}