# Configure the AWS Provider
# provider "aws" {
#   region = "us-east-1"
# }

# # Creating a VPC
# resource "aws_vpc" "prod-vpc" {
#   cidr_block = "10.0.0.0/16"
#     tags = {
#     Name = "tf-prod-vpc"
#   }
# }

# # Creating Subnet for VPC
# resource "aws_subnet" "subnet-1" {
#   vpc_id     = aws_vpc.prod-vpc.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "tf-prod-subnet"
#   }
# }

# resource "aws_vpc" "dev-vpc" {
#   cidr_block = "10.1.0.0/16"
#     tags = {
#     Name = "tf-dev-vpc"
#   }
# }

# resource "aws_subnet" "subnet-2" {
#   vpc_id     = aws_vpc.dev-vpc.id
#   cidr_block = "10.1.1.0/24"

#   tags = {
#     Name = "tf-dev-subnet"
#   }
# }

# resource "aws_instance" "my-first-server" {
#   ami           = "ami-0dba2cb6798deb6d8"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "ubuntu"
#   }
# }