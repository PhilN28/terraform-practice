terraform {
    required_version = ">= 0.12"
}

resource "aws_vpc" "main" {
	cidr_block = "10.0.0.0/16"
}

module "Phils-web-server" {
    source        = "../modules/webserver/"
    name          = "tuts-webserver"
	vpc_id        = aws_vpc.main.id
    cidr_block    = cidrsubnet(aws_vpc.main.cidr_block, 4, 1)
    ami           = "ami-0947d2ba12ee1ff75"
	instance_type = "t2.micro"
}