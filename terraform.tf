terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.73"
    }
  }

  cloud {
    organization = "CMI-Product"
    workspaces {
      tags = ["SDW-Test-state"]
    }
  }
}