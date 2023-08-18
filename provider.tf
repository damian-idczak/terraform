provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.33"
    }
  }
  backend "s3" {
    bucket = "damian-idczak-panda-devops-core-14"
    key    = "infra/terraform.state"
    region = "us-east-1"

  }

  required_version = ">= 1.0.0"

}


