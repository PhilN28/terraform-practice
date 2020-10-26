# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_organizations_account" "dev-account" {
  name  = "dev-account"
  email = "philnguyen25+dev@gmail.com"
}

resource "aws_organizations_account" "test-account" {
  name  = "test-account"
  email = "philnguyen25+test@gmail.com"
}

resource "aws_organizations_account" "prod-account" {
  name  = "prod-account"
  email = "philnguyen25+prod@gmail.com"
}