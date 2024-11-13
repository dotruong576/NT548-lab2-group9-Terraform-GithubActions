terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket = "s3statebackend-group9"
    dynamodb_table = "state-lock"
    key = "global/mystatefile/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.46"
    }
  }
}
