terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "2.7.1"
    }
  }
}

provider "aws" {
  max_retries = 25
  profile     = "iamrootnexus"
  region      = "eu-west-2"
}

provider "random" {}

provider "archive" {}
