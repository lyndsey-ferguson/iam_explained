terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
resource "aws_organizations_organization" "deadlift_zen" {
  feature_set = "ALL"
}

output "organization_deadlift_zen" {
  value = aws_organizations_organization.deadlift_zen
}