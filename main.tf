provider "aws" {
}

resource "aws_vpc" "Demovpc" {
  cidr_block = var.vpccidr
  tags = {
    "Name" = "First-VPC"
  }

}

resource "aws_subnet" "demosunet" {
  vpc_id            = aws_vpc.Demovpc.id
  cidr_block        = var.sub1cidr
  availability_zone = var.az1
  tags = {
    "Name" = "Demo-Sub-1"
  }
}   